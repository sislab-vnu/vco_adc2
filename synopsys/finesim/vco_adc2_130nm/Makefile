all: help

#finesim:
#	finesim -np 8 -o ./simulations/ vco_adc2_130nm_tb.sp
simv:
	vcs -R +vpi -load finesim.so:finesim_startup +cli+3 verilog/dff.v

#	finesim -np 12 -o ./simulations/ vco_adc2_130nm_tb.sp 	
#	cat simulations/vco_tb.mt0
analysis:
	python3 ./program/analysis.py out.txt

clean:
	-rm -rf simv* csrc




.PHONY: run_finesim process_data clean clear test
