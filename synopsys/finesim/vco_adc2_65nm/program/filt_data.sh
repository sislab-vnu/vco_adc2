#!/bin/bash

FILE_NAME=$1
ENV_VAR=$2
RAW_FILE=${!ENV_VAR}/results/raw/$FILE_NAME
cp ${!ENV_VAR}/simulations/vco_adc2_65nm_tb.pt0 $RAW_FILE
sed '1,2d' $RAW_FILE > .tmp
awk '{
	if($2=="1.2000e+00")
		$2="1"
	else 
		$2="0"	
	print $2 "\t" $3 "\t" $4
}' .tmp > .analysis_cache
rm .tmp

