
all: run_finesim run_analysis process_data

run_freq_ext:
	mkdir -p simulations
	finesim -np 12 -o ./simulations/ freq_ext.sp

run_finesim:
	mkdir -p simulations
	finesim -np 12 -o ./simulations/ vco_adc2_65nm_tb.sp

#	finesim -np 12 -o ./simulations/ vco_adc2_130nm_tb.sp 	
#	cat simulations/vco_tb.mt0
run_analysis:
	mkdir -p results/raw
	mkdir -p results/filtered
	python3 ./program/analysis.py
	rm .analysis_cache


wave:
	wv ./simulations/vco_adc2_65nm_tb.wdf &

clean:
	rm -f *log* *ic* *~ .analysis_cache

clear:
	rm *tr* *mt* *st* *pt* *fsdb*

test:
	echo ${RAW_FILE}
	echo ${PROCESSED_FILE}


.PHONY: run_finesim run_freq_ext run_analysis wave clean clear test
