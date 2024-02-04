v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 0 -440 -0 -0 {}
L 4 -0 -440 420 -440 {}
L 4 420 -440 420 0 {}
L 4 -0 0 420 0 {}
N 100 -350 140 -350 { lab=pn[0]}
N 100 -310 140 -310 { lab=pn[1]}
N 100 -270 140 -270 { lab=pn[2]}
N 100 -230 140 -230 { lab=pn[3]}
N 100 -190 140 -190 { lab=pn[4]}
N 260 -350 300 -350 { lab=p[0]}
N 260 -310 300 -310 { lab=p[1]}
N 260 -270 300 -270 { lab=p[2]}
N 260 -230 300 -230 { lab=p[3]}
N 260 -190 300 -190 { lab=p[4]}
N 365 -70 405 -70 { lab=pn[0]}
N 260 -30 285 -30 { lab=ENB}
N 130 -120 130 -100 { lab=Vctrl}
N 110 -120 130 -120 { lab=Vctrl}
N 30 -120 50 -120 { lab=Anlg_in}
N 30 -120 30 -100 { lab=Anlg_in}
N 130 -120 200 -120 { lab=Vctrl}
N 200 -140 200 -120 { lab=Vctrl}
N 200 -430 200 -400 {
lab=VCCA}
N 255 -70 285 -70 {
lab=VCCD}
C {devices/lab_wire.sym} 130 -350 0 0 {name=l1 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 130 -310 0 0 {name=l2 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 130 -270 0 0 {name=l3 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 130 -230 0 0 {name=l4 sig_type=std_logic lab=pn[3]}
C {devices/lab_wire.sym} 130 -190 0 0 {name=l5 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 270 -350 2 0 {name=l6 sig_type=std_logic lab=p[0]}
C {devices/lab_wire.sym} 270 -310 2 0 {name=l7 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 270 -270 2 0 {name=l8 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 270 -230 2 0 {name=l9 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 270 -190 2 0 {name=l10 sig_type=std_logic lab=p[4]}
C {devices/lab_wire.sym} 170 -120 0 0 {name=l12 sig_type=std_logic lab=Vctrl}
C {sky130_stdcells/einvp_1.sym} 325 -70 0 0 {name=x1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 375 -70 2 0 {name=l21 sig_type=std_logic lab=pn[0]}
C {devices/lab_pin.sym} 255 -70 0 0 {name=l16 sig_type=std_logic lab=VCCD}
C {devices/res.sym} 130 -70 0 0 {name=R2
value=R=200
footprint=1206
device=resistor}
C {devices/res.sym} 80 -120 3 0 {name=R1
value=R=200
footprint=1206
device=resistor}
C {devices/ipin.sym} 30 -100 3 0 {name=p1 lab=Anlg_in}
C {devices/gnd.sym} 130 -40 0 0 {name=l11 lab=GND}
C {devices/opin.sym} 300 -350 0 0 {name=p3 lab=p[0]}
C {devices/ipin.sym} 260 -30 0 0 {name=p4 lab=ENB}
C {5s_cc_osc.sym} 200 -270 0 0 {name=Xro_1 l_main=l_main l_aux=l_aux wp=wp wn=wn}
C {devices/lab_pin.sym} 200 -420 0 0 {name=p2 sig_type=std_logic lab=VCCA}
