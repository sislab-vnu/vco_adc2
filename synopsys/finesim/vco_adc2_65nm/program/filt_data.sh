#!/bin/bash

INP_FILE=$1
RAW_FILE=$2
cp ${INP_FILE} ${RAW_FILE}
sed '1,3d' $RAW_FILE > .tmp
awk '{
	if($2=="1.2000e+00")
		$2="1"
	else 
		$2="0"	
	print $2 "\t" $3 "\t" $4
}' .tmp > ${RAW_FILE}.cache
rm .tmp

