import numpy as np
from signal_processing import *
import matplotlib.pyplot as plt
import os

def dec2bin_32b(dec = 10):
	bin_32b = bin(dec)[2:]
	bin_32b = bin_32b.zfill(32)
	return bin_32b

def bin2dec_16b(bin_16b = '1001100110011001'):
	dec = int(bin_16b, 2)
	return dec
	

def signal_cprs(raw_sig = [4.5* 10 **7, 10 ** 7]):
	cprs_sig = []
	for data in raw_sig:
		data_bin = dec2bin_32b(int(data))				# convert decimal to binary

		data_bin_cprs = data_bin[6:22]					# compress from 32 to 16 bit

	#	print (type(data_bin), type(data_bin_cprs))
	#	print ('\n data_bin = ', data_bin)
	#	print ('\n data_bin_cprs = ', data_bin_cprs)

		data_dec_cprs = bin2dec_16b(bin_16b = data_bin_cprs)	# convert binary to decimal
		cprs_sig.append (data_dec_cprs)					# write to compressed signal array
	return cprs_sig

def main(fname):
	volt = 0.36	# V_amp
	freq = 1	# kHz
	# file_name = str(volt) + 'V@' + str(freq) + 'kHz.txt'
	# data_out, anlg_in = filt_data (file_name)
	# data_out = [int(ix) for ix in data_out]
	data_out = np.loadtxt(fname, skiprows=2583)
#	plt.figure(0)
#	plt.plot(data_out)
	cic_filr_sig =	decimation_filr (data_out, 500)	
	
	cic_filr_sig_cprs = signal_cprs(raw_sig = cic_filr_sig)

	plt.figure('Decimation filter output before compressing (32-bit)') 
	plt.plot(cic_filr_sig)
	plt.figure('Decimation filter output after compressing (16-bit)') 
	plt.plot(cic_filr_sig_cprs)	
	
	plt.figure('FFT result')
	fft_cal(data_out, 24e6, 2**18)

	plt.show()
if __name__ == "__main__":
	import sys
	main(sys.argv[1])
# dec2bin_32b(dec= 10 ** 7)
# signal_cprs()
