v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 130 -220 130 -190 { lab=Vbs_12}
N 160 -220 160 -190 { lab=Vbs_12}
N 200 -220 200 -190 { lab=Vbs_34}
N 230 -220 230 -190 { lab=Vbs_34}
N 200 -220 230 -220 { lab=Vbs_34}
N 130 -220 160 -220 { lab=Vbs_12}
N 180 -90 180 -60 { lab=Isup}
N 380 -360 380 -320 { lab=Isup}
N 440 -230 480 -230 { lab=p[1]}
N 440 -190 480 -190 { lab=p[2]}
N 440 -150 480 -150 { lab=p[3]}
N 440 -110 480 -110 { lab=p[4]}
N 280 -270 320 -270 { lab=pn[0]}
N 280 -230 320 -230 { lab=pn[1]}
N 280 -190 320 -190 { lab=pn[2]}
N 280 -110 320 -110 { lab=pn[4]}
N 280 -150 320 -150 { lab=pn[3]}
N 380 -60 380 -40 { lab=GND}
N 580 -270 630 -270 { lab=VCCD}
N 710 -270 760 -270 { lab=pn[0]}
N 70 -140 100 -140 { lab=Dctrl}
N 200 -240 200 -220 { lab=Vbs_34}
N 260 -260 260 -190 { lab=VCCA}
N 440 -270 520 -270 { lab=p_osc}
N 520 -270 520 -260 { lab=p_osc}
N 520 -180 520 -140 { lab=pha_ro}
N 520 -140 530 -140 { lab=pha_ro}
N 650 -140 670 -140 { lab=pha_DCO}
N 580 -340 660 -340 { lab=VCCD}
N 620 -230 630 -230 { lab=ENB}
C {devices/lab_wire.sym} 450 -230 2 0 {name=l5 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 450 -190 2 0 {name=l6 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 450 -150 2 0 {name=l7 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 450 -110 2 0 {name=l8 sig_type=std_logic lab=p[4]}
C {devices/lab_wire.sym} 310 -270 0 0 {name=l9 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 310 -230 0 0 {name=l10 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 310 -190 0 0 {name=l11 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 310 -110 0 0 {name=l13 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 310 -150 0 0 {name=l12 sig_type=std_logic lab=pn[3]}
C {devices/lab_pin.sym} 180 -70 0 0 {name=l20 sig_type=std_logic lab=Isup}
C {devices/lab_pin.sym} 380 -340 0 0 {name=l21 sig_type=std_logic lab=Isup}
C {sky130_stdcells/einvp_1.sym} 670 -270 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 620 -270 0 0 {name=l24 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 720 -270 2 0 {name=l26 sig_type=std_logic lab=pn[0]}
C {devices/code_shown.sym} 100 10 0 0 {name=IDAC_param only_toplevel=false value=".param W_br1=1
.param L_br1=0.5
.param W_br2=2.4
.param L_br2=0.5
.param Wp_lk=4
.param Lp_lk=0.5
.param Wn_lk=2
.param Ln_lk=0.5"}
C {ring_osc.sym} 380 -190 0 0 {name=Xro_1 L12=\\"L12\\" Wp12=\\"Wp12\\" Wn12=\\"Wn12\\" L34=\\"L34\\" Wp34=\\"Wp34\\" Wn34=\\"Wn34\\"}
C {ALib_IDAC.sym} 180 -140 0 0 {name=X_idac_1
W_br1=\\"W_br1\\" L_br1=\\"L_br1\\"
W_br2=\\"W_br2\\" L_br2=\\"L_br2\\"
Wp_lk=\\"Wp_lk\\" Lp_lk=\\"Lp_lk\\"
Wn_lk=\\"Wn_lk\\" Ln_lk=\\"Wn_lk\\"
}
C {sky130_stdcells/buf_2.sym} 520 -220 1 0 {name=x2 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {DLib_freqDiv2.sym} 590 -130 0 0 {name=Xdiv2_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {devices/ipin.sym} 70 -140 0 0 {name=p1 lab=Dctrl}
C {devices/ipin.sym} 130 -220 0 0 {name=p2 lab=Vbs_12}
C {devices/ipin.sym} 200 -240 0 0 {name=p3 lab=Vbs_34}
C {devices/iopin.sym} 260 -260 2 0 {name=p4 lab=VCCA}
C {devices/gnd.sym} 380 -40 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 670 -140 0 0 {name=p5 lab=pha_DCO}
C {devices/iopin.sym} 660 -340 0 0 {name=p6 lab=VCCD}
C {devices/lab_wire.sym} 620 -340 0 0 {name=l2 sig_type=std_logic lab=VCCD}
C {devices/ipin.sym} 620 -230 0 0 {name=p7 lab=ENB}
C {devices/lab_pin.sym} 520 -140 3 0 {name=l3 sig_type=std_logic lab=pha_ro}
C {devices/code_shown.sym} 310 10 0 0 {name=RO_param only_toplevel=false value=".param L12=2
.param Wp12=5
.param Wn12=2
.param L34=2 
.param Wp34=2.5
.param Wn34=1"}
C {devices/lab_wire.sym} 460 -270 0 1 {name=l4 sig_type=std_logic lab=p_osc}
