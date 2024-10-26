v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -300 130 -260 { lab=Vbs_34}
N 380 -300 380 -260 { lab=Anlg_in}
N 460 -220 460 -180 { lab=ENB}
N 540 -140 540 -100 { lab=CLK}
N 50 -300 50 -260 { lab=Vbs_12}
N 290 -280 290 -260 {
lab=VCCD}
N 210 -280 210 -260 {
lab=VCCA}
N 220 -640 220 -590 {
lab=Vbs_12}
N 240 -640 240 -590 {
lab=VCCA}
N 180 -640 220 -640 {
lab=Vbs_12}
N 280 -640 280 -590 {
lab=#net1}
N 300 -640 300 -590 {
lab=Vbs_34}
N 300 -640 340 -640 {
lab=Vbs_34}
N 340 -530 380 -530 {
lab=Dout}
N 140 -550 180 -550 {
lab=CLK}
N 140 -490 180 -490 {
lab=Anlg_in}
N 140 -430 180 -430 {
lab=ENB}
N 260 -390 260 -360 {
lab=GND}
C {devices/lab_pin.sym} 160 -550 0 0 {name=l2 sig_type=std_logic lab=CLK}
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
C {devices/vsource.sym} 210 -230 0 0 {name=VCCA value="DC=1.8"}
C {devices/gnd.sym} 210 -200 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 290 -230 0 0 {name=VCCD value="DC=1.8"}
C {devices/gnd.sym} 290 -200 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 380 -230 0 0 {name=Vin value="DC=0 SIN(0.5 vsin sig_freq 20u 0 0)"}
C {devices/gnd.sym} 380 -200 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 460 -150 0 0 {name=Venb value="DC=0 PULSE( 0 1.8 0 20n 20n 200n 1 )"}
C {devices/gnd.sym} 460 -120 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 540 -70 0 0 {name=Vclk value="DC=0 PULSE( 0 1.8 0 1n 1n 19.835n 41.67n )"}
C {devices/gnd.sym} 540 -40 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 50 -230 0 0 {name=Vbs_12 value="DC=0.4"}
C {devices/gnd.sym} 50 -200 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 200 -640 2 1 {name=l10 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 320 -640 0 1 {name=l11 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 160 -490 0 0 {name=l17 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 160 -430 0 0 {name=l18 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 370 -530 0 1 {name=l19 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 460 -190 0 1 {name=l23 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 50 -270 0 1 {name=l24 sig_type=std_logic lab=Vbs_12}
C {devices/lab_wire.sym} 130 -270 0 1 {name=l25 sig_type=std_logic lab=Vbs_34}
C {devices/lab_wire.sym} 380 -270 0 1 {name=l28 sig_type=std_logic lab=Anlg_in}
C {devices/lab_pin.sym} 540 -120 2 0 {name=l29 sig_type=std_logic lab=CLK}
C {devices/code_shown.sym} 840 -230 0 0 {name=VCO_param only_toplevel=false value="
.param l_main=3.65
.param l_aux=3.65
.param wp=5
.param wn=4
.param vsin=0.4
.param sig_freq=5k"}
C {devices/code.sym} 30 -130 0 0 {name=lib_def
only_toplevel=false 
value=tcleval(".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.lib $::SKYWATER_MODELS/sky130.lib.spice tt")

place=header}
C {devices/vdd.sym} 290 -280 0 0 {name=l12 lab=VCCD}
C {devices/vdd.sym} 210 -280 0 0 {name=l13 lab=VCCA}
C {/home/toind/work/sislab_vnu/vco_adc2/xschem/system/system.sym} 260 -490 0 0 {name=x1}
C {devices/gnd.sym} 260 -360 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} 240 -640 0 0 {name=l1 lab=VCCA}
C {devices/vdd.sym} 280 -640 0 0 {name=l14 lab=VCCD}
