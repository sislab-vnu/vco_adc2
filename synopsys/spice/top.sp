
Xvco_1 Anlg_in ENB GND GND VCCA VCCA p_vco ALib_VCO
+ L12="vco_L12" Wp12="vco_Wp12" Wn12="vco_Wn12"
+ L34="vco_L34" Wp34="vco_Wp34" Wn34="vco_Wn34"
X_buf_0 p_vco GND GND VDD VCCD p_vco_buf sky130_fd_sc_hd__buf_1 


X_UDC_1 p_vco_buf FBack ENB GND GND VCCD VCCD D1 DLib_UpDownCounter
X_UDC_2 p_dco FBack ENB GND GND VCCD VCCD D2 DLib_UpDownCounter
X_Qtz_1 CLK D2 GND GND VCCD VCCD Dout FBack DLib_Quantizer

Xdco_1 D1 ENB Vbs_12 Vbs_34 GND GND VDD VCCD VCCA p_dco ALib_DCO
+ L12="dco_L12" Wp12="dco_Wp12" Wn12="dco_Wn12"
+ L34="dco_l34" Wp34="dco_Wp34" Wn34="dco_Wn34"
+ W_br1="W_br1" L_br1="L_br1" W_br2="W_br2" L_br2="L_br2"
+ Wp_lk=4 Lp_lk=0.5 Wn_lk=2 Ln_lk=0.5

** VOLTAGE REFERENCE
Vbs_12 Vbs_12 GND DC=dco_bs12
Vbs_34 Vbs_34 GND DC=0
VCCA VCCA GND DC=1.8
VCCD VCCD GND DC=1.8
V_DD VDD  GND DC=1.8
V_in Anlg_in GND DC=0  SIN(0.5 0.1 1K 20u 0 0)
Venb ENB GND DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20n 1 )
Vclk CLK GND DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20.73n 41.67n )
*V_D1 D1 GND DC=dco_d1 PULSE( 0 1.8 0 0.1n 0.1n 50n 100n )

** Library on VNU server
.lib /home/manhtd/working/pdks/libs.tech/hspice/sky130.lib.spice tt
.inc /home/manhtd/working/pdks/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.lib /home/dkits/efabless/mpw-5/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.inc /home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
** Library on Home PC
*.lib /home/dkit/efabless/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.inc /home/dkit/efabless/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.inc subckt.sp
*.inc digital_subckt.sp

.global GND VDD
.option parhier=LOCAL
.param mc_mm_switch=0
.param Vin=0

** VCO's parametters
.param vco_Wp12=6
.param vco_Wn12=4
.param vco_L12=3.6
.param vco_Wp34=3.4
.param vco_Wn34=2.2
.param vco_L34=3.6

** DCO's parametters
.param dco_Wp12=5
.param dco_Wn12=2
.param dco_L12=1.8
.param dco_Wp34=2.5
.param dco_Wn34=1
.param dco_L34=1.8
.param dco_bs12=0.4
.param dco_d1=1.8

** IDAC's parameters
.param W_br1=1.22
.param L_br1=0.5
.param W_br2=2.2
.param L_br2=0.5
.tran 0.4n 16u start=0 $ sweep Vin 0 1.0 0.1
.measure tran prd trig v(p_vco) val=0.8 rise=10 targ v(p_vco) val=0.8 rise=15
.measure tran freq_v param='5/prd'
.measure tran prd1 trig v(p_dco) val=0.8 rise=10 targ v(p_dco) val=0.8 rise=15
.measure tran freq_d param='5/prd1'

*.option opfile=1 split_dp=1
.option finesim_output=fsdb
.option finesim_fsdb_version=5.6
.probe tran v(p_vco) v(p_dco) v(Xdco_1.p_osc) v(Xdco_1.pha_ro) v(Xdco_1.p_dco)
+ v(D1) v(D2) v(Dout) v(CLK) v(FBack) v(p_vco_buf)


