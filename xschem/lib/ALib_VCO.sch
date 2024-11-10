v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 720 -480 780 -480 {
lab=Vctrl}
N 780 -525 780 -480 {
lab=Vctrl}
N 780 -480 780 -440 {
lab=Vctrl}
N 600 -480 660 -480 {
lab=Anlg_in}
N 640 -580 700 -580 {
lab=pn[4]}
N 820 -580 880 -580 {
lab=p[4]}
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
N 780 -380 780 -350 {
lab=GND}
C {sky130_stdcells/einvp_1.sym} 555 -340 0 0 {name=x1 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/res_generic_po.sym} 690 -480 3 0 {name=R1
W=0.482
L=2
model=res_generic_po
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 780 -410 0 0 {name=R2
W=0.482
L=2
model=res_generic_po
mult=1}
C {devices/ipin.sym} 600 -480 0 0 {name=p1 lab=Anlg_in}
C {devices/lab_wire.sym} 640 -580 0 0 {name=p6 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 760 -835 0 0 {name=p12 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 660 -340 2 0 {name=p13 sig_type=std_logic lab=pn[4]}
C {devices/ipin.sym} 440 -340 0 0 {name=p14 lab=VDDA}
C {devices/ipin.sym} 440 -300 0 0 {name=p15 lab=ENB}
C {devices/opin.sym} 880 -580 0 0 {name=p16 lab=p[4]}
C {devices/lab_wire.sym} 780 -350 2 0 {name=p9 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 620 -520 0 0 {name=p17 lab=GND}
C {devices/lab_wire.sym} 780 -480 2 0 {name=p18 sig_type=std_logic lab=Vctrl}
C {x5s_cc_osc.sym} 760 -660 0 0 {name=Xro_1}
