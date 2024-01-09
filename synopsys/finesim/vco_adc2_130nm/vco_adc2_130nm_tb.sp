** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/tb/VCO_ADC_tb.sch

.include /home/dkits/openpdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.lib /home/dkits/openpdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

**.subckt VCO_ADC_tb
Vbs_34 Vbs_34 GND DC=0
VCCA VCCA GND DC=1.8
VCCD VCCD GND DC=1.8
Vin Anlg_in GND DC=0 SIN(0.5 "v_sin" "sig_freq" 0u 0 0)
Venb ENB GND DC=0 PULSE( 0 1.8 0 20n 20n 200n 1 )
Vclk CLK GND DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20.73n 41.67n )
Vbs_12 Vbs_12 GND DC=0.4
Xdco_1 D1 ENB Vbs_12 Vbs_34 VCCD VCCA p_dco ALib_DCO
Xvco_1 VCCA p_vco Anlg_in ENB ALib_VCO l_main=l_main l_aux=l_aux wp=wp wn=wn
X_UDC_1 p_vco FBack ENB GND GND VCCD VCCD D1 DLib_UpDownCounter
X_Qtz_1 CLK D2 GND GND VCCD VCCD Dout FBack DLib_Quantizer
X_UDC_2 p_dco FBack ENB GND GND VCCD VCCD D2 DLib_UpDownCounter
**.ends

* expanding   symbol:  ALib_DCO.sym # of pins=7
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/ALib_DCO.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/ALib_DCO.sch
.subckt ALib_DCO Dctrl ENB Vbs_12 Vbs_34 VCCD VCCA pha_DCO
*.ipin Dctrl
*.ipin Vbs_12
*.ipin Vbs_34
*.iopin VCCA
*.opin pha_DCO
*.iopin VCCD
*.ipin ENB
x1 VCCD ENB GND GND VDD VDD pn[0] sky130_fd_sc_hd__einvp_1
X_idac_1 Dctrl Vbs_12 Vbs_12 Vbs_34 Vbs_34 VCCA Isup ALib_IDAC W_br1="W_br1" L_br1="L_br1"
+ W_br2="W_br2" L_br2="L_br2" Wp_lk="Wp_lk" Lp_lk="Lp_lk" Wn_lk="Wn_lk" Ln_lk="Wn_lk"
x2 p_osc GND GND VCCD VCCD pha_ro sky130_fd_sc_hd__buf_2
Xdiv2_1 pha_ro GND GND VCCD VCCD ro_div2 DLib_freqDiv2
Xro_1 GND Isup p_osc p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4] 5s_cc_osc l_main=l_main
+ l_aux=l_aux wp=wp wn=wn
**** begin user architecture code


.param W_br1=2
.param L_br1=0.5
.param W_br2=1.6
.param L_br2=0.5
.param Wp_lk=4
.param Lp_lk=0.5
.param Wn_lk=2
.param Ln_lk=0.5

**** end user architecture code
**** begin user architecture code


.param l_main=1.2
.param l_aux=1.2
.param wp=3
.param wn=2

**** end user architecture code
Xdiv1 ro_div2 GND GND VCCD VCCD pha_DCO DLib_freqDiv2
.ends


* expanding   symbol:  ALib_VCO.sym # of pins=4
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/ALib_VCO.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/ALib_VCO.sch
.subckt ALib_VCO VPWR p[0] Anlg_in ENB  l_main=0.15 l_aux=0.15 wp=1 wn=0.6
*.ipin Anlg_in
*.iopin VPWR
*.opin p[0]
*.ipin ENB
x1 VDD ENB GND GND VDD VDD pn[0] sky130_fd_sc_hd__einvp_1
R2 Vctrl GND R=200 m=1
R1 Anlg_in Vctrl R=200 m=1
Xro_1 Vctrl VPWR p[0] p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4] 5s_cc_osc l_main=l_main
+ l_aux=l_aux wp=wp wn=wn
.ends


* expanding   symbol:  DLib_UpDownCounter.sym # of pins=4
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/DLib_UpDownCounter.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/DLib_UpDownCounter.sch
.subckt DLib_UpDownCounter UP DOWN setB VGND VNB VPB VPWR Dout_buf
*.ipin DOWN
*.opin Dout_buf
*.ipin UP
*.ipin setB
X_inv_0 setB VGND VNB VPB VPWR setBi sky130_fd_sc_hd__inv_2
X_upFF UP_buf Q2N setBi VGND VNB VPB VPWR Q1 sky130_fd_sc_hd__dfstp_1
X_dwFF DWN_buf Q1_buf setBi VGND VNB VPB VPWR Q2 sky130_fd_sc_hd__dfstp_1
x5 Q1 Q2 VGND VNB VPB VPWR Dout sky130_fd_sc_hd__xor2_1
X_buf_3 UP VGND VNB VPB VPWR UP_buf sky130_fd_sc_hd__buf_2
X_buf_4 Q1 VGND VNB VPB VPWR Q1_buf sky130_fd_sc_hd__buf_2
X_buf_5 Dout VGND VNB VPB VPWR Dout_buf sky130_fd_sc_hd__buf_2
X_buf_6 DOWN VGND VNB VPB VPWR DWN_buf sky130_fd_sc_hd__buf_2
X_inv_1 Q2 VGND VNB VPB VPWR Q2N sky130_fd_sc_hd__inv_2
.ends


