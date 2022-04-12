#!/bin/bash
INPUT="Acous@115dB_SPL_6"
RAW_FILE="raw_VCO_ADC_"$INPUT".txt"
PROCESSED_FILE="data_"$INPUT".txt"
# sed -i '1,42076d' $RAW_FILE
awk '{print $3 "    " $4 "    " $5}' $RAW_FILE > tmp 
awk '{
	if($1=="1.800000e+00")
		$1="1"
	else 
		$1= "0"	
	print $1 "    " $2 "    " $3
}' tmp > result.txt
rm tmp
#sed -i 's/e-01/10/g' result.txt
python3 process_data.py
scp -P 5908 data.txt fsplay.us.to:~/git/mpw-three/matlab/Workspace/$PROCESSED_FILE
mv data.txt ../../../matlab/Workspace/$PROCESSED_FILE

