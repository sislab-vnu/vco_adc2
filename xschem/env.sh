#!bin/bash

TOOL_DIR=/home/tools/openpdks
NGSPICE_PATH=$TOOL_DIR/ngspice/ngspice-41/bin
XSCHEM_PATH=$TOOL_DIR/xschem/3.4.4/bin/

export PDK_ROOT=/home/dkits/openpdks
export PDK=sky130A
export PATH=$PATH:$NGSPICE_PATH
export PATH=$PATH:$XSCHEM_PATH
