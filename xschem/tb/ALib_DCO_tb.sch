v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 800 -750 800 -720 { lab=Vbs_12}
N 830 -750 830 -720 { lab=Vbs_12}
N 870 -750 870 -720 { lab=Vbs_34}
N 900 -750 900 -720 { lab=Vbs_34}
N 870 -750 900 -750 { lab=Vbs_34}
N 800 -750 830 -750 { lab=Vbs_12}
N 810 -620 810 -590 { lab=Isup}
N 810 -590 810 -550 { lab=Isup}
N 870 -460 910 -460 { lab=p[1]}
N 870 -420 910 -420 { lab=p[2]}
N 870 -380 910 -380 { lab=p[3]}
N 870 -340 910 -340 { lab=p_osc}
N 710 -500 750 -500 { lab=pn[0]}
N 710 -460 750 -460 { lab=pn[1]}
N 710 -420 750 -420 { lab=pn[2]}
N 710 -340 750 -340 { lab=pn[4]}
N 710 -380 750 -380 { lab=pn[3]}
N 810 -290 810 -270 { lab=GND}
N 530 -340 580 -340 { lab=VDDA}
N 660 -340 710 -340 { lab=pn[4]}
N 740 -670 770 -670 { lab=Dctrl}
N 1380 -340 1400 -340 {
lab=pha_DCO}
N 1180 -340 1220 -340 {
lab=ro_div2}
N 1220 -340 1260 -340 {
lab=ro_div2}
N 930 -670 970 -670 {
lab=VDDA}
N 890 -620 890 -590 {
lab=GND}
N 990 -340 1060 -340 {
lab=pha_ro}
N 870 -500 910 -500 {
lab=p[0]}
N 380 -460 380 -430 {
lab=GND}
N 380 -590 380 -520 {
lab=VDDA}
N 100 -460 100 -430 {
lab=GND}
N 100 -590 100 -520 {
lab=Dctrl}
N 100 -160 100 -130 {
lab=GND}
N 100 -290 100 -220 {
lab=Vbs_12}
N 240 -160 240 -130 {
lab=GND}
N 240 -290 240 -220 {
lab=Vbs_34}
N 380 -160 380 -130 {
lab=GND}
N 380 -290 380 -220 {
lab=ENB}
N 530 -300 580 -300 {
lab=ENB}
C {devices/lab_wire.sym} 880 -460 2 0 {name=l5 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 880 -420 2 0 {name=l6 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 880 -380 2 0 {name=l7 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 740 -500 0 0 {name=l9 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 740 -460 0 0 {name=l10 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 740 -420 0 0 {name=l11 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 740 -340 0 0 {name=l13 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 740 -380 0 0 {name=l12 sig_type=std_logic lab=pn[3]}
C {devices/lab_pin.sym} 810 -570 2 1 {name=l21 sig_type=std_logic lab=Isup}
C {sky130_stdcells/einvp_1.sym} 620 -340 0 0 {name=x1 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_2.sym} 950 -340 0 0 {name=x2 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1400 -340 0 0 {name=p5 lab=pha_DCO}
C {devices/lab_pin.sym} 1030 -340 1 0 {name=l3 sig_type=std_logic lab=pha_ro}
C {devices/lab_wire.sym} 880 -340 0 1 {name=l4 sig_type=std_logic lab=p_osc}
C {devices/lab_wire.sym} 1200 -340 2 0 {name=l14 sig_type=std_logic lab=ro_div2}
C {../lib/ALib_IDAC.sym} 850 -670 0 0 {name=x3}
C {../lib/5s_cc_osc_dco.sym} 810 -420 0 0 {name=x4}
C {devices/lab_wire.sym} 880 -500 2 0 {name=l17 sig_type=std_logic lab=p[0]}
C {../lib/DLib_freqDiv2.sym} 1120 -330 0 0 {name=Xdiv2 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA}
C {../lib/DLib_freqDiv2.sym} 1320 -330 0 0 {name=Xdiv2_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {devices/lab_pin.sym} 970 -670 0 1 {name=l15 sig_type=std_logic lab=VDDA}
C {devices/code.sym} 430 -830 0 0 {name=library only_toplevel=false value=
"
.lib /home/dkits/openpdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/openpdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code.sym} 590 -830 0 0 {name=control only_toplevel=false value=
"
.control
set num_threads=10
save all
TRAN 1n 50u $ start=0
.endc
"}
C {devices/gnd.sym} 380 -430 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 380 -490 0 0 {name=V1 value="DC=1.8"}
C {devices/lab_pin.sym} 380 -580 2 1 {name=l18 sig_type=std_logic lab=VDDA}
C {devices/lab_pin.sym} 530 -340 2 1 {name=l19 sig_type=std_logic lab=VDDA}
C {devices/gnd.sym} 810 -270 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 890 -590 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 100 -430 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 100 -490 0 0 {name=V2 value="DC=0 PULSE(0 1.8 0 0.1n 0.1n 1u 4u)"}
C {devices/lab_pin.sym} 100 -580 2 1 {name=l20 sig_type=std_logic lab=Dctrl}
C {devices/gnd.sym} 100 -130 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 100 -190 0 0 {name=V3 value="DC=0.4"}
C {devices/lab_pin.sym} 100 -280 2 1 {name=l23 sig_type=std_logic lab=Vbs_12}
C {devices/gnd.sym} 240 -130 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} 240 -190 0 0 {name=V4 value="DC=0"}
C {devices/gnd.sym} 380 -130 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 380 -190 0 0 {name=V5 value="DC=0 PULSE(0 1.8 0 0.1n 0.1n 20n 1)"}
C {devices/lab_pin.sym} 380 -280 2 1 {name=l27 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 740 -670 2 1 {name=l28 sig_type=std_logic lab=Dctrl}
C {devices/lab_pin.sym} 240 -280 2 1 {name=l25 sig_type=std_logic lab=Vbs_34}
C {devices/lab_pin.sym} 800 -750 2 1 {name=l29 sig_type=std_logic lab=Vbs_12}
C {devices/lab_pin.sym} 900 -750 0 1 {name=l30 sig_type=std_logic lab=Vbs_34}
C {devices/lab_pin.sym} 530 -300 2 1 {name=l31 sig_type=std_logic lab=ENB}
