import numpy as np
from signal_processing import *
import os

def main():
	volt = 0.1	# V_amp
	freq = 5	# kHz
	file_name = str(volt) + 'V@' + str(freq) + 'kHz.txt'
	filt_data(file_name)
	
main()

