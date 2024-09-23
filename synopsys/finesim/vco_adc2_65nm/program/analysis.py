import numpy as np
from signal_processing import *
import matplotlib.pyplot as plt
from multiprocessing import Process
import os
import time
import random


def main():
#	volts = [0.005, 0.01, 0.02, 0.04, 0.08, 0.16, 0.32, 0.36]
#	volts = [0.02, 0.04, 0.08]
	freq = 1 #kHz
	
#	Single simulation and single analysis
#	simulation (0.4, 1)
	single_analysis(0.08, 1)
	

#	Multiple simulation and analysis
	
#	parallel_simulating(volt, freq)
#	multiple_analysis(volts, freq)
	plt.show()

		

def multiple_analysis(volts, freq):
		
	SNDRs = []
	for v in volts:
		sndr = single_analysis(v, freq)
		SNDRs.append(sndr)
	print (SNDRs) 
	plt.figure(3)
	plt.semilogx(volts, SNDRs)



def single_analysis(volt, freq):
	env_var = 'VCO_ADC2_65'
#	volt = 10.0	# mV_amp
#	freq = 1	# kHz
	file_name = str(1e3*volt) + 'mV@' + str(freq) + 'kHz'
	data_out, anlg_in = filt_data (file_name, env_var)
#	data_out = [int(ix) for ix in data_out]
	data_out = data_out - np.mean(data_out)
#	plt.figure(0)
#	plt.plot(data_out)
	cic_filr_sig =	decimation_filr (data_out, 512)	
	plt.figure(1) 
	plt.plot(cic_filr_sig)	
	
	plt.figure(2)
	f, P1_adc_db =	fft_cal(data_out, 24e6, 2**18)
	psd_plot (f, P1_adc_db, 24e6)
	sndr = get_sndr (f, P1_adc_db, 24e3, 1e3)
	print (' the SNDR =' + str (sndr))
	return sndr

def simulation(vin_amp, freq):
	# freq = 1	# kHz
	# generating input_dat file
	string_dat = '.DATA input_signal\n'
	string_dat = string_dat + '+ vin_amp\n'
	string_dat = string_dat + '+ ' + str(vin_amp) + '\n'
	string_dat = string_dat + '.ENDDATA'
	
	env_var = 'VCO_ADC2_65'
	in_dat_file = os.environ[env_var] + '/input_dat' + str(random.randint(1, 30)) + '.sp'
	print (in_dat_file)
	with open(in_dat_file, "w") as file:
		file.write(string_dat)
	
	time.sleep(3)
	outfile  = 'simulations/'+str(1e3*vin_amp) + 'mV@' + str(freq) + 'kHz'

	cmd = 'finesim -np 4 -afile ' + in_dat_file
	cmd = cmd + ' -out ' + outfile
	cmd = cmd + ' vco_adc2_65nm_tb.sp'
	print(cmd)
	os.system(cmd)
	time.sleep(3)


def parallel_simulating(volt, freq):
	# automated parallel simulations	
	num_sims = len(volt)
	left_sims =  num_sims
	while left_sims > 0:
		processes = []
		if left_sims >= 4:
			thread = 4
		else:
			thread = left_sims
		for ix in range(num_sims-left_sims , num_sims-left_sims+thread):
			print (ix)
			p = Process(target=simulation, args=(volt[ix], freq, ))
			p.start()
			processes.append(p)
	
		for p in processes:
			p.join()
	
		left_sims = left_sims - thread
		os.system('rm  input_dat*')
	# automated extract sndr



main()
