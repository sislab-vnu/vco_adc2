v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 0 -440 0 0 {}
L 4 320 -440 320 0 {}
L 4 0 0 320 0 {}
L 4 0 -460 0 -440 {}
L 4 0 -460 320 -460 {}
L 4 320 -460 320 -440 {}
N 55 -350 95 -350 { lab=pn[0]}
N 55 -310 95 -310 { lab=pn[1]}
N 55 -270 95 -270 { lab=pn[2]}
N 55 -230 95 -230 { lab=pn[3]}
N 215 -350 255 -350 { lab=p[0]}
N 215 -310 255 -310 { lab=p[1]}
N 215 -270 255 -270 { lab=p[2]}
N 215 -230 255 -230 { lab=p[3]}
N 215 -190 255 -190 { lab=p[4]}
N 135 -430 135 -400 {
lab=VCCA}
N 175 -430 175 -400 {
lab=VPWR}
N 55 -190 95 -190 { lab=pn[4]}
N 135 -140 135 -120 {
lab=GND}
N 135 -120 175 -120 {
lab=GND}
N 175 -140 175 -120 {
lab=GND}
N 155 -120 155 -95 {
lab=GND}
C {devices/lab_wire.sym} 85 -350 0 0 {name=l1 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 85 -310 0 0 {name=l2 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 85 -270 0 0 {name=l3 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 85 -230 0 0 {name=l4 sig_type=std_logic lab=pn[3]}
C {devices/lab_wire.sym} 85 -190 0 0 {name=l5 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 225 -350 2 0 {name=l6 sig_type=std_logic lab=p[0]}
C {devices/lab_wire.sym} 225 -310 2 0 {name=l7 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 225 -270 2 0 {name=l8 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 225 -230 2 0 {name=l9 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 225 -190 2 0 {name=l10 sig_type=std_logic lab=p[4]}
C {5s_cc_osc.sym} 155 -270 0 0 {name=Xro_1 l_main=l_main l_aux=l_aux wp=wp wn=wn}
C {devices/ipin.sym} 135 -430 0 0 {name=p2 lab=VCCA}
C {devices/ipin.sym} 175 -430 2 0 {name=p6 lab=VPWR}
C {devices/gnd.sym} 155 -95 0 0 {name=l11 lab=GND}
