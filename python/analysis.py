import numpy as np
from signal_processing import *
import matplotlib.pyplot as plt
from multiprocessing import Process
import os
import time
import random


def main():
	
	single_analysis()
	plt.show()
		

def single_analysis():
	
	Fsample = 24e6
	osr = 500
	file_name = 'data_20240424.dat'
	data = np.loadtxt(file_name, dtype=float, delimiter=',')	
	L = len(data)
	f = np.arange(0, L, 1)/(2*L)
	f = f * Fsample
	plt.figure(1)
	plt.semilogx(f, data)
	ver_line_y = [-160, 10]
	ver_line_x = [Fsample/(2*osr), Fsample/(2*osr)]
	plt.xlabel('Frequency (Hz)')
	plt.ylabel('PSD (dB)')
	plt.plot(ver_line_x, ver_line_y, color='#15B01A')
	plt.ylim(-160, 5)
	plt.grid()


main()
