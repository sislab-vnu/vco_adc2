v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 580 -500 580 0 {}
L 4 0 -500 0 0 {}
L 4 -0 -500 580 -500 {}
L 4 0 -0 580 -0 {}
N 240 -410 300 -410 { lab=setBi}
N 240 -430 300 -430 { lab=Q2N}
N 240 -450 300 -450 { lab=UP_buf}
N 480 -450 540 -450 { lab=Q1}
N 240 -170 300 -170 { lab=setBi}
N 240 -190 300 -190 { lab=Q1_buf}
N 480 -210 540 -210 { lab=Q2}
N 200 -310 260 -310 { lab=setBi}
N 420 -350 480 -350 { lab=Q1_buf}
N 280 -350 340 -350 { lab=Q1}
N 290 -60 350 -60 { lab=Dout}
N 280 -280 340 -280 { lab=Q2N}
N 420 -280 480 -280 { lab=Q2}
N 200 -210 300 -210 { lab=DWN_buf}
N 200 -450 240 -450 { lab=UP_buf}
N 110 -80 170 -80 { lab=Q1}
N 110 -40 170 -40 { lab=Q2}
N 430 -60 460 -60 { lab=Dout_buf}
N 100 -450 120 -450 { lab=UP}
N 100 -210 120 -210 { lab=DOWN}
N 100 -310 120 -310 { lab=setB}
N 240 -560 320 -560 {
lab=GND}
N 240 -600 320 -600 {
lab=VCCD}
C {sky130_stdcells/inv_2.sym} 160 -310 0 0 {name=X_inv_0 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfstp_1.sym} 390 -430 0 0 {name=X_upFF VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfstp_1.sym} 390 -190 0 0 {name=X_dwFF VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 230 -60 0 0 {name=x5 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 290 -430 0 0 {name=l2 sig_type=std_logic lab=Q2N}
C {devices/lab_wire.sym} 210 -310 2 0 {name=l8 sig_type=std_logic lab=setBi}
C {sky130_stdcells/buf_2.sym} 160 -450 0 0 {name=X_buf_3 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 290 -450 0 0 {name=X_buf_2 sig_type=std_logic lab=UP_buf}
C {devices/lab_wire.sym} 290 -410 0 0 {name=l1 sig_type=std_logic lab=setBi}
C {devices/lab_wire.sym} 490 -450 2 0 {name=l3 sig_type=std_logic lab=Q1}
C {sky130_stdcells/buf_2.sym} 380 -350 0 0 {name=X_buf_4 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 320 -350 0 0 {name=l9 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 430 -350 2 0 {name=l10 sig_type=std_logic lab=Q1_buf}
C {devices/lab_wire.sym} 290 -170 0 0 {name=l4 sig_type=std_logic lab=setBi}
C {devices/lab_wire.sym} 290 -190 0 0 {name=l5 sig_type=std_logic lab=Q1_buf}
C {sky130_stdcells/buf_2.sym} 390 -60 0 0 {name=X_buf_5 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 330 -60 0 0 {name=l6 sig_type=std_logic lab=Dout}
C {sky130_stdcells/buf_2.sym} 160 -210 0 0 {name=X_buf_6 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 290 -210 0 0 {name=l14 sig_type=std_logic lab=DWN_buf}
C {devices/lab_wire.sym} 490 -210 2 0 {name=l15 sig_type=std_logic lab=Q2}
C {sky130_stdcells/inv_2.sym} 380 -280 0 1 {name=X_inv_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 440 -280 0 1 {name=l16 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 330 -280 2 1 {name=l17 sig_type=std_logic lab=Q2N}
C {devices/lab_wire.sym} 150 -80 0 0 {name=l13 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 150 -40 2 1 {name=l18 sig_type=std_logic lab=Q2}
C {devices/ipin.sym} 100 -210 0 0 {name=p1 lab=DOWN}
C {devices/opin.sym} 460 -60 0 0 {name=p2 lab=Dout_buf}
C {devices/ipin.sym} 240 -560 0 0 {name=p3 lab=GND}
C {devices/ipin.sym} 100 -310 0 0 {name=p4 lab=setB}
C {devices/ipin.sym} 100 -450 0 0 {name=p6 lab=UP}
C {devices/ipin.sym} 240 -600 0 0 {name=p5 lab=VCCD}
C {devices/lab_wire.sym} 300 -600 0 0 {name=X_buf_1 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 300 -560 0 0 {name=X_buf_7 sig_type=std_logic lab=GND}
