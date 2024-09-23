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
N 390 -380 390 -340 { lab=ENB}
N 190 -380 190 -320 { lab=FBack}
N 10 -450 50 -450 { lab=Anlg_in}
N 10 -390 50 -390 { lab=ENB}
N 940 -420 980 -420 { lab=Dout}
N 290 -500 290 -460 { lab=ENB}
N 490 -500 490 -460 { lab=Vbs_34}
N 450 -500 450 -460 { lab=Vbs_12}
N 680 -500 680 -460 { lab=ENB}
N 560 -420 560 -400 {
lab=p_dco}
N 530 -400 560 -400 {
lab=p_dco}
N 580 -320 960 -320 {
lab=FBack}
N 190 -320 580 -320 {
lab=FBack}
N 170 -420 210 -420 {
lab=p_vco}
N 110 -360 110 -320 {
lab=VCCD}
N 450 -340 450 -280 {
lab=VCCA}
N 490 -340 490 -280 {
lab=VCCD}
N 95 -510 95 -480 {
lab=#net1}
N 95 -510 125 -510 {
lab=#net1}
N 125 -510 125 -480 {
lab=#net1}
N 110 -540 110 -510 {
lab=#net1}
C {devices/lab_pin.sym} 390 -350 2 0 {name=l1 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 780 -350 2 0 {name=l2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 450 -470 3 1 {name=l10 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 490 -470 3 1 {name=l11 sig_type=std_logic lab=Vbs_34}
C {devices/lab_pin.sym} 290 -480 2 0 {name=l14 sig_type=std_logic lab=ENB}
C {devices/lab_pin.sym} 680 -480 2 0 {name=l15 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 40 -450 0 0 {name=l17 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 40 -390 0 0 {name=l18 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 950 -420 0 1 {name=l19 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 390 -400 0 1 {name=l20 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 780 -410 2 0 {name=l21 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 580 -320 2 0 {name=l22 sig_type=std_logic lab=FBack}
C {devices/lab_wire.sym} 190 -420 1 0 {name=l30 sig_type=std_logic lab=p_vco}
C {devices/lab_wire.sym} 580 -420 1 0 {name=l31 sig_type=std_logic lab=p_dco}
C {vco.sym} 110 -420 0 0 {name=x1}
C {devices/lab_wire.sym} 110 -525 0 0 {name=l3 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 110 -325 0 0 {name=l5 sig_type=std_logic lab=VCCD}
C {/home/toind/work/vco_adc2/xschem/lib_count/count.sym} 290 -400 0 0 {name=X_UDC_2}
C {/home/toind/work/vco_adc2/xschem/lib_dco/dco.sym} 475 -400 0 0 {name=x2}
C {devices/lab_wire.sym} 450 -285 0 0 {name=l6 sig_type=std_logic lab=VCCA}
C {devices/lab_wire.sym} 490 -285 2 0 {name=l7 sig_type=std_logic lab=VCCD}
C {/home/toind/work/vco_adc2/xschem/lib_count/count.sym} 680 -400 0 0 {name=X_UDC_1}
C {/home/toind/work/vco_adc2/xschem/lib_qz/qz.sym} 870 -400 0 0 {name=X_Qtz_1}
