`include "/home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v"
`include "/home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v"
‘define GND 0
‘define VDD 1.8

module dlib_updowncounter (
  output wire Dout_buf,
  input wire DOWN,
  input wire UP,
  input wire setB
);
parameter VGND = GND ;
parameter VNB = GND ;
parameter VPB = VDD ;
parameter VPWR = VDD ;
wire Q2N  ;
wire Q1  ;
wire Q2  ;
wire UP_buf  ;
wire setBi  ;
wire DWN_buf  ;
wire Q1_buf  ;
wire Dout  ;

sky130_fd_sc_hd__inv_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_inv_0 ( 
 .A( setB ),
 .Y( setBi )
);


sky130_fd_sc_hd__dfstp_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_upFF ( 
 .CLK( UP_buf ),
 .D( Q2N ),
 .SET_B( setBi ),
 .Q( Q1 )
);


sky130_fd_sc_hd__dfstp_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_dwFF ( 
 .CLK( DWN_buf ),
 .D( Q1_buf ),
 .SET_B( setBi ),
 .Q( Q2 )
);


sky130_fd_sc_hd__xor2_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
x5 ( 
 .A( Q1 ),
 .B( Q2 ),
 .X( Dout )
);


sky130_fd_sc_hd__buf_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_buf_3 ( 
 .A( UP ),
 .X( UP_buf )
);


sky130_fd_sc_hd__buf_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_buf_4 ( 
 .A( Q1 ),
 .X( Q1_buf )
);


sky130_fd_sc_hd__buf_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_buf_5 ( 
 .A( Dout ),
 .X( Dout_buf )
);


sky130_fd_sc_hd__buf_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_buf_6 ( 
 .A( DOWN ),
 .X( DWN_buf )
);


sky130_fd_sc_hd__inv_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) //,
//.prefix ( sky130_fd_sc_hd__ )
)
X_inv_1 ( 
 .A( Q2 ),
 .Y( Q2N )
);

endmodule
