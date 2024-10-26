v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -380 350 -380 { lab=FBack}
N 530 -420 550 -420 { lab=D1}
N 530 -380 550 -380 { lab=ENB}
N 720 -380 740 -380 { lab=FBack}
N 700 -420 740 -420 { lab=p_dco}
N 510 -400 530 -400 { lab=D1}
N 530 -420 530 -400 { lab=D1}
N 900 -400 920 -400 { lab=D2}
N 920 -420 920 -400 { lab=D2}
N 920 -420 940 -420 { lab=D2}
N 1080 -380 1100 -380 { lab=FBack}
N 1100 -380 1100 -320 { lab=FBack}
N 920 -380 940 -380 { lab=CLK}
N 920 -380 920 -340 { lab=CLK}
N 720 -380 720 -320 { lab=FBack}
N 330 -380 330 -320 { lab=FBack}
N 150 -450 190 -450 { lab=Anlg_in}
N 150 -390 190 -390 { lab=ENB}
N 1080 -420 1120 -420 { lab=Dout}
N 430 -500 430 -460 { lab=ENB}
N 630 -500 630 -460 { lab=Vbs_34}
N 590 -500 590 -460 { lab=Vbs_12}
N 720 -320 1100 -320 {
lab=FBack}
N 330 -320 720 -320 {
lab=FBack}
N 310 -420 350 -420 {
lab=p_vco}
N 235 -360 235 -320 {
lab=VCCD}
N 235 -510 235 -480 {
lab=VCCA}
N 235 -510 265 -510 {
lab=VCCA}
N 265 -510 265 -480 {
lab=VCCA}
N 250 -540 250 -510 {
lab=VCCA}
N 265 -360 265 -320 {
lab=GND}
N 390 -340 390 -300 {
lab=VCCD}
N 470 -340 470 -300 {
lab=GND}
N 780 -340 780 -295 {
lab=VCCD}
N 860 -340 860 -295 {
lab=GND}
N 665 -420 700 -420 {
lab=p_dco}
N 665 -380 685 -380 {
lab=GND}
N 685 -380 685 -340 {
lab=GND}
N 980 -340 980 -300 {
lab=VCCD}
N 1040 -340 1040 -300 {
lab=GND}
N 235 -320 235 -275 {
lab=VCCD}
N 235 -275 390 -275 {
lab=VCCD}
N 390 -300 390 -295 {
lab=VCCD}
N 390 -295 390 -275 {
lab=VCCD}
N 780 -295 780 -275 {
lab=VCCD}
N 780 -275 980 -275 {
lab=VCCD}
N 980 -300 980 -275 {
lab=VCCD}
N 265 -320 265 -260 {
lab=GND}
N 265 -260 1040 -260 {
lab=GND}
N 1040 -300 1040 -260 {
lab=GND}
N 860 -295 860 -260 {
lab=GND}
N 685 -340 685 -260 {
lab=GND}
N 150 -390 150 -240 {
lab=ENB}
N 150 -240 705 -240 {
lab=ENB}
N 705 -505 705 -240 {
lab=ENB}
N 705 -535 820 -535 {
lab=ENB}
N 820 -505 820 -495 {
lab=ENB}
N 820 -495 820 -460 {
lab=ENB}
N 530 -345 530 -245 {
lab=ENB}
N 530 -245 530 -240 {
lab=ENB}
N 530 -380 530 -345 {
lab=ENB}
N 250 -540 530 -540 {
lab=VCCA}
N 530 -540 540 -540 {
lab=VCCA}
N 540 -540 540 -340 {
lab=VCCA}
N 540 -340 590 -340 {
lab=VCCA}
N 470 -300 470 -260 {
lab=GND}
N 390 -275 780 -275 {
lab=VCCD}
N 705 -535 705 -505 {
lab=ENB}
N 820 -530 820 -505 {
lab=ENB}
N 820 -535 820 -530 {
lab=ENB}
N 430 -525 430 -500 {
lab=ENB}
N 430 -525 705 -525 {
lab=ENB}
N 420 -705 490 -705 {
lab=Anlg_in}
N 420 -670 490 -670 {
lab=ENB}
N 420 -640 490 -640 {
lab=Vbs_12}
N 420 -610 490 -610 {
lab=Vbs_34}
N 730 -710 820 -710 {
lab=CLK}
N 730 -680 820 -680 {
lab=VCCD}
N 730 -650 820 -650 {
lab=GND}
N 730 -620 820 -620 {
lab=VCCA}
N 925 -710 1005 -710 {
lab=Dout}
N 630 -340 630 -275 {
lab=VCCD}
C {devices/lab_pin.sym} 920 -350 2 0 {name=l2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 590 -470 3 1 {name=l10 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 630 -470 3 1 {name=l11 sig_type=std_logic lab=Vbs_34}
C {devices/lab_pin.sym} 430 -480 2 0 {name=l14 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 820 -480 2 0 {name=l15 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 180 -450 0 0 {name=l17 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 1090 -420 0 1 {name=l19 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 530 -400 0 1 {name=l20 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 920 -410 2 0 {name=l21 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 720 -320 2 0 {name=l22 sig_type=std_logic lab=FBack}
C {devices/lab_wire.sym} 330 -420 1 0 {name=l30 sig_type=std_logic lab=p_vco}
C {devices/lab_wire.sym} 720 -420 1 0 {name=l31 sig_type=std_logic lab=p_dco}
C {devices/lab_wire.sym} 250 -525 0 0 {name=l3 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 235 -325 0 0 {name=l5 sig_type=std_logic lab=VCCD}
C {/home/toind/work/vco_adc2/xschem/lib_count/count.sym} 430 -400 0 0 {name=X_UDC_2}
C {/home/toind/work/vco_adc2/xschem/lib_dco/dco.sym} 610 -400 0 0 {name=x2}
C {/home/toind/work/vco_adc2/xschem/lib_count/count.sym} 820 -400 0 0 {name=X_UDC_1}
C {/home/toind/work/vco_adc2/xschem/lib_qz/qz.sym} 1000 -390 0 0 {name=X_Qtz_1}
C {devices/lab_wire.sym} 265 -335 2 0 {name=l4 sig_type=std_logic lab=GND}
C {devices/ipin.sym} 420 -705 0 0 {name=p1 lab=Anlg_in}
C {devices/ipin.sym} 420 -670 0 0 {name=p2 lab=ENB}
C {devices/ipin.sym} 420 -640 0 0 {name=p3 lab=Vbs_12}
C {devices/ipin.sym} 420 -610 0 0 {name=p4 lab=Vbs_34}
C {devices/ipin.sym} 730 -710 0 0 {name=p5 lab=CLK}
C {devices/ipin.sym} 730 -680 0 0 {name=p6 lab=VCCD}
C {devices/ipin.sym} 730 -650 0 0 {name=p7 lab=GND}
C {devices/ipin.sym} 730 -620 0 0 {name=p8 lab=VCCA}
C {devices/opin.sym} 1005 -710 0 0 {name=p9 lab=Dout}
C {devices/lab_wire.sym} 470 -705 2 0 {name=l1 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 470 -670 2 0 {name=l6 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 470 -640 2 0 {name=l7 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 470 -610 2 0 {name=l8 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 790 -710 2 0 {name=l9 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 790 -680 2 0 {name=l12 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 790 -650 2 0 {name=l13 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 790 -620 2 0 {name=l16 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 945 -710 0 0 {name=l18 sig_type=std_logic lab=Dout}
C {/home/toind/work/sislab_vnu/vco_adc2/xschem/lib_vco/vco.sym} 250 -420 0 0 {name=x1}
