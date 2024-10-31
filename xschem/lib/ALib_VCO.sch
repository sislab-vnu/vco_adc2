v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 720 -480 780 -480 {
lab=#net1}
N 780 -525 780 -480 {
lab=#net1}
N 780 -480 780 -440 {
lab=#net1}
N 600 -480 660 -480 {
lab=Anlg_in}
N 780 -375 780 -345 {
lab=GND}
N 640 -580 700 -580 {
lab=pn[4]}
N 640 -620 700 -620 {
lab=pn[3]}
N 640 -660 700 -660 {
lab=pn[2]}
N 640 -700 700 -700 {
lab=pn[1]}
N 640 -740 700 -740 {
lab=pn[0]}
N 820 -580 880 -580 {
lab=p[4]}
N 820 -620 880 -620 {
lab=p[3]}
N 820 -660 880 -660 {
lab=p[2]}
N 820 -700 880 -700 {
lab=p[1]}
N 820 -740 880 -740 {
lab=p[0]}
N 760 -840 760 -790 {
lab=VDDA}
N 595 -340 660 -340 {
lab=pn[4]}
N 440 -340 515 -340 {
lab=VDDA}
N 440 -300 515 -300 {
lab=ENB}
N 620 -520 740 -520 {
lab=GND}
C {5s_cc_osc.sym} 760 -660 0 0 {name=Xro_1}
C {sky130_stdcells/einvp_1.sym} 555 -340 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/res_generic_po.sym} 690 -480 3 0 {name=R1
W=1
L=1
model=res_generic_po
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 780 -410 0 0 {name=R2
W=1
L=1
model=res_generic_po
mult=1}
C {devices/ipin.sym} 600 -480 0 0 {name=p1 lab=Anlg_in}
C {devices/lab_wire.sym} 640 -580 0 0 {name=p6 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 640 -620 0 0 {name=p2 sig_type=std_logic lab=pn[3]}
C {devices/lab_wire.sym} 640 -660 0 0 {name=p3 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 640 -700 0 0 {name=p4 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 640 -740 0 0 {name=p5 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 880 -740 2 0 {name=p7 sig_type=std_logic lab=p[0]}
C {devices/lab_wire.sym} 880 -700 2 0 {name=p8 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 880 -660 2 0 {name=p10 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 880 -620 2 0 {name=p11 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 760 -835 0 0 {name=p12 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 660 -340 2 0 {name=p13 sig_type=std_logic lab=pn[4]}
C {devices/ipin.sym} 440 -340 0 0 {name=p14 lab=VDDA}
C {devices/ipin.sym} 440 -300 0 0 {name=p15 lab=ENB}
C {devices/opin.sym} 880 -580 0 0 {name=p16 lab=p[4]}
C {devices/lab_wire.sym} 780 -350 2 0 {name=p9 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 620 -520 0 0 {name=p17 lab=GND}
