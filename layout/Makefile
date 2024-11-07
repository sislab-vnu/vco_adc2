CURRENT_PATH = $(shell pwd)
RUN_TCL = run_magic.tcl

MAGIC_PATH = $(CURRENT_PATH)/mag_lib

.PHONY: vco system all clean

vco:
	cd $(MAGIC_PATH) && tclsh $(RUN_TCL) vco

all:
	magic -dnull -noconsole $(FILE_NAME)

clean:
	rm -f $(MAGIC_VCO)/*.spice *.ext 
	rm -rf $(NETLIST_VCO)
	rm -f *.tcl