* expanding   symbol:  DLib_Quantizer.sym # of pins=4
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/DLib_Quantizer.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/DLib_Quantizer.sch
.subckt DLib_Quantizer CLK D VGND VNB VPB VPWR Dout FBack
*.ipin CLK
*.ipin D
*.opin Dout
*.opin FBack
Xdly_1 CLK VGND VNB VPB VPWR DL1 sky130_fd_sc_hd__dlygate4sd3_1
x2 CLK net1 VGND VNB VPB VPWR Dout sky130_fd_sc_hd__dfxtp_1
x3 D VGND VNB VPB VPWR net1 sky130_fd_sc_hd__buf_2
x4 CLK_dly Dout VGND VNB VPB VPWR FBack_inv sky130_fd_sc_hd__nand2_1
x5 FBack_inv VGND VNB VPB VPWR FBack sky130_fd_sc_hd__inv_2
Xdly_2 DL1 VGND VNB VPB VPWR DL2 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_3 DL2 VGND VNB VPB VPWR DL3 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_4 DL3 VGND VNB VPB VPWR DL4 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_5 DL4 VGND VNB VPB VPWR DL5 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_6 DL5 VGND VNB VPB VPWR CLK_dly sky130_fd_sc_hd__dlygate4sd3_1
.ends


* expanding   symbol:  ALib_IDAC.sym # of pins=7
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/ALib_IDAC.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/ALib_IDAC.sch
.subckt ALib_IDAC Dctrl Vbs1 Vbs2 Vbs3 Vbs4 VPWR Isup  W_br1=4 L_br1=1 W_br2=4 L_br2=1 Wp_lk=4
+ Lp_lk=1 Wn_lk=2 Ln_lk=1
*.ipin Vbs3
*.ipin Vbs4
*.ipin Vbs1
*.ipin Vbs2
*.iopin VPWR
*.opin Isup
*.ipin Dctrl
R1 GND net3 50k m=1
x1 open GND GND VPWR VPWR lock sky130_fd_sc_hd__inv_2
XM1 net1 Vbs1 VPWR VPWR sky130_fd_pr__pfet_01v8_hvt L="L_br1" W="W_br1" nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM2 Isup Vbs2 net1 net1 sky130_fd_pr__pfet_01v8_hvt L="L_br1" W="W_br1" nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
x2 Dctrl GND GND VPWR VPWR open sky130_fd_sc_hd__buf_2
XM3 net2 Vbs3 VPWR VPWR sky130_fd_pr__pfet_01v8_hvt L=L_br2 W="3*W_br2" nf=3 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 add_pwr Vbs4 net2 net2 sky130_fd_pr__pfet_01v8_hvt L=L_br2 W="3*W_br2" nf=3 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM5 Isup lock add_pwr add_pwr sky130_fd_pr__pfet_01v8_hvt L=Lp_lk W="2*Wp_lk" nf=2 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM6 add_pwr open Isup Isup sky130_fd_pr__nfet_01v8 L=Ln_lk W="2*Wn_lk" nf=2 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM7 net3 open add_pwr add_pwr sky130_fd_pr__pfet_01v8_hvt L=Lp_lk W="2*Wp_lk" nf=2 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM8 add_pwr lock net3 net3 sky130_fd_pr__nfet_01v8 L=Ln_lk W="2*Wn_lk" nf=2 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
.ends


* expanding   symbol:  DLib_freqDiv2.sym # of pins=2
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/DLib_freqDiv2.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/DLib_freqDiv2.sch
.subckt DLib_freqDiv2 clk VGND VNB VPB VPWR clkDiv2
*.opin clkDiv2
*.ipin clk
x1 clk D VGND VNB VPB VPWR clkDiv2 Q_N sky130_fd_sc_hd__dfxbp_2
x2 clkinv Q_N_buf VGND VNB VPB VPWR D sky130_fd_sc_hd__dfxtp_1
x3 clk VGND VNB VPB VPWR clkinv sky130_fd_sc_hd__inv_4
x4 Q_N VGND VNB VPB VPWR Q_N_buf sky130_fd_sc_hd__buf_4
.ends


