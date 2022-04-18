v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -300 200 -260 { lab=set}
N 280 -200 320 -200 { lab=Dout}
N 80 -220 120 -220 { lab=UP}
N 80 -180 120 -180 { lab=DOWN}
N 340 -300 340 -260 { lab=VCCD}
N 420 -300 420 -260 { lab=UP}
N 340 -100 340 -80 { lab=set}
N 420 -160 420 -140 { lab=DOWN}
C {/home/manhtd/working/git/mpw-three/xschem/lib/DLib_UpDownCounter.sym} 200 -200 0 0 {name=X_UDC_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD}
C {devices/lab_wire.sym} 110 -220 0 0 {name=l1 sig_type=std_logic lab=UP}
C {devices/lab_wire.sym} 110 -180 0 0 {name=l2 sig_type=std_logic lab=DOWN}
C {devices/lab_wire.sym} 290 -200 2 0 {name=l3 sig_type=std_logic lab=Dout}
C {devices/lab_pin.sym} 200 -280 0 0 {name=l4 sig_type=std_logic lab=set}
C {devices/vsource.sym} 420 -230 0 0 {name=Vup value="DC=0 PULSE( 0.7 1.8 40n 1n 0.5n 40n 100n )"}
C {devices/vsource.sym} 420 -110 0 0 {name=Vdwn value="DC=0 PULSE( 0 1.8 0 0.1n 0.1n 17n 41.67n )"}
C {devices/vsource.sym} 340 -50 0 0 {name=Vset value="DC=0 PULSE( 0 1.8 0 0.1n 0.1n 20n 1 )"}
C {devices/gnd.sym} 420 -200 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 420 -80 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 340 -20 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 340 -230 0 0 {name=V4 value=DC=1.8}
C {devices/gnd.sym} 340 -200 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 340 -90 2 0 {name=l9 sig_type=std_logic lab=set}
C {devices/lab_pin.sym} 420 -150 2 0 {name=l10 sig_type=std_logic lab=DOWN}
C {devices/lab_pin.sym} 420 -280 2 0 {name=l11 sig_type=std_logic lab=UP}
C {devices/lab_pin.sym} 340 -280 0 0 {name=l12 sig_type=std_logic lab=VCCD}
C {devices/code.sym} 50 -110 0 0 {name=Lib only_toplevel=false value="
** Library on VNU server
.lib /home/dkits/efabless/mpw-5/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
** Library on Home PC
*.lib /home/dkit/efabless/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.inc /home/dkit/efabless/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code.sym} 190 -110 0 0 {name=control only_toplevel=false value=".param mc_mm_switch=0
.control
   TRAN 0.1n 10u 
   plot set/2+3 UP/2+2 Down/2+1 Dout/2+0.05
.endc
"}
