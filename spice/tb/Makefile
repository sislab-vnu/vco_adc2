LIBPATH ?= $(PDKPATH)/libs.tech
RESULTFILE ?= ./result/ringOsc_extract_freq.txt
MATLABDIR ?= ../../matlab/
init:
	@echo library directory: $(LIBPATH)
	@sed -i '/\.lib/d' vco_tb.spice
	@sed -i '7 i .lib '${LIBPATH}'/libs.tech/ngspice/sky130.lib.spice tt' vco_tb.spice
	@cat vco_tb.spice
#	ngspice	vco_tb.spice
#	@sed -i '7d' vco_tb.spice
    
dir:
	echo "break point"
	@if [ -d "$(pwd)/result" ]; then \
		echo "Dir result exists "; else \
		echo "Dir does not exist, create new direction"; \
		mkdir result; \
	fi
preProcessResult:
	@sed -i '70d' '${RESULTFILE}'
	@sed -i '/---/d' '${RESULTFILE}'
	@sed -i '/Index/d' '${RESULTFILE}'
	@sed -i '/---/d' '${RESULTFILE}'
	@sed -i '/onstant/d' '${RESULTFILE}'
	@sed -i '//d' '${RESULTFILE}'
	@echo Vin$$'\t'Vctrl$$'\t'Freq$$'\t'Power > tmp
	@awk -v OFS='\t' '{ print $$2, $$3, $$4, $$5}' '${RESULTFILE}' >> tmp
	@mv tmp '${MATLABDIR}'/extractProfile.txt
