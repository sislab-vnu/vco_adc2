** sch_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/system/system.sch
**.subckt system Dout CLK Anlg_in VCCD ENB GND Vbs_12 VCCA Vbs_34
*.ipin Anlg_in
*.ipin ENB
*.ipin Vbs_12
*.ipin Vbs_34
*.ipin CLK
*.ipin VCCD
*.ipin GND
*.ipin VCCA
*.opin Dout
x1 GND p_vco Anlg_in ENB VCCA VCCD VCCA vco
X_UDC_2 VCCD GND p_vco ENB FBack D1 count
x2 GND VCCD VCCA D1 ENB Vbs_12 Vbs_34 p_dco dco
X_UDC_1 VCCD GND p_dco ENB FBack D2 count
X_Qtz_1 VCCD GND CLK Dout FBack D2 qz
**.ends

* expanding   symbol:  vco.sym # of pins=7
** sym_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/vco.sym
** sch_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/vco.sch
.subckt vco GND p[4] Anlg_in ENB VCCA VCCD VPWR
*.ipin Anlg_in
*.opin p[4]
*.ipin VCCA
*.ipin VCCD
*.ipin ENB
*.ipin VPWR
*.ipin GND
x1 VCCD ENB GND GND VCCD VCCD pn[4] sky130_fd_sc_hd__einvp_1
Xro_1 VCCA GND Vctrl VPWR p[0] p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4] 5s_cc_osc
R3 Vctrl Anlg_in sky130_fd_pr__res_generic_po W=0.482 L=2 m=1
R1 GND Vctrl sky130_fd_pr__res_generic_po W=0.482 L=2 m=1
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_count/count.sym # of pins=6
** sym_path: /home/toind/work/vco_adc2/xschem/lib_count/count.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_count/count.sch
.subckt count VCCD GND UP setB DOWN Dout_buf
*.ipin DOWN
*.opin Dout_buf
*.ipin GND
*.ipin setB
*.ipin UP
*.ipin VCCD
X_inv_0 setB GND GND VCCD VCCD setBi sky130_fd_sc_hd__inv_2
X_upFF UP_buf Q2N setBi GND GND VCCD VCCD Q1 sky130_fd_sc_hd__dfstp_1
X_dwFF DWN_buf Q1_buf setBi GND GND VCCD VCCD Q2 sky130_fd_sc_hd__dfstp_1
x5 Q1 Q2 GND GND VCCD VCCD Dout sky130_fd_sc_hd__xor2_1
X_buf_3 UP GND GND VCCD VCCD UP_buf sky130_fd_sc_hd__buf_2
X_buf_4 Q1 GND GND VCCD VCCD Q1_buf sky130_fd_sc_hd__buf_2
X_buf_5 Dout GND GND VCCD VCCD Dout_buf sky130_fd_sc_hd__buf_2
X_buf_6 DOWN GND GND VCCD VCCD DWN_buf sky130_fd_sc_hd__buf_2
X_inv_1 Q2 GND GND VCCD VCCD Q2N sky130_fd_sc_hd__inv_2
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_dco/dco.sym # of pins=8
** sym_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco.sch
.subckt dco GND VCCD VCCA Dctrl ENB Vbs_12 Vbs_34 pha_DCO
*.ipin Dctrl
*.ipin Vbs_12
*.ipin Vbs_34
*.opin pha_DCO
*.ipin ENB
*.ipin VCCA
*.ipin VCCD
*.ipin GND
x1 VCCD ENB GND GND VCCD VCCD pn[4] sky130_fd_sc_hd__einvp_1
x2 p_osc GND GND VCCD VCCD pha_ro sky130_fd_sc_hd__buf_2
x3 VCCD GND VCCA Dctrl Vbs_12 Vbs_12 Vbs_34 Vbs_34 Isup dco_idac
x4 Isup GND GND Isup p[0] p[1] p[2] p[3] p_osc pn[0] pn[1] pn[2] pn[3] pn[4] dco_ring_osc
Xdiv2 pha_ro GND GND VCCD VCCD ro_div2 dco_freq
Xdiv2_1 ro_div2 GND GND VCCD VCCD pha_DCO dco_freq
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_qz/qz.sym # of pins=6
** sym_path: /home/toind/work/vco_adc2/xschem/lib_qz/qz.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_qz/qz.sch
.subckt qz VCCD GND CLK Dout FBack D
*.ipin CLK
*.ipin D
*.opin Dout
*.opin FBack
*.ipin VCCD
*.ipin GND
Xdly_1 CLK GND GND VCCD VCCD DL1 sky130_fd_sc_hd__dlygate4sd3_1
x2 CLK net1 GND GND VCCD VCCD Dout sky130_fd_sc_hd__dfxtp_1
x3 D GND GND VCCD VCCD net1 sky130_fd_sc_hd__buf_2
x4 CLK_dly Dout GND GND VCCD VCCD FBack_inv sky130_fd_sc_hd__nand2_1
x5 FBack_inv GND GND VCCD VCCD FBack sky130_fd_sc_hd__inv_2
Xdly_2 DL1 GND GND VCCD VCCD DL2 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_3 DL2 GND GND VCCD VCCD DL3 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_4 DL3 GND GND VCCD VCCD DL4 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_5 DL4 GND GND VCCD VCCD DL5 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_6 DL5 GND GND VCCD VCCD CLK_dly sky130_fd_sc_hd__dlygate4sd3_1
.ends


