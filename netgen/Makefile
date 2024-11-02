export PDK_ROOT=$(HOME)/eda/unic-cass/share/pdk
export PDK=sky130A

SETUP_TCL=$(PDK_ROOT)/$(PDK)/libs.tech/netgen/setup.tcl
NETGEN = netgen
NETGEN_OPTS = -batch lvs

SPICE_XSC_VCO = ../xschem/lib/simulations
SPICE_MAG_VCO = ../layout/vco

SPICE_XSC_DCO = ../xschem/lib/simulations
SPICE_MAG_DCO = ../layout/dco

SPICE_XSC_COUNT = ../xschem/lib/simulations
SPICE_MAG_COUNT = ../layout/count

SPICE_XSC_QZ = ../xschem/lib/simulations
SPICE_MAG_QZ = ../layout/quantizer

SPICE_XSC_SYSTEM = ../xschem/lib/simulations
SPICE_MAG_SYSTEM = ../layout/system

CURRENT_PATH = $(shell pwd)/module

XSC_VCO_PATH = $(CURRENT_PATH)/xsc_vco/
MAG_VCO_PATH = $(CURRENT_PATH)/mag_vco/

XSC_DCO_PATH = $(CURRENT_PATH)/xsc_dco/
MAG_DCO_PATH = $(CURRENT_PATH)/mag_dco/

XSC_COUNT_PATH = $(CURRENT_PATH)/xsc_count/
MAG_COUNT_PATH = $(CURRENT_PATH)/mag_count/

XSC_QZ_PATH = $(CURRENT_PATH)/xsc_qz/
MAG_QZ_PATH = $(CURRENT_PATH)/mag_qz/

XSC_SYSTEM_PATH = $(CURRENT_PATH)/xsc_system/
MAG_SYSTEM_PATH = $(CURRENT_PATH)/mag_system/

file_spice_1 ?= $(word 1, $(ARGS))
module1 ?= $(word 2, $(ARGS))
file_spice_2 ?= $(word 3, $(ARGS))
module2 ?= $(word 4, $(ARGS))
file_log ?= $(word 5, $(ARGS))

LOG_FILE = results.log
VCO_MAIN_INV_PASS = 0
VCO_AUX_INV_PASS = 0
VCO_CC_INV_PASS = 0
VCO_RING_OSC_PASS = 0
VCO_PASS = 0

