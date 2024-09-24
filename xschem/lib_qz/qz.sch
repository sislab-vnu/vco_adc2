v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 580 60 600 60 { lab=FBack_inv}
N 100 -40 120 -40 { lab=DL1}
N 300 -40 320 -40 { lab=DL3}
N 500 -40 520 -40 { lab=DL5}
N 200 -40 220 -40 { lab=DL2}
N 400 -40 420 -40 { lab=DL4}
N -20 -40 20 -40 { lab=CLK}
N 600 -40 640 -40 { lab=CLK_dly}
N 100 60 120 60 { lab=#net1}
N 120 20 120 40 { lab=CLK}
N 40 20 120 20 { lab=CLK}
N 420 40 460 40 { lab=CLK_dly}
N 420 80 460 80 { lab=Dout}
N 0 60 20 60 { lab=D}
N 300 40 320 40 { lab=Dout}
N 680 60 700 60 { lab=FBack}
N 240 -230 320 -230 {
lab=VCCD}
N 240 -200 320 -200 {
lab=GND}
C {sky130_stdcells/dlygate4sd3_1.sym} 60 -40 0 0 {name=Xdly_1 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 210 50 0 0 {name=x2 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_2.sym} 60 60 0 0 {name=x3 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 520 60 0 0 {name=x4 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 640 60 0 0 {name=x5 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 590 60 3 0 {name=l1 sig_type=std_logic lab=FBack_inv}
C {sky130_stdcells/dlygate4sd3_1.sym} 160 -40 0 0 {name=Xdly_2 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 110 -40 3 0 {name=l2 sig_type=std_logic lab=DL1}
C {sky130_stdcells/dlygate4sd3_1.sym} 260 -40 0 0 {name=Xdly_3 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 360 -40 0 0 {name=Xdly_4 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 310 -40 3 0 {name=l3 sig_type=std_logic lab=DL3}
C {sky130_stdcells/dlygate4sd3_1.sym} 460 -40 0 0 {name=Xdly_5 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dlygate4sd3_1.sym} 560 -40 0 0 {name=Xdly_6 VGND=GND VNB=GND VPB=VCCD VPWR=VCCD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 510 -40 3 0 {name=l4 sig_type=std_logic lab=DL5}
C {devices/lab_pin.sym} 210 -40 3 0 {name=l5 sig_type=std_logic lab=DL2}
C {devices/lab_pin.sym} 410 -40 3 0 {name=l6 sig_type=std_logic lab=DL4}
C {devices/ipin.sym} 40 20 0 0 {name=p1 lab=CLK}
C {devices/lab_wire.sym} 10 -40 0 0 {name=l8 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} 0 60 0 0 {name=p2 lab=D}
C {devices/opin.sym} 320 40 0 0 {name=p3 lab=Dout}
C {devices/lab_wire.sym} 610 -40 2 0 {name=l9 sig_type=std_logic lab=CLK_dly}
C {devices/lab_wire.sym} 450 40 2 1 {name=l10 sig_type=std_logic lab=CLK_dly}
C {devices/lab_wire.sym} 450 80 2 1 {name=l11 sig_type=std_logic lab=Dout}
C {devices/opin.sym} 700 60 0 0 {name=p4 lab=FBack}
C {devices/ipin.sym} 240 -230 0 0 {name=p5 lab=VCCD}
C {devices/ipin.sym} 240 -200 0 0 {name=p6 lab=GND}
C {devices/lab_wire.sym} 310 -230 0 0 {name=l7 sig_type=std_logic lab=VCCD}
C {devices/lab_wire.sym} 310 -200 0 0 {name=l12 sig_type=std_logic lab=GND}
