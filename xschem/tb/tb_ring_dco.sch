v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -365 60 -355 {
lab=GND}
N 60 -50 60 -40 {
lab=GND}
N 60 -205 60 -195 {
lab=GND}
N 575 -155 665 -155 {
lab=V_ctrl}
N 620 -155 620 -135 {
lab=V_ctrl}
N 470 -155 515 -155 {
lab=Anlg_in}
N 730 -450 790 -450 {
lab=pha_0}
N 730 -410 790 -410 {
lab=pha_1}
N 730 -370 790 -370 {
lab=pha_2}
N 730 -330 790 -330 {
lab=pha_3}
N 730 -290 790 -290 {
lab=pha_4}
N 670 -525 670 -500 {
lab=VDDA}
N 60 -435 60 -425 {
lab=VDDA}
N 60 -140 60 -105 {
lab=ENB}
N 60 -285 60 -265 {
lab=Anlg_in}
N 690 -230 690 -155 {
lab=V_ctrl}
N 665 -155 670 -155 {
lab=V_ctrl}
N 420 -250 500 -250 {
lab=ENB}
N 480 -510 670 -510 {
lab=VDDA}
N 480 -510 480 -290 {
lab=VDDA}
N 480 -290 500 -290 {
lab=VDDA}
N 580 -290 610 -290 {
lab=einvp}
N 670 -155 690 -155 {
lab=V_ctrl}
N 620 -70 620 -50 {
lab=GND}
N 620 -135 620 -130 {
lab=V_ctrl}
N 670 -230 690 -230 {
lab=V_ctrl}
N 670 -240 670 -230 {
lab=V_ctrl}
C {devices/code.sym} 125 -520 0 0 {name=library only_toplevel=false value=
"
**LIB with Local Computer
*.lib /home/toind/eda/uniccass/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.inc /home/toind/eda/uniccass/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.lib /home/dkits/openpdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/openpdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code.sym} 270 -520 0 0 {name=control only_toplevel=false value=
"
.control
*save all
set nobreak
set num_threads=10
save all
TRAN 1n 100u

.endc
"}
C {devices/vsource.sym} 60 -395 0 0 {name=VDD value="DC=1.8"}
C {devices/gnd.sym} 60 -355 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -80 0 0 {name=Venb1 value="DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20n 1)"}
C {devices/gnd.sym} 60 -40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 60 -235 0 0 {name=V_input value="DC=0 sin(0.8 0.4 0.5Meg 0 0 0)"}
C {devices/gnd.sym} 60 -195 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 670 -525 0 0 {name=l4 lab=VDDA}
C {devices/vdd.sym} 60 -435 0 0 {name=l5 lab=VDDA}
C {devices/lab_pin.sym} 60 -125 0 0 {name=p1 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 420 -250 0 0 {name=p2 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 790 -450 2 0 {name=p3 sig_type=std_logic lab=pha_0}
C {devices/lab_pin.sym} 790 -410 2 0 {name=p4 sig_type=std_logic lab=pha_1}
C {devices/lab_pin.sym} 790 -370 2 0 {name=p5 sig_type=std_logic lab=pha_2}
C {devices/lab_pin.sym} 790 -330 2 0 {name=p6 sig_type=std_logic lab=pha_3}
C {devices/lab_pin.sym} 790 -290 2 0 {name=p7 sig_type=std_logic lab=pha_4}
C {devices/lab_pin.sym} 690 -170 0 0 {name=p8 sig_type=std_logic lab=V_ctrl}
C {devices/gnd.sym} 620 -50 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 60 -285 2 0 {name=p9 sig_type=std_logic lab=Anlg_in}
C {sky130_stdcells/README.md} 840 -350 0 0 {}
C {sky130_stdcells/einvp_1.sym} 540 -290 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 485 -155 0 0 {name=p10 sig_type=std_logic lab=Anlg_in}
C {devices/lab_pin.sym} 595 -290 1 0 {name=p11 sig_type=std_logic lab=einvp}
C {sky130_fd_pr/res_generic_po.sym} 545 -155 3 0 {name=R3
W=0.482
L=2
model=res_generic_po
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 620 -100 0 0 {name=R1
W=0.482
L=2
model=res_generic_po
mult=1}
C {5s_cc_osc_dco.sym} 670 -370 0 0 {name=x2}