* expanding   symbol:  5s_cc_osc.sym # of pins=14
** sym_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/5s_cc_osc.sym
** sch_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/5s_cc_osc.sch
.subckt 5s_cc_osc VCCA GND VGND VPWR p[0] p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4]
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
*.iopin VCCA
*.iopin GND
Xi_1 VCCA VPWR p[0] p[4] pn[4] pn[0] GND VGND cc_inv
Xi_2 VCCA VPWR p[1] p[0] pn[0] pn[1] GND VGND cc_inv
Xi_3 VCCA VPWR p[2] p[1] pn[1] pn[2] GND VGND cc_inv
Xi_4 VCCA VPWR p[3] p[2] pn[2] pn[3] GND VGND cc_inv
Xi_5 VCCA VPWR p[4] p[3] pn[3] pn[4] GND VGND cc_inv
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_dco/dco_idac.sym # of pins=9
** sym_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_idac.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_idac.sch
.subckt dco_idac VCCD GND VCCA Dctrl Vbs1 Vbs2 Vbs3 Vbs4 Isup
*.ipin Vbs3
*.ipin Vbs4
*.ipin Vbs1
*.ipin Vbs2
*.opin Isup
*.ipin Dctrl
*.ipin VCCA
*.ipin GND
*.ipin VCCD
x1 open GND GND VCCD VCCD lock sky130_fd_sc_hd__inv_2
XM1 net1 Vbs1 VCCA VCCA sky130_fd_pr__pfet_01v8_hvt L=0.5 W=1.8 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM2 Isup Vbs2 net1 net1 sky130_fd_pr__pfet_01v8_hvt L=0.5 W=1.8 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
x2 Dctrl GND GND VCCD VCCD open sky130_fd_sc_hd__buf_2
XM3 net2 Vbs3 VCCA VCCA sky130_fd_pr__pfet_01v8_hvt L=0.5 W=5.4 nf=3 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 add_pwr Vbs4 net2 net2 sky130_fd_pr__pfet_01v8_hvt L=0.5 W=5.4 nf=3 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM5 Isup lock add_pwr add_pwr sky130_fd_pr__pfet_01v8_hvt L=0.5 W=8 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM6 add_pwr open Isup GND sky130_fd_pr__nfet_01v8 L=0.5 W=4 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM7 input_R open add_pwr add_pwr sky130_fd_pr__pfet_01v8_hvt L=0.5 W=8 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM8 add_pwr lock input_R GND sky130_fd_pr__nfet_01v8 L=0.5 W=4 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XR2 GND input_R GND sky130_fd_pr__res_xhigh_po_0p35 L=8.562 mult=1 m=1
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_dco/dco_ring_osc.sym # of pins=14
** sym_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_ring_osc.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_ring_osc.sch
.subckt dco_ring_osc VCCA GND VGND VPWR p[0] p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4]
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
*.iopin VCCA
*.iopin GND
x1 VCCA VPWR p[0] p[4] pn[4] pn[0] GND VGND dco_cc_inv
x2 VCCA VPWR p[1] p[0] pn[0] pn[1] GND VGND dco_cc_inv
x3 VCCA VPWR p[2] p[1] pn[1] pn[2] GND VGND dco_cc_inv
x4 VCCA VPWR p[3] p[2] pn[2] pn[3] GND VGND dco_cc_inv
x5 VCCA VPWR p[4] p[3] pn[3] pn[4] GND VGND dco_cc_inv
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_dco/dco_freq.sym # of pins=2
** sym_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_freq.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_freq.sch
.subckt dco_freq clk VGND VNB VPB VPWR clkDiv2
*.opin clkDiv2
*.ipin clk
x1 clk D VGND VNB VPB VPWR clkDiv2 Q_N sky130_fd_sc_hd__dfxbp_2
x2 clkinv Q_N_buf VGND VNB VPB VPWR D sky130_fd_sc_hd__dfxtp_1
x3 clk VGND VNB VPB VPWR clkinv sky130_fd_sc_hd__inv_4
x4 Q_N VGND VNB VPB VPWR Q_N_buf sky130_fd_sc_hd__buf_4
.ends


