
all: run_finesim run_analysis process_data

freq_ext:
	finesim -np 12 -o ./simulations/ freq_ext.sp

finesim:
	finesim -np 6 -o ./simulations/ vco_adc2_130nm_tb.sp

#	finesim -np 12 -o ./simulations/ vco_adc2_130nm_tb.sp 	
#	cat simulations/vco_tb.mt0
analysis:
	mkdir -p results/raw
	mkdir -p results/filtered
	python3 ./program/analysis.py
	rm .analysis_cache

clean:
	rm -f *log* *ic* *~ .analysis_cache

clear:
	rm *tr* *mt* *st* *pt* *fsdb*

test:
	echo ${RAW_FILE}
	echo ${PROCESSED_FILE}


.PHONY: run_finesim process_data clean clear test
