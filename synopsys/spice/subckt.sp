* expanding   symbol:  ../lib/ALib_VCO.sym # of pins=4
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/ALib_VCO.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/ALib_VCO.sch
.subckt ALib_VCO  Anlg_in ENB VGND VNB VPB VPWR p[0]
+ L12=0.15 Wp12=2.4 Wn12=1.2 L34=0.15 Wp34=1.2 Wn34=0.65
*.ipin Anlg_in
*.iopin VPWR
*.opin p[0]
*.ipin ENB
x1 VPWR ENB VGND VNB VPB VPWR pn[0] sky130_fd_sc_hd__einvp_1
Xro_1 Vctrl VNB VPB VPWR  p[0] p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4] ring_osc L12="L12"
+ Wp12="Wp12" Wn12="Wn12" L34="L34" Wp34="Wp34" Wn34="Wn34"
R2 Vctrl GND R=200 m=1
R1 Anlg_in Vctrl R=200 m=1
.ends




* expanding   symbol:  /home/manhtd/git/mpw-three/xschem/lib/ALib_DCO.sym # of pins=7
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/ALib_DCO.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/ALib_DCO.sch
.subckt ALib_DCO Dctrl ENB Vbs_12 Vbs_34 VGND VNB VPB VCCD VCCA p_dco
+ L12=1 Wp12=4 Wn12=2   L34=1 Wp34=2 Wn34=1
+ W_br1=1 L_br1=0.5 W_br2=2.4 L_br2=0.5
+ Wp_lk=4 Lp_lk=0.5 Wn_lk=2 Ln_lk=0.5
*.ipin Dctrl
*.ipin Vbs_12
*.ipin Vbs_34
*.iopin VCCA
*.opin pha_DCO
*.iopin VCCD
*.ipin ENB
x1 VPWR ENB VGND VNB VPB VPWR pn[0] sky130_fd_sc_hd__einvp_1
Xro_1 VGND VNB VPB I_sup p_osc p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4] ring_osc L12="L12"
+ Wp12="Wp12" Wn12="Wn12" L34="L34" Wp34="Wp34" Wn34="Wn34"

X_idac_1 Dctrl Vbs_12 Vbs_12 Vbs_34 Vbs_34 VGND VCCA Isup ALib_IDAC W_br1="W_br1" L_br1="L_br1"
+ W_br2="W_br2" L_br2="L_br2" Wp_lk="Wp_lk" Lp_lk="Lp_lk" Wn_lk="Wn_lk" Ln_lk="Wn_lk"
x2 p_osc VGND VGND VCCD VCCD pha_ro sky130_fd_sc_hd__buf_2
Xdiv2_1 pha_ro VGND VGND VCCD VCCD p_dco DLib_freqDiv2
R_debug Isup I_sup R=1
.ends

* expanding   symbol:  ALib_IDAC.sym # of pins=7
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/ALib_IDAC.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/ALib_IDAC.sch
.subckt ALib_IDAC Dctrl Vbs1 Vbs2 Vbs3 Vbs4 VGND VPWR Isup   W_br1=4 L_br1=1 W_br2=4 L_br2=1 Wp_lk=4
+ Lp_lk=1 Wn_lk=2 Ln_lk=1
*.ipin Vbs3
*.ipin Vbs4
*.ipin Vbs1
*.ipin Vbs2
*.iopin VPWR
*.opin Isup
*.ipin Dctrl
XM2s_1 net2 Vbs3 VPWR pfet3_01v8_hvt_2 L="L_br2" W="W_br2"
XM2s_2 add_pwr Vbs4 net2 pfet3_01v8_hvt_2 L="L_br2" W="W_br2"
XM2s_3 Isup lock add_pwr pfet3_01v8_hvt_2 L="Lp_lk" W="Wp_lk"
XM2s_4 add_pwr open Isup nfet3_01v8_2 L="Ln_lk" W="Wn_lk"
R1 VGND net3 50k m=1
x1 open VGND VGND VPWR VPWR lock sky130_fd_sc_hd__inv_2
XM1 net1 Vbs1 VPWR VPWR sky130_fd_pr__pfet_01v8_hvt L="L_br1" W="W_br1" nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM2 Isup Vbs2 net1 net1 sky130_fd_pr__pfet_01v8_hvt L="L_br1" W="W_br1" nf=1 ad='int((nf+1)/2) * W/nf * 0.29'
+ as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)'
+ nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM2s_5 net3 open add_pwr pfet3_01v8_hvt_2 L="Lp_lk" W="Wp_lk"
XM2s_6 add_pwr lock net3 nfet3_01v8_2 L="Ln_lk" W="Wn_lk"
x2 Dctrl VGND VGND VPWR VPWR open sky130_fd_sc_hd__buf_2
.ends


