v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -520 370 -490 { lab=Vbs_12}
N 400 -520 400 -490 { lab=Vbs_12}
N 440 -520 440 -490 { lab=Vbs_34}
N 470 -520 470 -490 { lab=Vbs_34}
N 440 -520 470 -520 { lab=Vbs_34}
N 370 -520 400 -520 { lab=Vbs_12}
N 380 -390 380 -360 { lab=Isup}
N 380 -360 380 -320 { lab=Isup}
N 440 -230 480 -230 { lab=p[1]}
N 440 -190 480 -190 { lab=p[2]}
N 440 -150 480 -150 { lab=p[3]}
N 440 -110 480 -110 { lab=p_osc}
N 280 -270 320 -270 { lab=pn[0]}
N 280 -230 320 -230 { lab=pn[1]}
N 280 -190 320 -190 { lab=pn[2]}
N 280 -110 320 -110 { lab=pn[4]}
N 280 -150 320 -150 { lab=pn[3]}
N 380 -60 380 -40 { lab=GND}
N 100 -110 150 -110 { lab=VCCD}
N 230 -110 280 -110 { lab=pn[4]}
N 310 -440 340 -440 { lab=Dctrl}
N 440 -540 440 -520 { lab=Vbs_34}
N 140 -70 150 -70 { lab=ENB}
N 950 -110 970 -110 {
lab=pha_DCO}
N 750 -110 790 -110 {
lab=ro_div2}
N 790 -110 830 -110 {
lab=ro_div2}
N 360 -60 400 -60 {
lab=GND}
N 360 -320 400 -320 {
lab=Isup}
N 500 -460 540 -460 {
lab=VCCA}
N 460 -390 460 -360 {
lab=GND}
N 500 -420 540 -420 {
lab=VCCD}
N 560 -110 630 -110 {
lab=pha_ro}
N 440 -270 480 -270 {
lab=p[0]}
N 670 -570 720 -570 {
lab=GND}
C {devices/lab_wire.sym} 450 -230 2 0 {name=l5 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 450 -190 2 0 {name=l6 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 450 -150 2 0 {name=l7 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 310 -270 0 0 {name=l9 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 310 -230 0 0 {name=l10 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 310 -190 0 0 {name=l11 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 310 -110 0 0 {name=l13 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 310 -150 0 0 {name=l12 sig_type=std_logic lab=pn[3]}
C {devices/lab_pin.sym} 380 -340 2 1 {name=l21 sig_type=std_logic lab=Isup}
C {sky130_stdcells/einvp_1.sym} 190 -110 0 0 {name=x1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_2.sym} 520 -110 0 0 {name=x2 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {DLib_freqDiv2.sym} 690 -100 0 0 {name=Xdiv2_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {devices/ipin.sym} 310 -440 0 0 {name=p1 lab=Dctrl}
C {devices/ipin.sym} 370 -520 0 0 {name=p2 lab=Vbs_12}
C {devices/ipin.sym} 440 -540 0 0 {name=p3 lab=Vbs_34}
C {devices/opin.sym} 970 -110 0 0 {name=p5 lab=pha_DCO}
C {devices/ipin.sym} 140 -70 0 0 {name=p7 lab=ENB}
C {devices/lab_pin.sym} 600 -110 1 0 {name=l3 sig_type=std_logic lab=pha_ro}
C {devices/lab_wire.sym} 450 -110 0 1 {name=l4 sig_type=std_logic lab=p_osc}
C {DLib_freqDiv2.sym} 890 -100 0 0 {name=Xdiv1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {devices/lab_wire.sym} 770 -110 2 0 {name=l14 sig_type=std_logic lab=ro_div2}
C {/home/toind/work/vco_adc2/xschem/lib_dco/dco_idac.sym} 420 -440 0 0 {name=x3}
C {devices/ipin.sym} 540 -460 2 0 {name=p4 lab=VCCA}
C {devices/ipin.sym} 100 -110 0 0 {name=p6 lab=VCCD}
C {/home/toind/work/vco_adc2/xschem/lib_dco/dco_ring_osc.sym} 380 -190 0 0 {name=x4}
C {devices/lab_pin.sym} 460 -370 2 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 380 -40 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 540 -420 2 0 {name=l16 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 450 -270 2 0 {name=l17 sig_type=std_logic lab=p[0]}
C {devices/ipin.sym} 670 -570 0 0 {name=p8 lab=GND}
C {devices/lab_pin.sym} 720 -570 0 1 {name=l8 sig_type=std_logic lab=GND}
