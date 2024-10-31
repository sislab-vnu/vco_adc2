v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -120 260 -120 { lab=p[0]}
N 220 -60 260 -60 { lab=pn[0]}
N 40 -120 80 -120 { lab=p[4]}
N 40 -60 80 -60 { lab=pn[4]}
N 580 -120 620 -120 { lab=p[2]}
N 580 -60 620 -60 { lab=pn[2]}
N 400 -120 440 -120 { lab=p[1]}
N 400 -60 440 -60 { lab=pn[1]}
N 760 -120 800 -120 { lab=p[3]}
N 760 -60 800 -60 { lab=pn[3]}
N 40 -200 40 -120 { lab=p[4]}
N 40 -60 40 20 { lab=pn[4]}
N 150 -180 870 -180 { lab=VDDA}
N 870 -180 870 -170 { lab=VDDA}
N 690 -180 690 -170 { lab=VDDA}
N 510 -180 510 -170 { lab=VDDA}
N 330 -180 330 -170 { lab=VDDA}
N 150 -180 150 -170 { lab=VDDA}
N 510 -240 510 -180 { lab=VDDA}
N 220 -170 220 -120 { lab=p[0]}
N 220 -170 230 -170 { lab=p[0]}
N 220 -60 220 -20 { lab=pn[0]}
N 220 -20 230 -20 { lab=pn[0]}
N 400 -60 400 -20 { lab=pn[1]}
N 400 -20 410 -20 { lab=pn[1]}
N 400 -170 400 -120 { lab=p[1]}
N 400 -170 410 -170 { lab=p[1]}
N 580 -170 580 -120 { lab=p[2]}
N 580 -170 590 -170 { lab=p[2]}
N 760 -170 760 -120 { lab=p[3]}
N 760 -170 770 -170 { lab=p[3]}
N 40 -170 70 -170 { lab=p[4]}
N 580 -60 580 -20 { lab=pn[2]}
N 580 -20 590 -20 { lab=pn[2]}
N 760 -60 760 -20 { lab=pn[3]}
N 760 -20 770 -20 { lab=pn[3]}
N 40 -10 70 -10 { lab=pn[4]}
N 960 -200 960 -120 { lab=p[4]}
N 940 -120 960 -120 { lab=p[4]}
N 960 -60 960 20 { lab=pn[4]}
N 940 -60 960 -60 { lab=pn[4]}
N 40 -200 960 -200 { lab=p[4]}
N 40 20 960 20 { lab=pn[4]}
N 150 -10 150 60 {
lab=VGND}
N 150 60 330 60 {
lab=VGND}
N 330 -10 330 60 {
lab=VGND}
N 330 60 510 60 {
lab=VGND}
N 510 -10 510 60 {
lab=VGND}
N 510 60 690 60 {
lab=VGND}
N 690 -10 690 60 {
lab=VGND}
N 690 60 870 60 {
lab=VGND}
N 870 -10 870 60 {
lab=VGND}
N 820 0 820 100 {
lab=VGND}
N 640 100 820 100 {
lab=VGND}
N 640 -0 640 100 {
lab=VGND}
N 460 100 640 100 {
lab=VGND}
N 460 -0 460 100 {
lab=VGND}
N 280 100 460 100 {
lab=VGND}
N 280 -0 280 100 {
lab=VGND}
N 100 100 280 100 {
lab=VGND}
N 100 0 100 100 {
lab=VGND}
N 510 60 510 140 {
lab=VGND}
N 280 100 280 140 {
lab=VGND}
C {devices/iopin.sym} 510 -240 0 0 {name=p1 lab=VDDA}
C {devices/iopin.sym} 510 140 0 0 {name=p2 lab=VGND}
C {devices/opin.sym} 230 -20 0 0 {name=p4 lab=pn\\[0\\]}
C {devices/iopin.sym} 230 -170 0 0 {name=p3 lab=p\\[0\\]}
C {devices/opin.sym} 410 -20 0 0 {name=p5 lab=pn\\[1\\]}
C {devices/opin.sym} 410 -170 0 0 {name=p6 lab=p\\[1\\]}
C {devices/opin.sym} 590 -170 0 0 {name=p7 lab=p\\[2\\]}
C {devices/opin.sym} 770 -170 0 0 {name=p8 lab=p\\[3\\]}
C {devices/opin.sym} 70 -170 0 0 {name=p9 lab=p\\[4\\]}
C {devices/opin.sym} 590 -20 0 0 {name=p10 lab=pn\\[2\\]}
C {devices/opin.sym} 770 -20 0 0 {name=p11 lab=pn\\[3\\]}
C {devices/opin.sym} 70 -10 0 0 {name=p12 lab=pn\\[4\\]}
C {cc_inv.sym} 150 -90 0 0 {name=Xi_1}
C {cc_inv.sym} 330 -90 0 0 {name=Xi_2}
C {cc_inv.sym} 510 -90 0 0 {name=Xi_3}
C {cc_inv.sym} 690 -90 0 0 {name=Xi_4}
C {cc_inv.sym} 870 -90 0 0 {name=Xi_6}
C {devices/iopin.sym} 280 140 0 0 {name=p13 lab=GND}
