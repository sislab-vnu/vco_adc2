v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -380 210 -380 { lab=FBack}
N 170 -410 190 -410 { lab=p_vco}
N 390 -420 410 -420 { lab=D1}
N 390 -380 410 -380 { lab=ENB}
N 670 -380 690 -380 { lab=FBack}
N 650 -420 690 -420 { lab=p_dco}
N 190 -420 190 -410 { lab=p_vco}
N 190 -420 210 -420 { lab=p_vco}
N 370 -400 390 -400 { lab=D1}
N 390 -420 390 -400 { lab=D1}
N 850 -400 870 -400 { lab=D2}
N 870 -420 870 -400 { lab=D2}
N 870 -420 890 -420 { lab=D2}
N 1030 -380 1050 -380 { lab=FBack}
N 1050 -380 1050 -320 { lab=FBack}
N 870 -380 890 -380 { lab=CLK}
N 870 -380 870 -340 { lab=CLK}
N 670 -380 670 -320 { lab=FBack}
N 390 -380 390 -340 { lab=ENB}
N 190 -320 1050 -320 { lab=FBack}
N 190 -380 190 -320 { lab=FBack}
N 10 -440 50 -440 { lab=Anlg_in}
N 10 -380 50 -380 { lab=ENB}
N 1030 -420 1070 -420 { lab=Dout}
N 130 -300 130 -260 { lab=Vbs_34}
N 210 -300 210 -260 { lab=VCCA}
N 290 -300 290 -260 { lab=VCCD}
N 380 -300 380 -260 { lab=Anlg_in}
N 460 -220 460 -180 { lab=ENB}
N 540 -140 540 -100 { lab=CLK}
N 290 -500 290 -460 { lab=ENB}
N 110 -510 110 -470 { lab=VCCA}
N 590 -540 590 -500 { lab=VCCD}
N 550 -540 550 -500 { lab=VCCA}
N 510 -540 510 -500 { lab=Vbs_34}
N 470 -540 470 -500 { lab=Vbs_12}
N 770 -500 770 -460 { lab=ENB}
N 50 -300 50 -260 { lab=Vbs_12}
C {devices/lab_pin.sym} 390 -350 2 0 {name=l1 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 870 -350 2 0 {name=l2 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 130 -230 0 0 {name=Vbs_34 value="DC=0"}
C {devices/gnd.sym} 130 -200 0 0 {name=l3 lab=GND}
C {devices/code.sym} 150 -130 0 0 {name=control only_toplevel=false value="
.control
   set num_threads=8
   tran 0.5n 10u 
   plot p_vco/2+6 D1/2+5 p_dco/2+4 Xdco_1.p_osc/2+4 CLK/2+3 D2/2+2 Dout/2+1 FBack/2+0.05
.endc
"
place=end}
C {devices/vsource.sym} 210 -230 0 0 {name=VCCA value="DC=1.8"}
C {devices/gnd.sym} 210 -200 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 290 -230 0 0 {name=VCCD value="DC=1.8"}
C {devices/gnd.sym} 290 -200 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 380 -230 0 0 {name=Vin value="DC=0 SIN(0.5 0.1 1K 20u 0 0)"}
C {devices/gnd.sym} 380 -200 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 460 -150 0 0 {name=Venb value="DC=0 PULSE( 0 1.8 0 20n 20n 200n 1 )"}
C {devices/gnd.sym} 460 -120 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 540 -70 0 0 {name=Vclk value="DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20.73n 41.67n )"}
C {devices/gnd.sym} 540 -40 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 50 -230 0 0 {name=Vbs_12 value="DC=0.4"}
C {devices/gnd.sym} 50 -200 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 470 -510 3 1 {name=l10 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 510 -510 3 1 {name=l11 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 550 -510 3 1 {name=l12 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 590 -510 3 1 {name=l13 sig_type=std_logic lab=VCCD}
C {devices/lab_pin.sym} 290 -480 2 0 {name=l14 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 770 -480 2 0 {name=l15 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 110 -490 2 0 {name=l16 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 40 -440 0 0 {name=l17 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 40 -380 0 0 {name=l18 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 1040 -420 0 1 {name=l19 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 390 -400 0 1 {name=l20 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 870 -410 2 0 {name=l21 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 670 -320 2 0 {name=l22 sig_type=std_logic lab=FBack}
C {devices/lab_wire.sym} 460 -190 0 1 {name=l23 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 50 -270 0 1 {name=l24 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 130 -270 0 1 {name=l25 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 210 -270 0 1 {name=l26 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 290 -270 0 1 {name=l27 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 380 -270 0 1 {name=l28 sig_type=std_logic lab=Anlg_in}
C {devices/lab_pin.sym} 540 -120 2 0 {name=l29 sig_type=std_logic lab=CLK}
C {devices/code_shown.sym} 840 -230 0 0 {name=VCO_param only_toplevel=false value="
.param l_main=3.65
.param l_aux=3.65
.param wp=5
.param wn=4"

place=end}
C {devices/lab_wire.sym} 190 -420 1 0 {name=l30 sig_type=std_logic lab=p_vco}
C {devices/lab_wire.sym} 670 -420 1 0 {name=l31 sig_type=std_logic lab=p_dco}
C {../lib/ALib_DCO.sym} 530 -420 0 0 {name=Xdco_1}
C {../lib/ALib_VCO.sym} 110 -410 0 0 {name=Xvco_1 l_main=l_main l_aux=l_aux wp=wp wn=wn}
C {../lib/DLib_UpDownCounter.sym} 290 -400 0 0 {name=X_UDC_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {../lib/DLib_Quantizer.sym} 960 -400 0 0 {name=X_Qtz_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {../lib/DLib_UpDownCounter.sym} 770 -400 0 0 {name=X_UDC_2 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {devices/code.sym} 30 -130 0 0 {name=lib_def
only_toplevel=false 
value=tcleval(".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.lib $::SKYWATER_MODELS/sky130.lib.spice tt")

place=header}
