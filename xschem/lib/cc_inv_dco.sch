v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -0 -460 0 0 {}
L 4 0 -460 540 -460 {}
L 4 540 -460 540 -0 {}
L 4 -0 0 540 -0 {}
N 60 -300 120 -300 { lab=inp}
N 60 -140 120 -140 { lab=inn}
N 200 -300 460 -300 { lab=outp}
N 200 -140 460 -140 { lab=outn}
N 220 -300 220 -220 { lab=outp}
N 300 -220 300 -140 { lab=outn}
N 340 -220 340 -140 { lab=outn}
N 420 -300 420 -220 { lab=outp}
N 260 -380 260 -250 { lab=VDDA}
N 380 -380 380 -250 { lab=VDDA}
N 260 -190 260 -70 { lab=VGND}
N 380 -190 380 -70 { lab=VGND}
N 160 -380 160 -330 { lab=VDDA}
N 160 -210 160 -170 { lab=#net1}
N 160 -110 160 -70 { lab=VGND}
N 160 -270 160 -230 { lab=VGND}
N 270 -30 330 -30 { lab=VGND}
N 140 -430 220 -430 {
lab=VDDA}
C {devices/lab_pin.sym} 160 -340 2 0 {name=l2 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 380 -340 2 0 {name=l3 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 160 -90 2 0 {name=l5 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 260 -90 2 0 {name=l6 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 380 -90 2 0 {name=l7 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 160 -250 2 0 {name=l8 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 90 -300 0 0 {name=l9 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 90 -140 0 0 {name=l1 sig_type=std_logic lab=inn}
C {devices/lab_wire.sym} 450 -300 0 0 {name=l10 sig_type=std_logic lab=outp}
C {devices/lab_wire.sym} 450 -140 0 0 {name=l11 sig_type=std_logic lab=outn}
C {devices/opin.sym} 460 -300 0 0 {name=p1 lab=outp}
C {devices/ipin.sym} 60 -140 0 0 {name=p2 lab=inn}
C {devices/iopin.sym} 330 -30 0 0 {name=p3 lab=VGND}
C {devices/opin.sym} 460 -140 0 0 {name=p4 lab=outn}
C {devices/ipin.sym} 60 -300 0 0 {name=p5 lab=inp}
C {devices/lab_wire.sym} 310 -30 0 0 {name=l13 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 260 -340 2 0 {name=l14 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 200 -430 0 0 {name=p14 sig_type=std_logic lab=VDDA}
C {devices/iopin.sym} 140 -430 2 0 {name=p15 lab=VDDA}
C {../lib/main_inv_dco.sym} 160 -300 0 0 {name=x1}
C {../lib/main_inv_dco.sym} 160 -140 0 0 {name=x2}
C {../lib/aux_inv_dco.sym} 260 -220 0 0 {name=x3}
C {../lib/aux_inv_dco.sym} 380 -220 0 0 {name=x4}
C {devices/lab_pin.sym} 160 -190 2 0 {name=l4 sig_type=std_logic lab=VDDA}
