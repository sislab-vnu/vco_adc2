all: run_cosim
run_cosim:
	vcs -full64 -lca -ad=vcsAD.init -R -debug_access+all \
		-ad_iereport\
		+memcbk +vcs+fsdbon\
		-override_timescale=1ns/1ps \
		${ADC_PROJECT_DIR}/verilog/dlib_updowncounter.v \
		${ADC_PROJECT_DIR}/verilog/dlib_quantizer.v \
		${ADC_PROJECT_DIR}/verilog/sky130_fd_sc_hd.v \
		${ADC_PROJECT_DIR}/verilog/primitives.v \
		-l cosim.log
clean:
	-rm -rf cosim* nova* csrc simv* sxcmd.log* \
		ucli.key verdiLog vfastLog DVEfiles
gui:
	wv &
.PHONY: clean
