v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -120 260 -120 { lab=#net1}
N 220 -60 260 -60 { lab=#net2}
N 40 -120 80 -120 { lab=p[4]}
N 40 -60 80 -60 { lab=pn[4]}
N 580 -120 620 -120 { lab=#net3}
N 580 -60 620 -60 { lab=#net4}
N 400 -120 440 -120 { lab=#net5}
N 760 -120 800 -120 { lab=#net6}
N 760 -60 800 -60 { lab=pn[3]}
N 40 -200 980 -200 { lab=p[4]}
N 40 -200 40 -120 { lab=p[4]}
N 40 -60 40 20 { lab=pn[4]}
N 40 20 980 20 { lab=pn[4]}
N 150 -0 870 0 { lab=VGND}
N 870 -10 870 -0 { lab=VGND}
N 690 -10 690 -0 { lab=VGND}
N 510 -10 510 -0 { lab=VGND}
N 330 -10 330 0 { lab=VGND}
N 150 -10 150 0 { lab=VGND}
N 150 -180 870 -180 { lab=VDDA}
N 870 -180 870 -170 { lab=VDDA}
N 690 -180 690 -170 { lab=VDDA}
N 510 -180 510 -170 { lab=VDDA}
N 330 -180 330 -170 { lab=VDDA}
N 150 -180 150 -170 { lab=VDDA}
N 40 -170 70 -170 { lab=p[4]}
N 40 -10 70 -10 { lab=pn[4]}
N 940 -120 980 -120 { lab=p[4]}
N 940 -60 980 -60 { lab=pn[4]}
N 980 -200 980 -120 {
lab=p[4]}
N 980 -60 980 20 {
lab=pn[4]}
N 510 -280 510 -180 {
lab=VDDA}
N 510 0 510 120 {
lab=VGND}
N 400 -60 440 -60 {
lab=#net7}
C {devices/iopin.sym} 510 -280 0 0 {name=p1 lab=VDDA}
C {devices/iopin.sym} 510 120 0 0 {name=p2 lab=VGND}
C {devices/opin.sym} 70 -170 0 0 {name=p9 lab=p\\[4\\]}
C {devices/opin.sym} 70 -10 0 0 {name=p12 lab=pn\\[4\\]}
C {../lib/cc_inv_dco.sym} 150 -90 0 0 {name=x1}
C {../lib/cc_inv_dco.sym} 330 -90 0 0 {name=x2}
C {../lib/cc_inv_dco.sym} 510 -90 0 0 {name=x3}
C {../lib/cc_inv_dco.sym} 690 -90 0 0 {name=x4}
C {../lib/cc_inv_dco.sym} 870 -90 0 0 {name=x5}
