#!/bin/bash

FILE_NAME=$1
RAW_FILE=$VCO_ADC2_130/results/raw/$FILE_NAME
cp $VCO_ADC2_130/simulations/vco_adc2_130nm_tb.pt0 $RAW_FILE
sed '1,5d' $RAW_FILE > .tmp
awk '{
	if($2=="1.8000e+00")
		$2="1"
	else 
		$2="0"	
	print $2 "\t" $3 "\t" $4
}' .tmp > .analysis_cache
rm .tmp

