export PDK_ROOT=$(HOME)/eda/unic-cass/share/pdk
export PDK=sky130A

SETUP_TCL=$(PDK_ROOT)/$(PDK)/libs.tech/netgen/setup.tcl
NETGEN = netgen
NETGEN_OPTS = -batch lvs

CURRENT_PATH = $(shell pwd)/module

SPICE_XSC = ../xschem/lib/simulations
SPICE_MAG = ../layout/mag_lib

XSC_PATH = $(CURRENT_PATH)/xschem/
MAG_PATH = $(CURRENT_PATH)/magic/

# file_spice_1 ?= $(word 1, $(ARGS))
# module1 ?= $(word 2, $(ARGS))
# file_spice_2 ?= $(word 3, $(ARGS))
# module2 ?= $(word 4, $(ARGS))
# file_log ?= $(word 5, $(ARGS))

get_file:
	@mkdir -p $(XSC_PATH)
	@mkdir -p $(MAG_PATH)
	cp $(SPICE_XSC)/*.spice $(XSC_PATH)
	cp $(SPICE_MAG)/*.spice $(MAG_PATH)

# check_lvs:
# 	grep -n "Circuits match uniquely" comp.out
# 	@if [ $$? -eq 0 ]; then\
# 		echo "LVS check passed for $@" >> $(LOG_FILE);\
# 	else \
# 		echo "LVS check failed for $@";\
# 		exit 1;\
# 	fi

main_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/main_inv.spice main_inv" "$(MAG_PATH)/main_inv.spice main_inv" $(SETUP_TCL)

aux_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/aux_inv.spice aux_inv" "$(MAG_PATH)/aux_inv.spice aux_inv" $(SETUP_TCL)

cc_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/cc_inv.spice cc_inv" "$(MAG_PATH)/cc_inv.spice cc_inv" $(SETUP_TCL)

x5s_cc_osc: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/x5s_cc_osc.spice x5s_cc_osc" "$(MAG_PATH)/x5s_cc_osc.spice x5s_cc_osc" $(SETUP_TCL)

ALib_VCO: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/ALib_VCO.spice ALib_VCO" "$(MAG_PATH)/ALib_VCO.spice ALib_VCO" $(SETUP_TCL)

block_vco: main_inv aux_inv cc_inv vco_ring_osc vco
	@echo "All module check completed successfully"

main_inv_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/main_inv_dco.spice main_inv_dco" "$(MAG_PATH)/main_inv_dco.spice main_inv_dco" $(SETUP_TCL)

aux_inv_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/aux_inv_dco.spice aux_inv_dco" "$(MAG_PATH)/aux_inv_dco.spice aux_inv_dco" $(SETUP_TCL)

cc_inv_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/cc_inv_dco.spice cc_inv_dco" "$(MAG_PATH)/cc_inv_dco.spice cc_inv_dco" $(SETUP_TCL)

x5s_cc_osc_dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/x5s_cc_osc_dco.spice x5s_cc_osc_dco" "$(MAG_PATH)/x5s_cc_osc_dco.spice x5s_cc_osc_dco" $(SETUP_TCL)

ALib_IDAC: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/ALib_IDAC.spice ALib_IDAC" "$(MAG_PATH)/ALib_IDAC.spice ALib_IDAC" $(SETUP_TCL)

DLib_freqDiv2: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/DLib_freqDiv2.spice DLib_freqDiv2" "$(MAG_PATH)/DLib_freqDiv2.spice DLib_freqDiv2" $(SETUP_TCL)

ALib_DCO: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/ALib_DCO.spice ALib_DCO" "$(MAG_PATH)/ALib_DCO.spice ALib_DCO" $(SETUP_TCL)

block_dco: main_inv_dco aux_inv_dco cc_inv_dco x5s_cc_osc_dco ALib_IDAC DLib_freqDiv2 ALib_DCO 
	@echo "All module dco check completed successfully"

DLib_UpDownCounter: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/DLib_UpDownCounter.spice DLib_UpDownCounter" "$(MAG_PATH)/DLib_UpDownCounter.spice DLib_UpDownCounter" $(SETUP_TCL)

DLib_Quantizer: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/DLib_Quantizer.spice DLib_Quantizer" "$(MAG_PATH)/DLib_Quantizer.spice DLib_Quantizer" $(SETUP_TCL)

vco_adc2_op1: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/vco_adc2.spice vco_adc2" "$(MAG_PATH)/vco_adc2.spice vco_adc2" $(SETUP_TCL)

vco_adc2_op2: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/vco_adc2.spice vco_adc2" "$(MAG_PATH)/ALib_VCO_ADC2_op2.spice ALib_VCO_ADC2_op2" $(SETUP_TCL)

vco_adc2_op3: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_PATH)/vco_adc2.spice vco_adc2" "$(MAG_PATH)/ALib_VCO_ADC2_op3.spice ALib_VCO_ADC2_op3" $(SETUP_TCL)

all: block_vco block_dco count qz system
	@echo "ALL module check completed successfully"

.PHONY: get_file check_lvs main_inv aux_inv cc_inv x5s_cc_osc ALib_VCO main_inv_dco aux_inv_dco cc_inv_dco x5s_cc_osc_dco ALib_IDAC DLib_freqDiv2 DLib_UpDownCounter DLib_Quantizer ALib_VCO_ADC2_op1 ALib_VCO_ADC2_op2 ALib_VCO_ADC2_op3 all

clean:
	rm -f $(file_log) *.out *.log *.txt
	rm -rf $(CURRENT_PATH)
