* expanding   symbol:  ../lib/DLib_UpDownCounter.sym # of pins=4
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/DLib_UpDownCounter.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/DLib_UpDownCounter.sch
.subckt DLib_UpDownCounter  UP  DOWN  setB  VGND  VNB  VPB  VPWR  Dout_buf
*.ipin DOWN
*.opin Dout_buf
*.ipin UP
*.ipin setB
X_inv_0 setB VGND VNB VPB VPWR setBi sky130_fd_sc_hd__inv_2
X_upFF UP_buf Q2N setBi VGND VNB VPB VPWR Q1 sky130_fd_sc_hd__dfstp_1
X_dwFF DWN_buf Q1_buf setBi VGND VNB VPB VPWR Q2 sky130_fd_sc_hd__dfstp_1
x5 Q1 Q2 VGND VNB VPB VPWR Dout sky130_fd_sc_hd__xor2_1
X_buf_3 UP VGND VNB VPB VPWR UP_buf sky130_fd_sc_hd__buf_2
X_buf_4 Q1 VGND VNB VPB VPWR Q1_buf sky130_fd_sc_hd__buf_2
X_buf_5 Dout VGND VNB VPB VPWR Dout_buf sky130_fd_sc_hd__buf_2
X_buf_6 DOWN VGND VNB VPB VPWR DWN_buf sky130_fd_sc_hd__buf_2
X_inv_1 Q2 VGND VNB VPB VPWR Q2N sky130_fd_sc_hd__inv_2
.ends


* expanding   symbol:  ../lib/DLib_Quantizer.sym # of pins=4
* sym_path: /home/manhtd/git/mpw-three/xschem/lib/DLib_Quantizer.sym
* sch_path: /home/manhtd/git/mpw-three/xschem/lib/DLib_Quantizer.sch
.subckt DLib_Quantizer  CLK  D    VGND  VNB  VPB  VPWR  Dout  FBack
*.ipin CLK
*.ipin D
*.opin Dout
*.opin FBack
x2 CLK net1 VGND VNB VPB VPWR Dout sky130_fd_sc_hd__dfxtp_1
x3 D VGND VNB VPB VPWR net1 sky130_fd_sc_hd__buf_2
x4 CLK_dly Dout VGND VNB VPB VPWR FBack_inv sky130_fd_sc_hd__nand2_1
x5 FBack_inv VGND VNB VPB VPWR FBack sky130_fd_sc_hd__inv_2
Xdly_1 CLK VGND VNB VPB VPWR DL1 sky130_fd_sc_hd__dlygate4sd3_1
Xdly_2 DL1 VGND VNB VPB VPWR clk_dly sky130_fd_sc_hd__dlygate4sd3_1
*Xdly_3 DL2 VGND VNB VPB VPWR DL3 sky130_fd_sc_hd__dlygate4sd3_1
*Xdly_4 DL3 VGND VNB VPB VPWR DL4 sky130_fd_sc_hd__dlygate4sd3_1
*Xdly_5 DL4 VGND VNB VPB VPWR DL5 sky130_fd_sc_hd__dlygate4sd3_1
*Xdly_6 DL5 VGND VNB VPB VPWR CLK_dly sky130_fd_sc_hd__dlygate4sd3_1
.ends