* expanding   symbol:  5s_cc_osc.sym # of pins=12
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/5s_cc_osc.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/5s_cc_osc.sch
.subckt 5s_cc_osc VGND VPWR p[0] p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4]  l_main=0.15
+ l_aux=0.15 wp=1 wn=0.6
*.iopin VPWR
*.iopin VGND
*.opin pn[0]
*.iopin p[0]
*.opin pn[1]
*.opin p[1]
*.opin p[2]
*.opin p[3]
*.opin p[4]
*.opin pn[2]
*.opin pn[3]
*.opin pn[4]
Xi_1 p[4] pn[4] VPWR VGND p[0] pn[0] cc_inv l_main=l_main l_aux=l_aux wp=wp wn=wn
Xi_2 p[0] pn[0] VPWR VGND p[1] pn[1] cc_inv l_main=l_main l_aux=l_aux wp=wp wn=wn
Xi_3 p[1] pn[1] VPWR VGND p[2] pn[2] cc_inv l_main=l_main l_aux=l_aux wp=wp wn=wn
Xi_4 p[2] pn[2] VPWR VGND p[3] pn[3] cc_inv l_main=l_main l_aux=l_aux wp=wp wn=wn
Xi_5 p[3] pn[3] VPWR VGND p[4] pn[4] cc_inv l_main=l_main l_aux=l_aux wp=wp wn=wn
.ends


* expanding   symbol:  cc_inv.sym # of pins=6
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/cc_inv.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/cc_inv.sch
.subckt cc_inv inp inn VPWR VGND outp outn  l_main=0.15 l_aux=0.15 wp=1.2 wn=0.6
*.opin outp
*.ipin inn
*.iopin VGND
*.opin outn
*.ipin inp
*.iopin VPWR
Xi_1 inp VPWR VGND outp main_inv l=l_main wp=wp wn=wn
Xi_2 inn VPWR VGND outn main_inv l=l_main wp=wp wn=wn
Xi_3 outp VPWR VGND outn aux_inv l=l_aux Wp=wp wn=wn
Xi_4 outn VPWR VGND outp aux_inv l=l_aux Wp=wp wn=wn
.ends


* expanding   symbol:  main_inv.sym # of pins=4
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/main_inv.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/main_inv.sch
.subckt main_inv A VPWR VGND Y  l=0.15 wp=1.2 wn=0.6
*.iopin VPWR
*.iopin VGND
*.ipin A
*.opin Y
XM1 Y A VPWR VDD sky130_fd_pr__pfet_01v8 L="l" W="2*wp" nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 Y A VGND GND sky130_fd_pr__nfet_01v8 L="l" W="2*wn" nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
.ends


* expanding   symbol:  aux_inv.sym # of pins=4
** sym_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/aux_inv.sym
** sch_path: /home/userdata/k61D/manhtd_61d/git/mpw-three/xschem/lib/aux_inv.sch
.subckt aux_inv A VPWR VGND Y  l=0.15 wp=1.2 wn=0.6
*.iopin VPWR
*.iopin VGND
*.ipin A
*.opin Y
XM1 Y A VPWR VDD sky130_fd_pr__pfet_01v8 L="l" W="wp" nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 Y A VGND GND sky130_fd_pr__nfet_01v8 L="L" W="Wn" nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
.ends

**** begin user architecture code


.param l_main=3.65
.param l_aux=3.65
.param wp=5
.param wn=4

.GLOBAL GND
.option parhier=local
.param mc_mm_switch=0
.param v_sin=0.25
.param sig_freq=5k
*.param dco_d1=0


** control simulation lines
.probe tran v(p_vco) v(p_dco) v(xdco_1.p_osc) v(xdco_1.pha_ro) v(xdco_1.p_dco)
+ v(xdco_1.Isup) i(xdco_1.R_debug)
+ v(d1) v(d2) v(dout) v(clk) v(fback) v(p_vco_buf) v(anlg_in)
+ i(vcca) i(vccd) i(R_debug)

.print v(clk) v(dout) v(anlg_in)

.tran 1n 0.5m start=0 $  sweep vin 0 1.0 0.1

.measure tran prd trig v(p_vco) val=0.8 rise=10 targ v(p_vco) val=0.8 rise=20
.measure tran freq_v param='10/prd'
.measure tran prd1 trig v(p_dco) val=0.8 rise=10 targ v(p_dco) val=0.8 rise=40
.measure tran freq_d param='30/prd1'
.measure tran I_analog avg i(vcca) from=0.1m to=1.1m
*.measure tran I_analog1 avg i(vcca1) from=0.1m to=1.1m
.measure tran I_digital avg i(vccd) from=0.1m to=1.1m
.measure tran A_power param='I_analog*1.8' 
*.measure tran A_power1 param='I_analog1*1.8' 
.measure tran D_power param='I_digital*1.8' 
** options for finesim simulator
.option finesim_fsdb_version=5.6
.option finesim_output=fsdb
.option finesim_mode=spicead:p
.option finesim_mode="dlib*:promd":subckt
.option runlvl=7
*.option accurate=1
*.option finesim_mode="alib_vco:spicehd":subckt
*.option finesim_mode=prohd

** options for hspice simulator
*.option fsdb=1
*.option opfile=1 split_dp=1

**** end user architecture code
.end
