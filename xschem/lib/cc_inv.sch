v {xschem version=3.4.4 file_version=1.2
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
N 160 -210 160 -170 { lab=VDDA}
N 160 -110 160 -70 { lab=VGND}
N 160 -270 160 -230 { lab=VGND}
N 360 -20 420 -20 { lab=VGND}
N 190 -410 250 -410 { lab=VDDA}
N 150 -30 210 -30 { lab=GND}
N 140 -260 140 -220 { lab=GND}
N 140 -100 140 -60 { lab=GND}
N 140 -100 140 -60 { lab=GND}
N 240 -180 240 -60 { lab=GND}
N 360 -180 360 -60 { lab=GND}
N 160 -380 260 -380 {
lab=VDDA}
N 260 -380 380 -380 {
lab=VDDA}
N 140 -60 240 -60 {
lab=GND}
N 240 -60 360 -60 {
lab=GND}
N 160 -70 260 -70 {
lab=VGND}
N 260 -70 380 -70 {
lab=VGND}
C {devices/lab_wire.sym} 90 -300 0 0 {name=l9 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 90 -140 0 0 {name=l1 sig_type=std_logic lab=inn}
C {devices/lab_wire.sym} 450 -300 0 0 {name=l10 sig_type=std_logic lab=outp}
C {devices/lab_wire.sym} 450 -140 0 0 {name=l11 sig_type=std_logic lab=outn}
C {devices/opin.sym} 460 -300 0 0 {name=p1 lab=outp}
C {devices/ipin.sym} 60 -140 0 0 {name=p2 lab=inn}
C {devices/iopin.sym} 420 -20 0 0 {name=p3 lab=VGND}
C {devices/opin.sym} 460 -140 0 0 {name=p4 lab=outn}
C {devices/ipin.sym} 60 -300 0 0 {name=p5 lab=inp}
C {devices/iopin.sym} 250 -410 0 0 {name=p6 lab=VDDA}
C {main_inv.sym} 160 -300 0 0 {name=Xi_1}
C {main_inv.sym} 160 -140 0 0 {name=Xi_2}
C {aux_inv.sym} 260 -220 0 0 {name=Xi_3}
C {aux_inv.sym} 380 -220 0 0 {name=Xi_4}
C {devices/lab_pin.sym} 190 -410 0 0 {name=l3 sig_type=std_logic lab=VDDA}
C {devices/iopin.sym} 150 -30 2 0 {name=p7 lab=GND}
C {devices/lab_pin.sym} 160 -380 0 0 {name=l2 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 160 -180 0 0 {name=l4 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 140 -240 0 0 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 140 -60 0 0 {name=l6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 160 -250 2 0 {name=l7 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 260 -100 2 0 {name=l8 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 210 -30 2 0 {name=l12 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 360 -20 0 0 {name=l13 sig_type=std_logic lab=VGND}
