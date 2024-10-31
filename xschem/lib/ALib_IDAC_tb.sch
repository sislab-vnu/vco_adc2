v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 780 -580 800 -580 { lab=Vbs_12}
N 780 -480 800 -480 { lab=Vbs_12}
N 840 -550 840 -510 { lab=#net1}
N 580 -550 580 -510 { lab=#net2}
N 580 -450 580 -410 { lab=add_pwr}
N 520 -580 540 -580 { lab=Vbs_34}
N 520 -480 540 -480 { lab=Vbs_34}
N 650 -390 770 -390 { lab=add_pwr}
N 600 -350 600 -280 { lab=lock}
N 740 -250 740 -230 { lab=Isup}
N 840 -450 840 -230 { lab=Isup}
N 740 -230 880 -230 { lab=Isup}
N 580 -630 840 -630 { lab=VDDA}
N 580 -630 580 -610 { lab=VDDA}
N 840 -630 840 -610 { lab=VDDA}
N 370 -630 370 -610 { lab=open}
N 370 -730 370 -710 { lab=lock}
N 840 -580 850 -580 { lab=VDDA}
N 850 -610 850 -580 { lab=VDDA}
N 840 -610 850 -610 { lab=VDDA}
N 840 -480 850 -480 { lab=#net1}
N 850 -510 850 -480 { lab=#net1}
N 840 -510 850 -510 { lab=#net1}
N 600 -350 610 -350 { lab=lock}
N 650 -390 650 -380 { lab=add_pwr}
N 770 -390 770 -320 { lab=add_pwr}
N 770 -260 770 -250 { lab=Isup}
N 810 -290 820 -290 { lab=open}
N 820 -360 820 -290 { lab=open}
N 680 -670 680 -630 { lab=VDDA}
N 390 -390 510 -390 { lab=add_pwr}
N 390 -250 510 -250 { lab=input_R}
N 340 -350 340 -280 { lab=open}
N 340 -350 350 -350 { lab=open}
N 390 -390 390 -380 { lab=add_pwr}
N 510 -390 510 -320 { lab=add_pwr}
N 390 -320 390 -250 { lab=input_R}
N 550 -290 560 -290 { lab=lock}
N 560 -360 560 -290 { lab=lock}
N 650 -320 650 -250 { lab=Isup}
N 650 -250 770 -250 { lab=Isup}
N 710 -410 710 -390 { lab=add_pwr}
N 580 -410 710 -410 { lab=add_pwr}
N 450 -410 450 -390 { lab=add_pwr}
N 450 -410 580 -410 { lab=add_pwr}
N 450 -250 450 -200 { lab=input_R}
N 450 -200 490 -200 { lab=input_R}
N 550 -200 570 -200 { lab=GND}
N 570 -200 570 -190 { lab=GND}
N 370 -530 370 -510 { lab=Dctrl}
N 580 -580 590 -580 {
lab=VDDA}
N 590 -610 590 -580 {
lab=VDDA}
N 580 -610 590 -610 {
lab=VDDA}
N 580 -480 590 -480 {
lab=#net2}
N 590 -510 590 -480 {
lab=#net2}
N 580 -510 590 -510 {
lab=#net2}
N 650 -350 660 -350 {
lab=add_pwr}
N 660 -380 660 -350 {
lab=add_pwr}
N 650 -380 660 -380 {
lab=add_pwr}
N 570 -190 570 -150 {
lab=GND}
N 520 -180 570 -180 {
lab=GND}
N 720 -290 770 -290 {
lab=GND}
N 390 -350 400 -350 {
lab=add_pwr}
N 400 -380 400 -350 {
lab=add_pwr}
N 390 -380 400 -380 {
lab=add_pwr}
N 510 -260 510 -250 {
lab=input_R}
N 470 -290 510 -290 {
lab=GND}
N 260 -320 260 -300 {
lab=GND}
N 260 -440 260 -380 {
lab=VDDA}
N 40 -60 40 -40 {
lab=GND}
N 40 -180 40 -120 {
lab=Vbs_12}
N 200 -60 200 -40 {
lab=GND}
N 200 -180 200 -120 {
lab=Vbs_34}
N 0 -320 0 -300 {
lab=GND}
N 0 -440 0 -380 {
lab=Dctrl}
N 520 -580 520 -480 {
lab=Vbs_34}
N 740 -580 780 -580 {
lab=Vbs_12}
N 740 -580 740 -480 {
lab=Vbs_12}
N 740 -480 780 -480 {
lab=Vbs_12}
N 700 -530 740 -530 {
lab=Vbs_12}
N 480 -530 520 -530 {
lab=Vbs_34}
C {devices/lab_pin.sym} 340 -290 2 0 {name=l1 sig_type=std_logic lab=open}
C {devices/opin.sym} 880 -230 0 0 {name=p6 lab=Isup}
C {sky130_stdcells/inv_2.sym} 370 -670 3 0 {name=x1 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 370 -620 2 0 {name=l4 sig_type=std_logic lab=open}
C {devices/lab_pin.sym} 370 -720 2 0 {name=l5 sig_type=std_logic lab=lock}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 820 -580 0 0 {name=M1
L=0.5
W=1.8
nf=1
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 820 -480 0 0 {name=M2
L=0.5
W=1.8
nf=1
spiceprefix=X
}
C {devices/lab_pin.sym} 560 -350 0 0 {name=l7 sig_type=std_logic lab=lock}
C {devices/lab_pin.sym} 600 -290 2 0 {name=l2 sig_type=std_logic lab=lock}
C {devices/lab_pin.sym} 820 -350 0 0 {name=l6 sig_type=std_logic lab=open}
C {devices/lab_wire.sym} 580 -410 0 0 {name=l8 sig_type=std_logic lab=add_pwr}
C {sky130_stdcells/buf_2.sym} 370 -570 3 0 {name=x2 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/pfet_01v8_hvt.sym} 560 -580 0 0 {name=M3
L=0.5
W=16.2
nf=3
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 560 -480 0 0 {name=M4
L=0.5
W=16.2
nf=3
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 630 -350 0 0 {name=M5
L=0.5
W=16
nf=2
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 790 -290 0 1 {name=M6
L=0.5
W=4
nf=2 
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 370 -350 0 0 {name=M7
L=0.5
W=16
nf=2
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 530 -290 0 1 {name=M8
L=0.5
W=4
nf=2 
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 520 -200 3 0 {name=R2
L=8.562
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 450 -250 0 0 {name=p7 sig_type=std_logic lab=input_R}
C {devices/lab_pin.sym} 720 -290 0 0 {name=l9 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 470 -290 0 0 {name=l10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 680 -670 0 0 {name=l13 sig_type=std_logic lab=VDDA}
C {devices/code.sym} 20 -680 0 0 {name=library only_toplevel=false value=
"
.lib /home/dkits/openpdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/openpdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code.sym} 160 -680 0 0 {name=control only_toplevel=false value=
"
.control
set num_threads=10
save all
TRAN 1n 50u $ start=0
.endc
"}
C {devices/vsource.sym} 260 -350 0 0 {name=V1 value="DC=1.8"}
C {devices/gnd.sym} 260 -300 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 260 -430 0 0 {name=l15 sig_type=std_logic lab=VDDA}
C {devices/gnd.sym} 570 -150 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 40 -90 0 0 {name=V2 value="DC=0.4"}
C {devices/gnd.sym} 40 -40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 40 -170 0 0 {name=l12 sig_type=std_logic lab=Vbs_12}
C {devices/vsource.sym} 200 -90 0 0 {name=V3 value="DC=0"}
C {devices/gnd.sym} 200 -40 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 200 -170 0 0 {name=l17 sig_type=std_logic lab=Vbs_34}
C {devices/vsource.sym} 0 -350 0 0 {name=V4 value="DC=0 PULSE(0 1.8 0 0.1n 0.1n 1u 4u)"}
C {devices/gnd.sym} 0 -300 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 0 -430 0 0 {name=l19 sig_type=std_logic lab=Dctrl}
C {devices/lab_pin.sym} 370 -510 0 0 {name=l20 sig_type=std_logic lab=Dctrl}
C {devices/lab_pin.sym} 480 -530 0 0 {name=l21 sig_type=std_logic lab=Vbs_34}
C {devices/lab_pin.sym} 700 -530 0 0 {name=l22 sig_type=std_logic lab=Vbs_12}
