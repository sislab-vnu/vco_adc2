v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -380 210 -380 { lab=FBack}
N 390 -420 410 -420 { lab=D1}
N 390 -380 410 -380 { lab=ENB}
N 580 -380 600 -380 { lab=FBack}
N 560 -420 600 -420 { lab=p_dco}
N 370 -400 390 -400 { lab=D1}
N 390 -420 390 -400 { lab=D1}
N 760 -400 780 -400 { lab=D2}
N 780 -420 780 -400 { lab=D2}
N 780 -420 800 -420 { lab=D2}
N 940 -380 960 -380 { lab=FBack}
N 960 -380 960 -320 { lab=FBack}
N 780 -380 800 -380 { lab=CLK}
N 780 -380 780 -340 { lab=CLK}
N 580 -380 580 -320 { lab=FBack}
N 190 -380 190 -320 { lab=FBack}
N 10 -450 50 -450 { lab=Anlg_in}
N 10 -390 50 -390 { lab=ENB}
N 940 -420 980 -420 { lab=Dout}
N 290 -500 290 -460 { lab=ENB}
N 490 -500 490 -460 { lab=Vbs_34}
N 450 -500 450 -460 { lab=Vbs_12}
N 580 -320 960 -320 {
lab=FBack}
N 190 -320 580 -320 {
lab=FBack}
N 170 -420 210 -420 {
lab=p_vco}
N 95 -360 95 -320 {
lab=VCCD}
N 95 -510 95 -480 {
lab=VCCA}
N 95 -510 125 -510 {
lab=VCCA}
N 125 -510 125 -480 {
lab=VCCA}
N 110 -540 110 -510 {
lab=VCCA}
N 125 -360 125 -320 {
lab=GND}
N 250 -340 250 -300 {
lab=VCCD}
N 330 -340 330 -300 {
lab=GND}
N 640 -340 640 -295 {
lab=VCCD}
N 720 -340 720 -295 {
lab=GND}
N 525 -420 560 -420 {
lab=p_dco}
N 525 -380 545 -380 {
lab=GND}
N 545 -380 545 -340 {
lab=GND}
N 840 -340 840 -300 {
lab=VCCD}
N 900 -340 900 -300 {
lab=GND}
N 95 -320 95 -275 {
lab=VCCD}
N 95 -275 250 -275 {
lab=VCCD}
N 250 -300 250 -295 {
lab=VCCD}
N 250 -295 250 -275 {
lab=VCCD}
N 640 -295 640 -275 {
lab=VCCD}
N 640 -275 840 -275 {
lab=VCCD}
N 840 -300 840 -275 {
lab=VCCD}
N 125 -320 125 -260 {
lab=GND}
N 125 -260 900 -260 {
lab=GND}
N 900 -300 900 -260 {
lab=GND}
N 720 -295 720 -260 {
lab=GND}
N 545 -340 545 -260 {
lab=GND}
N 10 -390 10 -240 {
lab=ENB}
N 10 -240 565 -240 {
lab=ENB}
N 565 -505 565 -240 {
lab=ENB}
N 565 -535 680 -535 {
lab=ENB}
N 680 -505 680 -495 {
lab=ENB}
N 680 -495 680 -460 {
lab=ENB}
N 390 -345 390 -245 {
lab=ENB}
N 390 -245 390 -240 {
lab=ENB}
N 390 -380 390 -345 {
lab=ENB}
N 110 -540 390 -540 {
lab=VCCA}
N 390 -540 400 -540 {
lab=VCCA}
N 400 -540 400 -340 {
lab=VCCA}
N 400 -340 450 -340 {
lab=VCCA}
N 330 -300 330 -260 {
lab=GND}
N 250 -275 640 -275 {
lab=VCCD}
N 565 -535 565 -505 {
lab=ENB}
N 680 -530 680 -505 {
lab=ENB}
N 680 -535 680 -530 {
lab=ENB}
N 290 -525 290 -500 {
lab=ENB}
N 290 -525 565 -525 {
lab=ENB}
N 280 -705 350 -705 {
lab=Anlg_in}
N 280 -670 350 -670 {
lab=ENB}
N 280 -640 350 -640 {
lab=Vbs_12}
N 280 -610 350 -610 {
lab=Vbs_34}
N 590 -710 680 -710 {
lab=CLK}
N 590 -680 680 -680 {
lab=VCCD}
N 590 -650 680 -650 {
lab=GND}
N 590 -620 680 -620 {
lab=VCCA}
N 785 -710 865 -710 {
lab=Dout}
N 490 -340 490 -275 {
lab=VCCD}
C {devices/lab_pin.sym} 780 -350 2 0 {name=l2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 450 -470 3 1 {name=l10 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 490 -470 3 1 {name=l11 sig_type=std_logic lab=Vbs_34}
C {devices/lab_pin.sym} 290 -480 2 0 {name=l14 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 680 -480 2 0 {name=l15 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 40 -450 0 0 {name=l17 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 950 -420 0 1 {name=l19 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 390 -400 0 1 {name=l20 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 780 -410 2 0 {name=l21 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 580 -320 2 0 {name=l22 sig_type=std_logic lab=FBack}
C {devices/lab_wire.sym} 190 -420 1 0 {name=l30 sig_type=std_logic lab=p_vco}
C {devices/lab_wire.sym} 580 -420 1 0 {name=l31 sig_type=std_logic lab=p_dco}
C {vco.sym} 110 -420 0 0 {name=x1}
C {devices/lab_wire.sym} 110 -525 0 0 {name=l3 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 95 -325 0 0 {name=l5 sig_type=std_logic lab=VCCD}
C {/home/toind/work/vco_adc2/xschem/lib_count/count.sym} 290 -400 0 0 {name=X_UDC_2}
C {/home/toind/work/vco_adc2/xschem/lib_dco/dco.sym} 470 -400 0 0 {name=x2}
C {/home/toind/work/vco_adc2/xschem/lib_count/count.sym} 680 -400 0 0 {name=X_UDC_1}
C {/home/toind/work/vco_adc2/xschem/lib_qz/qz.sym} 860 -390 0 0 {name=X_Qtz_1}
C {devices/lab_wire.sym} 125 -335 2 0 {name=l4 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 280 -705 0 0 {name=p1 lab=Anlg_in}
C {devices/ipin.sym} 280 -670 0 0 {name=p2 lab=ENB}
C {devices/ipin.sym} 280 -640 0 0 {name=p3 lab=Vbs_12}
C {devices/ipin.sym} 280 -610 0 0 {name=p4 lab=Vbs_34}
C {devices/ipin.sym} 590 -710 0 0 {name=p5 lab=CLK}
C {devices/ipin.sym} 590 -680 0 0 {name=p6 lab=VCCD}
C {devices/ipin.sym} 590 -650 0 0 {name=p7 lab=GND}
C {devices/ipin.sym} 590 -620 0 0 {name=p8 lab=VCCA}
C {devices/opin.sym} 865 -710 0 0 {name=p9 lab=Dout}
C {devices/lab_wire.sym} 330 -705 2 0 {name=l1 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 330 -670 2 0 {name=l6 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 330 -640 2 0 {name=l7 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 330 -610 2 0 {name=l8 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 650 -710 2 0 {name=l9 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 650 -680 2 0 {name=l12 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 650 -650 2 0 {name=l13 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 650 -620 2 0 {name=l16 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 805 -710 0 0 {name=l18 sig_type=std_logic lab=Dout}
