v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 0 -440 0 0 {}
L 4 115 -440 535 -440 {}
L 4 535 -440 535 0 {}
L 4 115 0 535 0 {}
L 4 0 -440 115 -440 {}
L 4 0 0 120 0 {}
N 215 -350 255 -350 { lab=pn[0]}
N 215 -310 255 -310 { lab=pn[1]}
N 215 -270 255 -270 { lab=pn[2]}
N 215 -230 255 -230 { lab=pn[3]}
N 375 -350 415 -350 { lab=p[0]}
N 375 -310 415 -310 { lab=p[1]}
N 375 -270 415 -270 { lab=p[2]}
N 375 -230 415 -230 { lab=p[3]}
N 375 -190 415 -190 { lab=p[4]}
N 160 -190 200 -190 { lab=pn[4]}
N 55 -150 80 -150 { lab=ENB}
N 245 -120 245 -100 { lab=Vctrl}
N 225 -120 245 -120 { lab=Vctrl}
N 145 -120 165 -120 { lab=Anlg_in}
N 145 -120 145 -100 { lab=Anlg_in}
N 245 -120 315 -120 { lab=Vctrl}
N 335 -140 335 -120 { lab=Vctrl}
N 315 -120 335 -120 {
lab=Vctrl}
N 245 -40 245 -20 {
lab=GND}
N 245 -20 275 -20 {
lab=GND}
N 275 -20 295 -20 {
lab=GND}
N 295 -140 295 -20 {
lab=GND}
N 55 -190 80 -190 {
lab=VCCD}
N 295 -430 295 -400 {
lab=VCCA}
N 335 -430 335 -400 {
lab=VPWR}
N 200 -190 220 -190 {
lab=pn[4]}
N 220 -190 245 -190 {
lab=pn[4]}
N 245 -190 255 -190 {
lab=pn[4]}
C {devices/lab_wire.sym} 245 -350 0 0 {name=l1 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 245 -310 0 0 {name=l2 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 245 -270 0 0 {name=l3 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 245 -230 0 0 {name=l4 sig_type=std_logic lab=pn[3]}
C {devices/lab_wire.sym} 245 -190 0 0 {name=l5 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 385 -350 2 0 {name=l6 sig_type=std_logic lab=p[0]}
C {devices/lab_wire.sym} 385 -310 2 0 {name=l7 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 385 -270 2 0 {name=l8 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 385 -230 2 0 {name=l9 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 385 -190 2 0 {name=l10 sig_type=std_logic lab=p[4]}
C {devices/lab_wire.sym} 285 -120 0 0 {name=l12 sig_type=std_logic lab=Vctrl}
C {sky130_stdcells/einvp_1.sym} 120 -190 0 0 {name=x1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 145 -100 3 0 {name=p1 lab=Anlg_in}
C {devices/gnd.sym} 275 -20 0 0 {name=l11 lab=GND}
C {devices/opin.sym} 415 -190 0 0 {name=p3 lab=p[4]}
C {5s_cc_osc.sym} 315 -270 0 0 {name=Xro_1 l_main=l_main l_aux=l_aux wp=wp wn=wn}
C {devices/ipin.sym} 295 -430 0 0 {name=p2 lab=VCCA}
C {devices/ipin.sym} 55 -190 0 0 {name=p5 lab=VCCD}
C {devices/ipin.sym} 55 -150 0 0 {name=p4 lab=ENB}
C {devices/ipin.sym} 335 -430 2 0 {name=p6 lab=VPWR}
C {sky130_fd_pr/res_generic_po.sym} 195 -120 3 0 {name=R3
W=0.482
L=2
model=res_generic_po
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 245 -70 0 0 {name=R1
W=0.482
L=2
model=res_generic_po
mult=1}
