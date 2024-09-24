export PDK_ROOT=$(HOME)/eda/unic-cass/share/pdk
export PDK=sky130A

SETUP_TCL=$(PDK_ROOT)/$(PDK)/libs.tech/netgen/setup.tcl
NETGEN = netgen
NETGEN_OPTS = -batch lvs

SPICE_XSC_VCO = ../xschem/lib/simulations
SPICE_MAG_VCO = ../layout/vco

SPICE_XSC_DCO = ../xschem/lib_dco/simulations
SPICE_MAG_DCO = ../layout/dco

SPICE_XSC_COUNT = ../xschem/lib_count/simulations
SPICE_MAG_COUNT = ../layout/count

SPICE_XSC_QZ = ../xschem/lib_qz/simulations
SPICE_MAG_QZ = ../layout/quantizer

SPICE_XSC_SYSTEM = ../xschem/system/simulations
SPICE_MAG_SYSTEM = ../layout/system

CURRENT_PATH = $(shell pwd)

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
#	echo $(CURRENT_PATH)
#	mv aux_inv.spice xsc_vco_aux_inv.spice
#	mv main_inv.spice xsc_vco_main_inv.spice
#	mv cc_inv.spice xsc_vco_cc_inv.spice
#	mv 5s_cc_osc.spice xsc_vco_ring_osc.spice
#	mv ALib_VCO.spice xsc_vco.spice

#compare:
#	@if [ -z "$(file_spice_1)" ] || [ -z "$(file_spice_2)" ] || [ -z "$(module1)" ] || [ -z "$(module2)" ] || [ -z "$(file_log)" ]; then
#	echo "Vui lòng cung cấp tất cả các tham số: tên file SPICE 1, tên file SPICE 2, tên module 1, tên module 2, và tên file log.";
#	exit 1;
#	fi

check_lvs:
	grep -n "Circuits match uniquely" comp.out
	@if [ $$? -eq 0 ]; then\
		echo "LVS check passed for $@" >> $(LOG_FILE);\
	else \
		echo "LVS check failed for $@";\
		exit 1;\
	fi

vco_main_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/vco_main_inv.spice vco_main_inv" "$(MAG_VCO_PATH)vco_main_inv.spice vco_main_inv" $(SETUP_TCL)
	make check_lvs

vco_aux_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/vco_aux_inv.spice vco_aux_inv" "$(MAG_VCO_PATH)/vco_aux_inv.spice vco_aux_inv" $(SETUP_TCL)
	make check_lvs

vco_cc_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/vco_cc_inv.spice vco_cc_inv" "$(MAG_VCO_PATH)/vco_cc_inv.spice vco_cc_inv" $(SETUP_TCL)
	make check_lvs

vco_ring_ocs: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/vco_ring_osc.spice vco_ring_osc" "$(MAG_VCO_PATH)/vco_ring_osc.spice vco_ring_osc" $(SETUP_TCL)
	make check_lvs

vco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_VCO_PATH)/vco.spice vco" "$(MAG_VCO_PATH)/vco.spice vco" $(SETUP_TCL)
	make check_lvs

block_vco: vco_main_inv vco_aux_inv vco_cc_inv vco_ring_osc vco
	@echo "All module check completed successfully"

dco_main_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/dco_main_inv.spice dco_main_inv" "$(MAG_DCO_PATH)/dco_main_inv.spice dco_main_inv" $(SETUP_TCL)
	make check_lvs

dco_aux_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/dco_aux_inv.spice dco_aux_inv" "$(MAG_DCO_PATH)/dco_aux_inv.spice dco_aux_inv" $(SETUP_TCL)
	make check_lvs

dco_cc_inv: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/dco_cc_inv.spice dco_cc_inv" "$(MAG_DCO_PATH)/dco_cc_inv.spice dco_cc_inv" $(SETUP_TCL)
	make check_lvs

dco_ring_osc: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/dco_ring_osc.spice dco_ring_osc" "$(MAG_DCO_PATH)/dco_ring_osc.spice dco_ring_osc" $(SETUP_TCL)
	make check_lvs

dco_idac: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/dco_idac.spice dco_idac" "$(MAG_DCO_PATH)/dco_idac.spice dco_idac" $(SETUP_TCL)
	make check_lvs

dco_freq: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/dco_freq.spice dco_freq" "$(MAG_DCO_PATH)/dco_freq.spice dco_freq" $(SETUP_TCL)
	make check_lvs

dco: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_DCO_PATH)/dco.spice dco" "$(MAG_DCO_PATH)/dco.spice dco" $(SETUP_TCL)
	make check_lvs

block_dco: dco_main_inv dco_aux_inv dco_cc_inv dco_ring_osc dco_idac dco_freq dco 
	clear
	@echo "All module dco check completed successfully"

count: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_COUNT_PATH)/count.spice count" "$(MAG_COUNT_PATH)/count.spice count" $(SETUP_TCL)
	make check_lvs

qz: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_QZ_PATH)/qz.spice qz" "$(MAG_QZ_PATH)/qz.spice qz" $(SETUP_TCL)
	make check_lvs

system: get_file
	$(NETGEN) $(NETGEN_OPTS) "$(XSC_SYSTEM_PATH)/system.spice system" "$(MAG_SYSTEM_PATH)/system.spice system" $(SETUP_TCL)
	make check_lvs

.PHONY: get_file check_lvs vco_main_inv vco_aux_inv vco_cc_inv vco_ring_osc vco dco_main_inv dco_aux_inv dco_cc_inv dco_ring_osc block_dco count qz system

clean:
	rm -f $(file_log) *.out

help:
	@echo "C1: Sử dụng: make ARGS='<tên_file_spice_1> <tên_file_spice_2> <tên_module_1> <tên_module_2> <tên_file_kết_quả>'"
	@echo "C2: make + target"
