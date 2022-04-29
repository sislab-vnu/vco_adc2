
xvco_1 anlg_in enb gnd gnd vcca vcca p_vco alib_vco
+ l12="vco_l12" wp12="vco_wp12" wn12="vco_wn12"
+ l34="vco_l34" wp34="vco_wp34" wn34="vco_wn34"
*x_buf_0 p_vco gnd gnd vdd vccd p_vco_buf sky130_fd_sc_hd__buf_1 


x_udc_1 p_vco fback enb gnd gnd vccd vccd d1 dlib_updowncounter
x_udc_2 p_dco fback enb gnd gnd vccd vccd d2 dlib_updowncounter
x_qtz_1 clk d2 gnd gnd vccd vccd dout fback dlib_quantizer

xdco_1 d1 enb vbs_12 vbs_34 gnd gnd vccd vccd vcca p_dco alib_dco
+ l12="dco_l12" wp12="dco_wp12" wn12="dco_wn12"
+ l34="dco_l34" wp34="dco_wp34" wn34="dco_wn34"
+ w_br1="w_br1" l_br1="l_br1" w_br2="w_br2" l_br2="l_br2"
+ wp_lk=4 lp_lk=0.5 wn_lk=2 ln_lk=0.5

** voltage reference
vbs_12 vbs_12 gnd dc=dco_bs12
vbs_34 vbs_34 gnd dc=0
vcca vcca gnd dc=1.8
vccd vccd gnd dc=1.8
v_dd vdd  gnd dc=1.8
v_in anlg_in gnd dc=vin sin(0.5 0.015 1k 20u 0 0)
venb enb gnd dc=0 pulse( 0 1.8 0 0.1n 0.1n 20n 1 )
vclk clk gnd dc=0 pulse( 0 1.8 0 0.1n 0.1n 20.73n 41.67n )
* v_d1 d1 gnd dc=dco_d1 $ pulse( 0 1.8 0 0.1n 0.1n 50n 100n )

** library on vnu server

.lib /home/dkits/efabless/mpw-5/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
** library on home pc
* .lib /home/dkit/efabless/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
* .inc /home/dkit/efabless/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
** custom library for hspice
* .lib ../../../pdks/libs.tech/hspice/sky130.lib.spice tt
* .inc ../../../pdks/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* VCO-ADC's libraries
.inc subckt.sp
.inc digital_subckt.sp


.global gnd vdd
.option parhier=local
.param mc_mm_switch=0
.param vin=0
.param dco_d1=0

** vco's parametters
.param vco_wp12=8
.param vco_wn12=4
.param vco_l12=3.8
.param vco_wp34=4.4
.param vco_wn34=2.2
.param vco_l34=3.8

** dco's parametters
.param dco_wp12=5
.param dco_wn12=2
.param dco_l12=2
.param dco_wp34=2.5
.param dco_wn34=1
.param dco_l34=2
.param dco_bs12=0.3

** idac's parameters
.param w_br1=0.85
.param l_br1=0.5
.param w_br2=2.4
.param l_br2=0.5

** control simulation lines
.probe tran v(p_vco) v(p_dco) v(xdco_1.p_osc) v(xdco_1.pha_ro) v(xdco_1.p_dco)
+ v(xdco_1.Isup) i(xdco_1.R_debug)
+ v(d1) v(d2) v(dout) v(clk) v(fback) v(p_vco_buf) v(anlg_in)

.print v(clk) v(dout) v(anlg_in)

.tran 1n 2.05m start=0 $  sweep vin 0 1.0 0.1

* .measure tran prd trig v(p_vco) val=0.8 rise=10 targ v(p_vco) val=0.8 rise=20
* .measure tran freq_v param='10/prd'
*.measure tran prd1 trig v(p_dco) val=0.8 rise=10 targ v(p_dco) val=0.8 rise=40
*.measure tran freq_d param='30/prd1'

** options for finesim simulator
*.option finesim_fsdb_version=5.6
.option finesim_output=fsdb
.option finesim_mode=spicehd
.option finesim_mode="dlib*:promd":subckt
* option finesim_mode="alib_vco:spicehd":subckt

** options for hspice simulator
*.option fsdb=1
*.option opfile=1 split_dp=1

