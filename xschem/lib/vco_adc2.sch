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
lab=vbias_12}
N 780 -480 780 -420 {
lab=vbias_34}
N 490 -480 490 -440 {
lab=vdda}
N 550 -480 550 -440 {
lab=enable_in}
N 280 -500 280 -460 {
lab=vdda}
N 490 -500 490 -480 {
lab=vdda}
N 550 -500 550 -480 {
lab=enable_in}
N 740 -500 740 -480 {
lab=vbias_12}
N 780 -500 780 -480 {
lab=vbias_34}
N 160 -430 220 -430 {
lab=analog_in}
N 160 -370 220 -370 {
lab=enable_in}
N 820 -360 920 -360 {
lab=#net1}
N 970 -500 970 -400 {
lab=vdda}
N 1030 -500 1030 -400 {
lab=enable_in}
N 1080 -340 1180 -340 {
lab=D2}
N 1250 -500 1250 -380 {
lab=vdda}
N 1320 -340 1400 -340 {
lab=quantizer_out}
N 1320 -300 1400 -300 {
lab=FeedBack}
N 280 -340 280 -300 {
lab=gnd}
N 520 -320 520 -280 {
lab=gnd}
N 740 -300 740 -260 {
lab=gnd}
N 780 -300 780 -260 {
lab=vdda}
N 1000 -280 1000 -240 {
lab=gnd}
N 1250 -260 1250 -220 {
lab=gnd}
N 1120 -300 1180 -300 {
lab=clk}
N 1120 -300 1120 -260 {
lab=clk}
N 1400 -300 1400 -180 {
lab=FeedBack}
N 400 -180 1400 -180 {
lab=FeedBack}
N 400 -360 400 -180 {
lab=FeedBack}
N 400 -360 440 -360 {
lab=FeedBack}
N 640 -340 700 -340 {
lab=enable_in}
N 640 -340 640 -300 {
lab=enable_in}
N 860 -320 920 -320 {
lab=FeedBack}
N 860 -320 860 -180 {
lab=FeedBack}
N 1180 -780 1270 -780 {
lab=vdda}
N 1180 -720 1270 -720 {
lab=gnd}
N 940 -720 1030 -720 {
lab=enable_in}
N 940 -780 1030 -780 {
lab=clk}
N 430 -720 520 -720 {
lab=vbias_34}
N 430 -660 520 -660 {
lab=analog_in}
N 430 -780 520 -780 {
lab=vbias_12}
N 620 -780 710 -780 {
lab=quantizer_out}
C {ALib_VCO.sym} 280 -400 0 0 {name=x1}
C {ALib_DCO.sym} 760 -360 0 0 {name=x2}
C {DLib_Quantizer.sym} 1240 -310 0 0 {name=x3}
C {DLib_UpDownCounter.sym} 520 -380 0 0 {name=x4}
C {DLib_UpDownCounter.sym} 1000 -340 0 0 {name=x6}
C {devices/lab_wire.sym} 1250 -780 0 0 {name=p1 sig_type=std_logic lab=vdda}
C {devices/ipin.sym} 1180 -780 0 0 {name=p2 lab=vdda}
C {devices/opin.sym} 710 -780 0 0 {name=p3 lab=quantizer_out}
C {devices/ipin.sym} 1180 -720 0 0 {name=p5 lab=gnd}
C {devices/lab_wire.sym} 1250 -720 0 0 {name=p6 sig_type=std_logic lab=gnd}
C {devices/ipin.sym} 940 -720 0 0 {name=p19 lab=enable_in}
C {devices/lab_wire.sym} 1010 -720 0 0 {name=p20 sig_type=std_logic lab=enable_in}
C {devices/ipin.sym} 940 -780 0 0 {name=p22 lab=clk}
C {devices/lab_wire.sym} 1010 -780 0 0 {name=p23 sig_type=std_logic lab=clk}
C {devices/ipin.sym} 430 -720 0 0 {name=p28 lab=vbias_34}
C {devices/ipin.sym} 430 -660 0 0 {name=p4 lab=analog_in}
C {devices/lab_wire.sym} 500 -660 0 0 {name=p30 sig_type=std_logic lab=analog_in}
C {devices/ipin.sym} 430 -780 0 0 {name=p31 lab=vbias_12}
C {devices/lab_wire.sym} 500 -780 0 0 {name=p32 sig_type=std_logic lab=vbias_12}
C {devices/lab_wire.sym} 690 -780 0 0 {name=p34 sig_type=std_logic lab=quantizer_out}
C {devices/lab_wire.sym} 860 -180 2 0 {name=p33 sig_type=std_logic lab=FeedBack}
C {devices/lab_wire.sym} 1150 -340 0 0 {name=p35 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 670 -380 0 0 {name=p36 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 390 -400 0 0 {name=p37 sig_type=std_logic lab=p_vco}
C {devices/lab_wire.sym} 500 -720 0 0 {name=p29 sig_type=std_logic lab=vbias_34}
C {devices/lab_wire.sym} 180 -430 0 0 {name=p39 sig_type=std_logic lab=analog_in}
C {devices/lab_wire.sym} 740 -500 0 0 {name=p17 sig_type=std_logic lab=vbias_12}
C {devices/lab_wire.sym} 780 -500 2 0 {name=p18 sig_type=std_logic lab=vbias_34}
C {devices/lab_wire.sym} 1370 -340 2 0 {name=p38 sig_type=std_logic lab=quantizer_out}
C {devices/lab_wire.sym} 1140 -300 0 0 {name=p21 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 200 -370 0 0 {name=p24 sig_type=std_logic lab=enable_in}
C {devices/lab_wire.sym} 550 -500 2 0 {name=p25 sig_type=std_logic lab=enable_in}
C {devices/lab_wire.sym} 670 -340 0 0 {name=p26 sig_type=std_logic lab=enable_in}
C {devices/lab_wire.sym} 1030 -500 2 0 {name=p27 sig_type=std_logic lab=enable_in}
C {devices/lab_wire.sym} 280 -500 0 0 {name=p40 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 490 -500 0 0 {name=p12 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 970 -500 0 0 {name=p13 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 1250 -500 0 0 {name=p15 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 780 -260 2 0 {name=p14 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 280 -300 0 0 {name=p16 sig_type=std_logic lab=gnd}
C {devices/lab_wire.sym} 520 -280 0 0 {name=p7 sig_type=std_logic lab=gnd}
C {devices/lab_wire.sym} 740 -260 0 0 {name=p8 sig_type=std_logic lab=gnd}
C {devices/lab_wire.sym} 1000 -240 0 0 {name=p9 sig_type=std_logic lab=gnd}
C {devices/lab_wire.sym} 1250 -220 0 0 {name=p10 sig_type=std_logic lab=gnd}
