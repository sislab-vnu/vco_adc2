CURRENT_PATH = $(shell pwd)
RUN_TCL = run_magic.tcl

MAGIC_VCO = $(CURRENT_PATH)/vco
NETLIST_VCO = $(CURRENT_PATH)/netlist_vco

.PHONY: vco system all clean

vco:
	cd $(MAGIC_VCO) && tclsh $(RUN_TCL) vco
	@mkdir -p $(NETLIST_VCO)
	mv $(MAGIC_VCO)/*.spice $(NETLIST_VCO)
	mv $(MAGIC_VCO)/*.ext $(NETLIST_VCO)

dco:
	cd $(MAGIC_VCO) && tclsh $(RUN_TCL) dco
	@mkdir -p $(NETLIST_VCO)
	mv $(MAGIC_VCO)/*.spice $(NETLIST_VCO)
	mv $(MAGIC_VCO)/*.ext $(NETLIST_VCO)

system:
	cd $(MAGIC_VCO) && tclsh $(RUN_TCL) system
	@mkdir -p $(NETLIST_VCO)
	mv $(MAGIC_VCO)/*.spice $(NETLIST_VCO)
	mv $(MAGIC_VCO)/*.ext $(NETLIST_VCO)

all:
	magic -dnull -noconsole $(FILE_NAME)

clean:
	rm -f $(MAGIC_VCO)/*.spice *.ext 
	rm -rf $(NETLIST_VCO)
	rm -f *.tcl
