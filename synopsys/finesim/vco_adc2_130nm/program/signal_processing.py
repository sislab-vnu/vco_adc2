import numpy as np
import scipy
import math
import os
import matplotlib.pyplot as plt

# Behavioral model of multi-bit multi-phases 2nd delta-sigma vco-adc3
def filt_data(filename_):
	file_path = os.environ['VCO_ADC2_130'] + '/results/filtered/' + filename_
	if(os.path.exists(file_path)):
		print ("load data from filtered data file")
		filt_data = np.loadtxt(file_path, dtype=float)
		return [filt_data[:,1], filt_data[:,2]]
	else:
		print ("filter data from raw files")
		cmd = 'bash ' + os.environ['VCO_ADC2_130'] + '/program/filt_data.sh ' + filename_
		os.system(cmd)
		raw_data = np.loadtxt('.analysis_cache', dtype=float)
		raw_clk = raw_data[:,0]
		
		filt_data = []
		
		for ix in range(len(raw_clk)-1):
			if(raw_clk[ix] > raw_clk[ix+1]):
				filt_data.append(raw_data[ix,:])
	
		filt_data=np.array(filt_data)
		np.savetxt(file_path, filt_data, fmt='%10.4f', delimiter='\t')
		return [filt_data[:,1], filt_data[:,2]]

def decimation_filr(sig, rate):
	decimation         = rate 		# any integer; powers of 2 work best.
	stages             = 3			# pipelined I and C stages
	gain = (decimation * 1) ** stages
	c_stages = stages
	i_stages = stages

	## Generate Integrator and Comb lists (Python list of objects)
	intes = [integrator() for obj in range(i_stages)]
	combs = [comb()	    for obj in range(c_stages)]
	output_samples = []
	## Decimating CIC Filter
	print("Running filter, this may take a while... ", end="")
	for (pos, value) in enumerate(sig):
		z = value
		for i in range(i_stages):
			z = intes[i].update(z)
		
		if (pos % decimation) == 0: 			# decimate is done here
			for c in range(c_stages):
				z = combs[c].update(z)
				j = z
			output_samples.append(j/gain) 	# normalise the gain
	return output_samples
	
class integrator:
	def __init__(self):
		self.yn  = 0
		self.ynm = 0
	
	def update(self, inp):
		self.ynm = self.yn
		self.yn  = (self.ynm + inp)
		return (self.yn)
		
class comb:
	def __init__(self):
		self.xn  = 0
		self.xnm = 0
	
	def update(self, inp):
		self.xnm = self.xn
		self.xn  = inp
		return (self.xn - self.xnm)

def fft_cal (in_sig, F_samp, fft_window_length):
	L = fft_window_length;
	W_blackman = scipy.blackman(L);
	fft_input = in_sig[int(1e4):L+int(1e4)];
	fft_input = fft_input - np.mean(fft_input)
	fft_input_window = fft_input * W_blackman ;
	Y_adc = scipy.fft(fft_input_window);
	P2_adc = np.array( abs(Y_adc/L) );
	print ( P2_adc )
	print ( len(P2_adc) )
	P1_adc = np.array( P2_adc[ 0 : int(L/2) ] );
	P1_adc[1:-1] = 2 * P1_adc[1:-1];
	P1_adc[0] = P1_adc[1];
	P1_adc_db = 10*np.log(P1_adc) - max(10*np.log(P1_adc));
	
	f = F_samp * np.arange(0, L/2, 1, dtype=int) / L;
	plt.semilogx(f, P1_adc_db); 
	plt.grid();

