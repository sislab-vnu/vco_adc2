v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -280 480 -280 {
lab=UP}
N 280 -250 310 -250 {
lab=ENB}
N 280 -250 280 -200 {
lab=ENB}
N 590 -380 590 -320 {
lab=ENB}
N 370 -220 370 -170 {
lab=GND}
N 560 -200 560 -170 {
lab=GND}
N 450 -240 480 -240 {
lab=DOWN}
N 450 -240 450 -170 {
lab=DOWN}
N 240 -310 310 -310 {
lab=Anlg_in}
N 370 -420 370 -340 {
lab=VDDA}
N 370 -420 530 -420 {
lab=VDDA}
N 530 -420 530 -320 {
lab=VDDA}
N 450 -460 450 -420 {
lab=VDDA}
N 640 -260 720 -260 {
lab=Dout}
N 370 -170 370 -100 {
lab=GND}
N 370 -100 450 -100 {
lab=GND}
N 450 -100 560 -100 {
lab=GND}
N 560 -170 560 -100 {
lab=GND}
N 60 -130 60 -110 {
lab=GND}
N 60 -230 60 -190 {
lab=Anlg_in}
N -210 -140 -210 -120 {
lab=GND}
N -210 -240 -210 -200 {
lab=VDDA}
N 50 60 50 80 {
lab=GND}
N 50 -40 50 0 {
lab=ENB}
N -210 50 -210 70 {
lab=GND}
N -210 -50 -210 -10 {
lab=DOWN}
C {ALib_VCO.sym} 370 -280 0 0 {name=x2}
C {DLib_UpDownCounter.sym} 560 -260 0 0 {name=x1}
C {devices/code.sym} -20 -480 0 0 {name=library only_toplevel=false value=
"
.lib /home/dkits/openpdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/openpdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code.sym} 180 -480 0 0 {name=control only_toplevel=false value=
"
.control
set num_threads=10
save all
TRAN 1n 10u
.endc
"}
C {devices/gnd.sym} 450 -100 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -160 0 0 {name=V1 value="DC=0 sin(0.8 0.4 0.5Meg 0 0 0)"}
C {devices/lab_wire.sym} 280 -210 0 0 {name=p1 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 590 -370 2 0 {name=p2 sig_type=std_logic lab=ENB}
C {devices/lab_wire.sym} 270 -310 0 0 {name=p3 sig_type=std_logic lab=Anlg_in}
C {devices/lab_wire.sym} 450 -460 0 0 {name=p4 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 710 -260 0 0 {name=p5 sig_type=std_logic lab=Dout}
C {devices/lab_wire.sym} 450 -180 0 0 {name=p6 sig_type=std_logic lab=DOWN}
C {devices/lab_wire.sym} 470 -280 0 0 {name=p7 sig_type=std_logic lab=UP}
C {devices/gnd.sym} 60 -110 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 60 -220 0 0 {name=p8 sig_type=std_logic lab=Anlg_in}
C {devices/vsource.sym} -210 -170 0 0 {name=V2 value="DC=1.8"}
C {devices/gnd.sym} -210 -120 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -210 -230 0 0 {name=p9 sig_type=std_logic lab=VDDA}
C {devices/vsource.sym} 50 30 0 0 {name=V3 value="DC=0 PULSE(0 1.8 0 0.1n 0.1n 20n 1)"}
C {devices/gnd.sym} 50 80 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 50 -30 0 0 {name=p10 sig_type=std_logic lab=ENB}
C {devices/vsource.sym} -210 20 0 0 {name=V4 value="DC=0 PULSE(0 1.8 0 0.1n 0.1n 17n 41.67n)"}
C {devices/gnd.sym} -210 70 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -210 -40 0 0 {name=p11 sig_type=std_logic lab=DOWN}
