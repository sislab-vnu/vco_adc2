v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -400 440 -400 {
lab=p_vco}
N 600 -380 700 -380 {
lab=D1}
N 740 -480 740 -420 {
lab=Vbs_12}
N 780 -480 780 -420 {
lab=Vbs_34}
N 490 -480 490 -440 {
lab=VDDA}
N 550 -480 550 -440 {
lab=ENB}
N 280 -500 280 -460 {
lab=VDDA}
N 490 -500 490 -480 {
lab=VDDA}
N 550 -500 550 -480 {
lab=ENB}
N 740 -500 740 -480 {
lab=Vbs_12}
N 780 -500 780 -480 {
lab=Vbs_34}
N 160 -430 220 -430 {
lab=Anlg_in}
N 160 -370 220 -370 {
lab=ENB}
N 820 -360 920 -360 {
lab=#net1}
N 970 -500 970 -400 {
lab=VDDA}
N 1030 -500 1030 -400 {
lab=ENB}
N 1080 -340 1180 -340 {
lab=D2}
N 1250 -500 1250 -380 {
lab=VDDA}
N 1320 -340 1400 -340 {
lab=Dout}
N 1320 -300 1400 -300 {
lab=FeedBack}
N 280 -340 280 -300 {
lab=GND}
N 520 -320 520 -280 {
lab=GND}
N 740 -300 740 -260 {
lab=GND}
N 780 -300 780 -260 {
lab=VDDA}
N 1000 -280 1000 -240 {
lab=GND}
N 1250 -260 1250 -220 {
lab=GND}
N 1120 -300 1180 -300 {
lab=CLK}
N 1120 -300 1120 -260 {
lab=CLK}
N 1400 -300 1400 -180 {
lab=FeedBack}
N 400 -180 1400 -180 {
lab=FeedBack}
N 400 -360 400 -180 {
lab=FeedBack}
N 400 -360 440 -360 {
lab=FeedBack}
N 640 -340 700 -340 {
lab=ENB}
N 640 -340 640 -300 {
lab=ENB}
N 860 -320 920 -320 {
lab=FeedBack}
N 860 -320 860 -180 {
lab=FeedBack}
N 1130 -780 1220 -780 {
lab=VDDA}
N 1130 -720 1220 -720 {
lab=GND}
N 890 -720 980 -720 {
lab=ENB}
N 890 -780 980 -780 {
lab=CLK}
N 430 -720 520 -720 {
lab=Vbs_34}
N 430 -660 520 -660 {
lab=Anlg_in}
N 430 -780 520 -780 {
lab=Vbs_12}
N 620 -780 710 -780 {
lab=Dout}
C {ALib_VCO.sym} 280 -400 0 0 {name=x1}
C {ALib_DCO.sym} 760 -360 0 0 {name=x2}
C {DLib_Quantizer.sym} 1240 -310 0 0 {name=x3}
C {DLib_UpDownCounter.sym} 520 -380 0 0 {name=x4}
C {DLib_UpDownCounter.sym} 1000 -340 0 0 {name=x6}
C {devices/lab_wire.sym} 1200 -780 0 0 {name=p1 sig_type=std_logic lab=VDDA}
C {devices/ipin.sym} 1130 -780 0 0 {name=p2 lab=VDDA}
C {devices/opin.sym} 710 -780 0 0 {name=p3 lab=Dout}
C {devices/ipin.sym} 1130 -720 0 0 {name=p5 lab=GND}
C {devices/lab_wire.sym} 1200 -720 0 0 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 280 -300 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 520 -280 0 0 {name=p8 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 740 -260 0 0 {name=p9 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 1000 -240 0 0 {name=p10 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 1250 -220 0 0 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 280 -500 0 0 {name=p12 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 490 -500 0 0 {name=p13 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 780 -260 2 0 {name=p14 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 970 -500 0 0 {name=p15 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 1250 -500 0 0 {name=p16 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 740 -500 0 0 {name=p17 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 780 -500 2 0 {name=p18 sig_type=std_logic lab=Vbs_34}
C {devices/ipin.sym} 890 -720 0 0 {name=p19 lab=ENB}
C {devices/lab_wire.sym} 960 -720 0 0 {name=p20 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 1150 -300 0 0 {name=p21 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} 890 -780 0 0 {name=p22 lab=CLK}
C {devices/lab_wire.sym} 960 -780 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 180 -370 0 0 {name=p24 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 550 -500 0 0 {name=p25 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 660 -340 0 0 {name=p26 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 1030 -500 0 0 {name=p27 sig_type=std_logic lab=ENB}
C {devices/ipin.sym} 430 -720 0 0 {name=p28 lab=Vbs_34}
C {devices/lab_wire.sym} 500 -720 0 0 {name=p29 sig_type=std_logic lab=Vbs_34}
C {devices/ipin.sym} 430 -660 0 0 {name=p4 lab=Anlg_in}
C {devices/lab_wire.sym} 500 -660 0 0 {name=p30 sig_type=std_logic lab=Anlg_in}
C {devices/ipin.sym} 430 -780 0 0 {name=p31 lab=Vbs_12}
C {devices/lab_wire.sym} 500 -780 0 0 {name=p32 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 640 -780 2 0 {name=p34 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 860 -180 2 0 {name=p33 sig_type=std_logic lab=FeedBack}
C {devices/lab_wire.sym} 1150 -340 0 0 {name=p35 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 670 -380 0 0 {name=p36 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 390 -400 0 0 {name=p37 sig_type=std_logic lab=p_vco}
C {devices/lab_wire.sym} 1400 -340 2 0 {name=p38 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 180 -430 0 0 {name=p39 sig_type=std_logic lab=Anlg_in}