get_file:
	@mkdir -p $(XSC_VCO_PATH)
	@mkdir -p $(MAG_VCO_PATH)
	cp $(SPICE_XSC_VCO)/*.spice $(XSC_VCO_PATH)
	cp $(SPICE_MAG_VCO)/*.spice $(MAG_VCO_PATH)
	@mkdir -p $(XSC_DCO_PATH)
	@mkdir -p $(MAG_DCO_PATH)
	cp $(SPICE_XSC_DCO)/*.spice $(XSC_DCO_PATH)
	cp $(SPICE_MAG_DCO)/*.spice $(MAG_DCO_PATH)
	@mkdir -p $(XSC_COUNT_PATH)
	@mkdir -p $(MAG_COUNT_PATH)
	cp $(SPICE_XSC_COUNT)/*.spice $(XSC_COUNT_PATH)
	cp $(SPICE_MAG_COUNT)/*.spice $(MAG_COUNT_PATH)
	@mkdir -p $(XSC_QZ_PATH)
	@mkdir -p $(MAG_QZ_PATH)
	cp $(SPICE_XSC_QZ)/*.spice $(XSC_QZ_PATH)
	cp $(SPICE_MAG_QZ)/*.spice $(MAG_QZ_PATH)
	@mkdir -p $(XSC_SYSTEM_PATH)
	@mkdir -p $(MAG_SYSTEM_PATH)
	cp $(SPICE_XSC_SYSTEM)/*.spice $(XSC_SYSTEM_PATH)
	cp $(SPICE_MAG_SYSTEM)/*.spice $(MAG_SYSTEM_PATH)

check_lvs:
	grep -n "Circuits match uniquely" comp.out
	@if [ $$? -eq 0 ]; then\
		echo "LVS check passed for $@" >> $(LOG_FILE);\
	else \
		echo "LVS check failed for $@";\
		exit 1;\
	fi

main_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/main_inv.spice main_inv" "$(MAG_VCO_PATH)/main_inv.spice main_inv" $(SETUP_TCL)
	make check_lvs

aux_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/aux_inv.spice aux_inv" "$(MAG_VCO_PATH)/aux_inv.spice aux_inv" $(SETUP_TCL)
	make check_lvs

cc_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/cc_inv.spice cc_inv" "$(MAG_VCO_PATH)/cc_inv.spice cc_inv" $(SETUP_TCL)
	make check_lvs

x5s_cc_osc: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/x5s_cc_osc.spice x5s_cc_osc" "$(MAG_VCO_PATH)/x5s_cc_osc.spice x5s_cc_osc" $(SETUP_TCL)
	make check_lvs

ALib_VCO: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/ALib_VCO.spice ALib_VCO" "$(MAG_VCO_PATH)/ALib_VCO.spice ALib_VCO" $(SETUP_TCL)
	make check_lvs

block_vco: main_inv aux_inv cc_inv vco_ring_osc vco
	@echo "All module check completed successfully"

main_inv_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/main_inv_dco.spice main_inv_dco" "$(MAG_DCO_PATH)/main_inv_dco.spice main_inv_dco" $(SETUP_TCL)
	make check_lvs

aux_inv_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/aux_inv_dco.spice aux_inv_dco" "$(MAG_DCO_PATH)/aux_inv_dco.spice aux_inv_dco" $(SETUP_TCL)
	make check_lvs

cc_inv_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/cc_inv_dco.spice cc_inv_dco" "$(MAG_DCO_PATH)/cc_inv_dco.spice cc_inv_dco" $(SETUP_TCL)
	make check_lvs

x5s_cc_osc_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/x5s_cc_osc_dco.spice x5s_cc_osc_dco" "$(MAG_DCO_PATH)/x5s_cc_osc_dco.spice x5s_cc_osc_dco" $(SETUP_TCL)
	make check_lvs

ALib_IDAC: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/ALib_IDAC.spice ALib_IDAC" "$(MAG_DCO_PATH)/ALib_IDAC.spice ALib_IDAC" $(SETUP_TCL)
	make check_lvs

DLib_freqDiv2: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/DLib_freqDiv2.spice DLib_freqDiv2" "$(MAG_DCO_PATH)/DLib_freqDiv2.spice DLib_freqDiv2" $(SETUP_TCL)
	make check_lvs

ALib_DCO: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/ALib_DCO.spice ALib_DCO" "$(MAG_DCO_PATH)/ALib_DCO.spice ALib_DCO" $(SETUP_TCL)
	make check_lvs

block_dco: main_inv_dco aux_inv_dco cc_inv_dco x5s_cc_osc_dco ALib_IDAC DLib_freqDiv2 ALib_DCO 
	@echo "All module dco check completed successfully"

DLib_UpDownCounter: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_COUNT_PATH)/DLib_UpDownCounter.spice DLib_UpDownCounter" "$(MAG_COUNT_PATH)/DLib_UpDownCounter.spice DLib_UpDownCounter" $(SETUP_TCL)
	make check_lvs

DLib_Quantizer: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_QZ_PATH)/DLib_Quantizer.spice DLib_Quantizer" "$(MAG_QZ_PATH)/DLib_Quantizer.spice DLib_Quantizer" $(SETUP_TCL)
	make check_lvs

ALib_VCO_ADC2: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_SYSTEM_PATH)/system.spice system" "$(MAG_SYSTEM_PATH)/system.spice system" $(SETUP_TCL)
	make check_lvs

all: block_vco block_dco count qz system
	@echo "ALL module check completed successfully"

.PHONY: get_file check_lvs main_inv aux_inv cc_inv x5s_cc_osc ALib_VCO main_inv_dco aux_inv_dco cc_inv_dco x5s_cc_osc_dco ALib_IDAC DLib_freqDiv2 DLib_UpDownCounter DLib_Quantizer ALib_VCO_ADC2 all

clean:
	rm -f $(file_log) *.out *.log *.txt
	rm -rf $(MAG_VCO_PATH) $(XSC_VCO_PATH)
	rm -rf $(MAG_DCO_PATH) $(XSC_DCO_PATH)
	rm -rf $(MAG_COUNT_PATH) $(XSC_COUNT_PATH)
	rm -rf $(MAG_QZ_PATH) $(XSC_QZ_PATH)
	rm -rf $(MAG_SYSTEM_PATH) $(XSC_SYSTEM_PATH)
