v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -450 270 -450 { lab=FBack}
N 450 -490 470 -490 { lab=D1}
N 450 -450 470 -450 { lab=ENB}
N 640 -450 660 -450 { lab=FBack}
N 620 -490 660 -490 { lab=p_dco}
N 430 -470 450 -470 { lab=D1}
N 450 -490 450 -470 { lab=D1}
N 820 -470 840 -470 { lab=D2}
N 840 -490 840 -470 { lab=D2}
N 1010 -460 1030 -460 { lab=FBack}
N 840 -450 840 -410 { lab=CLK}
N 640 -450 640 -390 { lab=FBack}
N 450 -450 450 -410 { lab=ENB}
N 250 -450 250 -390 { lab=FBack}
N 70 -520 110 -520 { lab=Anlg_in}
N 70 -460 110 -460 { lab=ENB}
N 1010 -500 1050 -500 { lab=Dout}
N 130 -300 130 -260 { lab=Vbs_34}
N 350 -300 350 -260 { lab=Anlg_in}
N 320 -140 320 -100 { lab=ENB}
N 620 -140 620 -100 { lab=CLK}
N 380 -570 380 -530 { lab=ENB}
N 550 -570 550 -530 { lab=Vbs_34}
N 510 -570 510 -530 { lab=Vbs_12}
N 770 -570 770 -530 { lab=ENB}
N 50 -300 50 -260 { lab=Vbs_12}
N 620 -490 620 -470 {
lab=p_dco}
N 590 -470 620 -470 {
lab=p_dco}
N 640 -360 1020 -360 {
lab=FBack}
N 250 -360 640 -360 {
lab=FBack}
N 230 -490 270 -490 {
lab=p_vco}
N 250 -280 250 -260 {
lab=VDDA}
N 170 -610 170 -550 {
lab=VDDA}
N 170 -430 170 -410 {
lab=GND}
N 320 -590 320 -530 {
lab=VDDA}
N 940 -600 940 -540 {
lab=VDDA}
N 940 -420 940 -400 {
lab=GND}
N 640 -390 640 -360 {
lab=FBack}
N 250 -390 250 -370 {
lab=FBack}
N 250 -370 250 -360 {
lab=FBack}
N 350 -410 350 -380 {
lab=GND}
N 510 -410 510 -380 {
lab=GND}
N 550 -410 550 -380 {
lab=VDDA}
N 740 -410 740 -380 {
lab=GND}
N 710 -570 710 -530 {
lab=VDDA}
N 940 -400 940 -380 {
lab=GND}
N 840 -500 840 -490 {
lab=D2}
N 840 -500 870 -500 {
lab=D2}
N 840 -460 840 -450 {
lab=CLK}
N 840 -460 870 -460 {
lab=CLK}
N 1020 -360 1040 -360 {
lab=FBack}
N 1040 -460 1040 -360 {
lab=FBack}
N 1030 -460 1040 -460 {
lab=FBack}
C {devices/lab_pin.sym} 450 -420 2 0 {name=l1 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 840 -420 2 0 {name=l2 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 130 -230 0 0 {name=Vbs_34 value="DC=0"}
C {devices/gnd.sym} 130 -200 0 0 {name=l3 lab=GND}
C {devices/code.sym} 150 -130 0 0 {name=finesim_cmd only_toplevel=true value="
** control simulation lines
.probe tran v(p_vco) v(p_dco) v(xdco_1.p_osc) v(xdco_1.pha_ro) v(xdco_1.p_dco)
+ v(xdco_1.Isup) v(d1) v(d2) v(dout) v(clk) v(fback) v(anlg_in) i(vcca) i(vccd) 

.print v(clk) v(dout) v(anlg_in)

.tran 1n 0.5m start=0 $  sweep vin 0 1.0 0.1

.measure tran prd trig v(p_vco) val=0.8 rise=10 targ v(p_vco) val=0.8 rise=20
.measure tran freq_v param='10/prd'
.measure tran prd1 trig v(p_dco) val=0.8 rise=10 targ v(p_dco) val=0.8 rise=30
.measure tran freq_d param='20/prd1'
.measure tran I_analog avg i(vcca) from=0.1m to=1.1m
*.measure tran I_analog1 avg i(vcca1) from=0.1m to=1.1m
.measure tran I_digital avg i(vccd) from=0.1m to=1.1m
.measure tran A_power param='I_analog*1.8'
*.measure tran A_power1 param='I_analog1*1.8'
.measure tran D_power param='I_digital*1.8'
** options for finesim simulator
.option finesim_fsdb_version=5.6
.option finesim_output=fsdb
.option finesim_mode=spicead:p
.option finesim_mode="dlib*:promd":subckt
.option runlvl=7
*.option accurate=1
*.option finesim_mode="alib_vco:spicehd":subckt
*.option finesim_mode=prohd

** options for hspice simulator
*.option fsdb=1
*.option opfile=1 split_dp=1

**** end user architecture code
"
place=end}
C {devices/vsource.sym} 250 -230 0 0 {name=VDDA value="DC=1.8"}
C {devices/gnd.sym} 250 -200 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 350 -230 0 0 {name=Vin value="DC=0 SIN(0.5 vsin sig_freq 20u 0 0)"}
C {devices/gnd.sym} 350 -200 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 320 -70 0 0 {name=Venb value="DC=0 PULSE( 0 1.8 0 20n 20n 200n 1 )"}
C {devices/gnd.sym} 320 -40 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 620 -70 0 0 {name=Vclk value="DC=0 PULSE( 0 1.8 0 1n 1n 19.835n 41.67n )"}
C {devices/gnd.sym} 620 -40 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 50 -230 0 0 {name=Vbs_12 value="DC=0.4"}
C {devices/gnd.sym} 50 -200 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 510 -540 3 1 {name=l10 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 550 -540 3 1 {name=l11 sig_type=std_logic lab=Vbs_34}
C {devices/lab_pin.sym} 380 -550 2 0 {name=l14 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 770 -550 2 0 {name=l15 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 100 -520 0 0 {name=l17 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 100 -460 0 0 {name=l18 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 1020 -500 0 1 {name=l19 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 450 -470 0 1 {name=l20 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 840 -500 0 0 {name=l21 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 640 -390 2 0 {name=l22 sig_type=std_logic lab=FBack}
C {devices/lab_wire.sym} 320 -110 0 1 {name=l23 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 50 -270 0 1 {name=l24 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 130 -270 0 1 {name=l25 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 350 -270 0 1 {name=l28 sig_type=std_logic lab=Anlg_in}
C {devices/lab_pin.sym} 620 -120 2 0 {name=l29 sig_type=std_logic lab=CLK}
C {devices/code_shown.sym} 660 -260 0 0 {name=VCO_param only_toplevel=false value="
.param l_main=3.65
.param l_aux=3.65
.param wp=5
.param wn=4
.param vsin=0.4
.param sig_freq=1k"}
C {devices/lab_wire.sym} 250 -490 1 0 {name=l30 sig_type=std_logic lab=p_vco}
C {devices/lab_wire.sym} 640 -490 1 0 {name=l31 sig_type=std_logic lab=p_dco}
C {devices/code.sym} 30 -130 0 0 {name=lib_def
only_toplevel=false 
value=tcleval(".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.lib $::SKYWATER_MODELS/sky130.lib.spice tt")

place=header}
C {devices/vdd.sym} 250 -280 0 0 {name=l12 lab=VDDA}
C {../lib/ALib_VCO.sym} 170 -490 0 0 {name=Xvco_1 l_main=l_main l_aux=l_aux wp=wp wn=wn}
C {../lib/DLib_UpDownCounter.sym} 350 -470 0 0 {name=X_UDC_1 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA}
C {../lib/ALib_DCO.sym} 530 -470 0 0 {name=Xdco_2}
C {../lib/DLib_UpDownCounter.sym} 740 -470 0 0 {name=X_UDC_3 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA}
C {../lib/DLib_Quantizer.sym} 930 -470 0 0 {name=X_Qtz_2 VGND=GND VNB=GND VPB=VDDA VPWR=VDDA}
C {devices/gnd.sym} 170 -410 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 170 -600 0 1 {name=l4 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 320 -580 0 1 {name=l13 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 710 -560 0 1 {name=l26 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 940 -590 0 1 {name=l27 sig_type=std_logic lab=VDDA}
C {devices/gnd.sym} 350 -380 0 0 {name=l32 lab=GND}
C {devices/gnd.sym} 510 -380 0 0 {name=l33 lab=GND}
C {devices/gnd.sym} 740 -380 0 0 {name=l34 lab=GND}
C {devices/gnd.sym} 940 -380 0 0 {name=l35 lab=GND}
C {devices/lab_wire.sym} 550 -380 0 1 {name=l36 sig_type=std_logic lab=VDDA}