* expanding   symbol:  cc_inv.sym # of pins=8
** sym_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/cc_inv.sym
** sch_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/cc_inv.sch
.subckt cc_inv VCCA VPWR outp inp inn outn GND VGND
*.opin outp
*.ipin inn
*.iopin VGND
*.opin outn
*.ipin inp
*.iopin VPWR
*.iopin VCCA
*.iopin GND
Xi_1 VPWR VCCA outp GND VGND inp main_inv
Xi_2 VPWR VCCA outn GND VGND inn main_inv
Xi_3 VPWR VCCA outp outn GND VGND aux_inv
Xi_4 VPWR VCCA outn outp GND VGND aux_inv
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_dco/dco_cc_inv.sym # of pins=8
** sym_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_cc_inv.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_cc_inv.sch
.subckt dco_cc_inv VCCA VPWR outp inp inn outn GND VGND
*.opin outp
*.ipin inn
*.iopin VGND
*.opin outn
*.ipin inp
*.iopin VPWR
*.iopin VCCA
*.iopin GND
x1 VPWR VCCA outp GND VGND inp dco_main_inv
x2 VPWR VCCA outn GND VGND inn dco_main_inv
x3 VPWR VCCA outp outn GND VGND dco_aux_inv
x4 VPWR VCCA outn outp GND VGND dco_aux_inv
.ends


* expanding   symbol:  main_inv.sym # of pins=6
** sym_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/main_inv.sym
** sch_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/main_inv.sch
.subckt main_inv VPWR VCCA Y GND VGND A
*.iopin VPWR
*.iopin VGND
*.ipin A
*.opin Y
*.iopin VCCA
*.iopin GND
XM3 Y A VGND GND sky130_fd_pr__nfet_01v8 L=3.65 W=8 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 Y A VPWR VCCA sky130_fd_pr__pfet_01v8 L=3.65 W=10 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
.ends


* expanding   symbol:  aux_inv.sym # of pins=6
** sym_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/aux_inv.sym
** sch_path: /home/toind/work/sislab_vnu/vco_adc2/xschem/lib/aux_inv.sch
.subckt aux_inv VPWR VCCA A Y GND VGND
*.iopin VPWR
*.iopin VGND
*.ipin A
*.opin Y
*.iopin VCCA
*.iopin GND
XM3 Y A VGND GND sky130_fd_pr__nfet_01v8 L=3.65 W=4 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 Y A VPWR VCCA sky130_fd_pr__pfet_01v8 L=3.65 W=5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_dco/dco_main_inv.sym # of pins=6
** sym_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_main_inv.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_main_inv.sch
.subckt dco_main_inv VPWR VCCA Y GND VGND A
*.iopin VPWR
*.iopin VGND
*.ipin A
*.opin Y
*.iopin VCCA
*.iopin GND
XM3 Y A VGND GND sky130_fd_pr__nfet_01v8 L=1 W=4 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 Y A VPWR VCCA sky130_fd_pr__pfet_01v8 L=1 W=6 nf=2 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
.ends


* expanding   symbol:  /home/toind/work/vco_adc2/xschem/lib_dco/dco_aux_inv.sym # of pins=6
** sym_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_aux_inv.sym
** sch_path: /home/toind/work/vco_adc2/xschem/lib_dco/dco_aux_inv.sch
.subckt dco_aux_inv VPWR VCCA A Y GND VGND
*.iopin VPWR
*.iopin VGND
*.ipin A
*.opin Y
*.iopin VCCA
*.iopin GND
XM3 Y A VGND GND sky130_fd_pr__nfet_01v8 L=1 W=2 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 Y A VPWR VCCA sky130_fd_pr__pfet_01v8 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
.ends

.end
