ifndef PDKPATH
	PDKPATH := /home/dkit/efabless/pdks/sky130A
endif
LIBPATH ?= $(PDKPATH)/libs.tech/ngspice

all: init run_spice 
.PHONY: all
init: 
	@echo library directory: $(LIBPATH)
	@sed -i '/\.lib/d' vco_tb.spice
	@sed -i '7 i .lib '${LIBPATH}'/sky130.lib.spice tt' vco_tb.spice
	@cat vco_tb.spice

run_spice:
	ngspice vco_tb.spice


