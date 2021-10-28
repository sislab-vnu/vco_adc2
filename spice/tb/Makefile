LIBPATH ?= $(PDKPATH)
all:
	@echo library directory: $(LIBPATH)
	@sed -i '/\.lib/d' vco_tb.spice
	@sed -i '7 i .lib '${LIBPATH}'/ngspice/sky130.lib.spice tt' vco_tb.spice
	@cat vco_tb.spice
#	ngspice	vco_tb.spice
#	@sed -i '7d' vco_tb.spice

