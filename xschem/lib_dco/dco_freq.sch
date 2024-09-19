v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -40 60 -40 { lab=D}
N 240 -40 280 -40 { lab=Q_N}
N 240 -60 250 -60 { lab=clkDiv2}
N 50 -60 60 -60 { lab=clk}
N 20 -110 60 -110 { lab=Q_N_buf}
N 20 -130 60 -130 { lab=clkinv}
N 240 -130 280 -130 { lab=D}
N 190 -180 230 -180 { lab=clkinv}
N 70 -180 110 -180 { lab=clk}
N 70 -240 110 -240 { lab=Q_N}
N 190 -240 230 -240 { lab=Q_N_buf}
C {devices/lab_wire.sym} 250 -40 2 0 {name=l1 sig_type=std_logic lab=Q_N}
C {devices/lab_wire.sym} 40 -40 2 0 {name=l2 sig_type=std_logic lab=D}
C {devices/opin.sym} 250 -60 0 0 {name=p1 lab=clkDiv2}
C {devices/ipin.sym} 50 -60 0 0 {name=p2 lab=clk}
C {devices/lab_wire.sym} 50 -110 0 0 {name=l4 sig_type=std_logic lab=Q_N_buf}
C {devices/lab_wire.sym} 50 -130 0 0 {name=l5 sig_type=std_logic lab=clkinv}
C {devices/lab_wire.sym} 270 -130 0 0 {name=l3 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} 200 -180 2 0 {name=l6 sig_type=std_logic lab=clkinv}
C {devices/lab_wire.sym} 100 -180 0 0 {name=l7 sig_type=std_logic lab=clk}
C {sky130_stdcells/dfxbp_2.sym} 150 -50 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 150 -120 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 150 -180 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_4.sym} 150 -240 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 100 -240 0 0 {name=l8 sig_type=std_logic lab=Q_N}
C {devices/lab_wire.sym} 200 -240 2 0 {name=l9 sig_type=std_logic lab=Q_N_buf}
