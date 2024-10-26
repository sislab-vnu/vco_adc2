v {xschem version=3.4.5 file_version=1.2
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
N 150 -180 870 -180 { lab=VPWR}
N 870 -180 870 -170 { lab=VPWR}
N 690 -180 690 -170 { lab=VPWR}
N 510 -180 510 -170 { lab=VPWR}
N 330 -180 330 -170 { lab=VPWR}
N 150 -180 150 -170 { lab=VPWR}
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
N 940 -120 980 -120 { lab=p[4]}
N 940 -60 980 -60 { lab=pn[4]}
N 980 -200 980 -120 {
lab=p[4]}
N 980 -60 980 20 {
lab=pn[4]}
N 115 -240 115 -170 {
lab=VCCA}
N 115 -240 835 -240 {
lab=VCCA}
N 835 -240 835 -170 {
lab=VCCA}
N 655 -240 655 -170 {
lab=VCCA}
N 510 -280 510 -180 {
lab=VPWR}
N 475 -240 475 -170 {
lab=VCCA}
N 295 -240 295 -170 {
lab=VCCA}
N 115 -10 115 60 {
lab=GND}
N 835 -10 835 60 {
lab=GND}
N 115 60 835 60 {
lab=GND}
N 510 0 510 120 {
lab=VGND}
N 295 -10 295 60 {
lab=GND}
N 475 -10 475 60 {
lab=GND}
N 655 -10 655 60 {
lab=GND}
N 475 60 475 120 {
lab=GND}
N 475 -280 475 -240 {
lab=VCCA}
C {devices/iopin.sym} 510 -280 0 0 {name=p1 lab=VPWR}
C {devices/iopin.sym} 510 120 0 0 {name=p2 lab=VGND}
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
C {devices/iopin.sym} 475 -280 2 0 {name=p13 lab=VCCA}
C {devices/iopin.sym} 475 120 2 0 {name=p14 lab=GND}
C {/home/toind/work/sislab_vnu/vco_adc2/xschem/lib_vco/vco_cc_inv.sym} 130 -90 0 0 {name=x6}
C {/home/toind/work/sislab_vnu/vco_adc2/xschem/lib_vco/vco_cc_inv.sym} 310 -90 0 0 {name=x1}
C {/home/toind/work/sislab_vnu/vco_adc2/xschem/lib_vco/vco_cc_inv.sym} 490 -90 0 0 {name=x2}
C {/home/toind/work/sislab_vnu/vco_adc2/xschem/lib_vco/vco_cc_inv.sym} 670 -90 0 0 {name=x3}
C {/home/toind/work/sislab_vnu/vco_adc2/xschem/lib_vco/vco_cc_inv.sym} 850 -90 0 0 {name=x4}
