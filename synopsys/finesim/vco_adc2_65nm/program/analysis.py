import numpy as np
from signal_processing import *
import matplotlib.pyplot as plt
import os

def main():
	env_var = 'VCO_ADC2_65'
	volt = 0.4	# V_amp
	freq = 1	# kHz
	file_name = str(volt) + 'V@' + str(freq) + 'kHz.txt'
	data_out, anlg_in = filt_data (file_name, env_var)
	data_out = [int(ix) for ix in data_out]
#	plt.figure(0)
#	plt.plot(data_out)
	cic_filr_sig =	decimation_filr (data_out, 512)	
	plt.figure(1) 
	plt.plot(cic_filr_sig)	
	
	plt.figure(2)
	fft_cal(data_out, 24e6, 2**18)

	plt.show()
		
main()

