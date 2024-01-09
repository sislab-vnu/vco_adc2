INPUT?=aMHz@94dB
PREFIX=raw_
SUBFIX:=.txt
RAW_FILE:=${PREFIX}${INPUT}
PREFIX=data_
PROCESSED_FILE:=${PREFIX}${INPUT}${SUBFIX}

all: run_finesim process_data
run_finesim:
	finesim -np 12 -o ./simulations/ vco_adc2_130nm_tb.sp 	
#	cat simulations/vco_tb.mt0
process_data:
	mkdir -p result
	bash process_data.sh

#	cp ./simulations/top.pt0 ./result/${RAW_FILE}.txt
#	cp ./simulations/top.fsdb ./result/${RAW_FILE}.fsdb
#	awk '{print $$2 "    " $$1 "    " $$3 "    " $$4}' ./result/${RAW_FILE}.txt > tmp
#	awk '{ \
#	   if($$1=="1.8000e+00") {$$1="1"}\
#      else {$$1="0"}\
#		print $$1 "    " $$2 "    " $$3 "    " $$4 \
#      }' tmp > result.txt
#	python3 ./result/process_data.py
#	sed -i '1iNaN time Dout anlg_in' data.txt
#	mv data.txt ../../matlab/Workspace/${PROCESSED_FILE}
#	rm tmp result.txt

 clean:
	rm -f *log* *ic* *~

 clear:
	rm *tr* *mt* *st* *pt* *fsdb*

test:
	echo ${RAW_FILE}
	echo ${PROCESSED_FILE}


.PHONY: run_finesim process_data clean clear test