* expanding   symbol:  DLib_freqDiv2.sym # of pins=2
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/DLib_freqDiv2.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/DLib_freqDiv2.sch
.subckt DLib_freqDiv2  clk  VGND  VNB  VPB  VPWR  clkDiv2
*.opin clkDiv2
*.ipin clk
x1 clk D VGND VNB VPB VPWR clkDiv2 Q_N sky130_fd_sc_hd__dfxbp_2
x2 clkinv Q_N_buf VGND VNB VPB VPWR D sky130_fd_sc_hd__dfxtp_1
x3 clk VGND VNB VPB VPWR clkinv sky130_fd_sc_hd__inv_4
x4 Q_N VGND VNB VPB VPWR Q_N_buf sky130_fd_sc_hd__buf_4
.ends

* expanding   symbol:  ring_osc.sym # of pins=12
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/ring_osc.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/ring_osc.sch
.subckt ring_osc  VGND VNB VPB VPWR p[0] p[1] p[2] p[3] p[4] pn[0] pn[1] pn[2] pn[3] pn[4]   L12=0.15
+ Wp12=2.4 Wn12=1.2 L34=0.15 Wp34=1.2 Wn34=0.65
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
Xi_1 p[4] pn[4] VGND VNB VPB VPWR p[0] pn[0] cc_inv L12="L12" Wp12="Wp12" Wn12="Wn12" L34="L34" Wp34="Wp34"
+ Wn34="Wn34"
Xi_2 p[0] pn[0] VGND VNB VPB VPWR p[1] pn[1] cc_inv L12="L12" Wp12="Wp12" Wn12="Wn12" L34="L34" Wp34="Wp34"
+ Wn34="Wn34"
Xi_3 p[1] pn[1] VGND VNB VPB VPWR p[2] pn[2] cc_inv L12="L12" Wp12="Wp12" Wn12="Wn12" L34="L34" Wp34="Wp34"
+ Wn34="Wn34"
Xi_4 p[2] pn[2] VGND VNB VPB VPWR p[3] pn[3] cc_inv L12="L12" Wp12="Wp12" Wn12="Wn12" L34="L34" Wp34="Wp34"
+ Wn34="Wn34"
Xi_5 p[3] pn[3] VGND VNB VPB VPWR p[4] pn[4] cc_inv L12="L12" Wp12="Wp12" Wn12="Wn12" L34="L34" Wp34="Wp34"
+ Wn34="Wn34"
.ends


* expanding   symbol:  cc_inv.sym # of pins=6
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/cc_inv.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/cc_inv.sch
.subckt cc_inv  inp inn VGND VNB VPB VPWR outp outn   L12=0.15 Wp12=1.2 Wn12=0.65 L34=0.15 Wp34=1.2
+ Wn34=0.65
*.opin outp
*.ipin inn
*.iopin VGND
*.opin outn
*.ipin inp
*.iopin VPWR
Xi_1 inp  VGND VNB VPB VPWR outp inv_1 L="L12" Wp="Wp12" Np=1 Wn="Wn12" Nn=1
Xi_2 inn  VGND VNB VPB VPWR outn inv_1 L="L12" Wp="Wp12" Np=1 Wn="Wn12" Nn=1
Xi_3 outp VGND VNB VPB VPWR outn inv_1 L="L34" Wp="Wp34" Np=1 Wn="Wn34" Nn=1
Xi_4 outn VGND VNB VPB VPWR outp inv_1 L="L34" Wp="Wp34" Np=1 Wn="Wn34" Nn=1
.ends


* expanding   symbol:  pfet3_01v8_hvt_2.sym # of pins=3
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/pfet3_01v8_hvt_2.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/pfet3_01v8_hvt_2.sch
.subckt pfet3_01v8_hvt_2  D G S   L=0.15 W=1
*.ipin G
*.iopin D
*.iopin S
XM1 S G D S sky130_fd_pr__pfet_01v8_hvt L="L" W="W" nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM2 D G S S sky130_fd_pr__pfet_01v8_hvt L="L" W="W" nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
.ends


* expanding   symbol:  nfet3_01v8_2.sym # of pins=3
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/nfet3_01v8_2.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/nfet3_01v8_2.sch
.subckt nfet3_01v8_2  D G S   L=0.15 W=1
*.iopin D
*.iopin G
*.iopin S
XM9 S G D S sky130_fd_pr__nfet_01v8 L="L" W="W" nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM10 D G S S sky130_fd_pr__nfet_01v8 L="L" W="W" nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
.ends


* expanding   symbol:  inv_1.sym # of pins=4
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/inv_1.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/inv_1.sch
.subckt inv_1  A VGND VNB VPB VPWR Y   L=0.15 Wp=1.2 Np=1 Wn=0.65 Nn=1
*.iopin VPWR
*.iopin VGND
*.ipin A
*.opin Y
XM1 Y A VPWR VPB sky130_fd_pr__pfet_01v8 L="L" W="Wp" nf="Np" ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
XM2 Y A VGND VNB sky130_fd_pr__nfet_01v8 L="L" W="Wn" nf="Nn" ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1 
.ends
