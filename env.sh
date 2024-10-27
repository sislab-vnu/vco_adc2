export PROJECT_DIR=/home/toind/work/vco_adc2
#export PROJECT_DIR=$(pwd)
export VCO_ADC2_130=$PROJECT_DIR/synopsys/finesim/vco_adc2_130nm
export HOME_TOOLS=$PATH:/home/tools/
export MATLAB=$HOME_TOOLS/matlab/R2019b/bin/
export VCO_ADC2_65=$PROJECT_DIR/synopsys/finesim/vco_adc2_65nm
export PATH=$PATH:$MATLAB
source $PROJECT_DIR/synopsys/env.sh
source $PROJECT_DIR/xschem/env.sh

export PDK_ROOT=$HOME/eda/unic-cass/share/pdk
export PDK=sky130A
source $HOME/eda/unic-cass/bin/activate
