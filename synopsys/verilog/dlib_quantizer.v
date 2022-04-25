// `include "/home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v"
// `include "/home/dkits/efabless/mpw-5/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v"
‘define GND 0
‘define VDD 1.8
module dlib_quantizer (
  output wire Dout,
  output wire FBack,
  input wire CLK,
  input wire D
);
parameter VGND = GND ;
parameter VNB = GND ;
parameter VPB = VDD ;
parameter VPWR = VDD ;
wire DL4  ;
wire DL5  ;
wire net1  ;
wire CLK_dly  ;
wire DL1  ;
wire FBack_inv  ;
wire DL2  ;
wire DL3  ;

sky130_fd_sc_hd__dlygate4sd3_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
// .prefix ( sky130_fd_sc_hd__ )
)
Xdly_1 ( 
 .A( CLK ),
 .X( DL1 )
);


sky130_fd_sc_hd__dfxtp_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
x2 ( 
 .CLK( CLK ),
 .D( net1 ),
 .Q( Dout )
);


sky130_fd_sc_hd__buf_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
x3 ( 
 .A( D ),
 .X( net1 )
);


sky130_fd_sc_hd__nand2_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
x4 ( 
 .A( CLK_dly ),
 .B( Dout ),
 .Y( FBack_inv )
);


sky130_fd_sc_hd__inv_2
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
x5 ( 
 .A( FBack_inv ),
 .Y( FBack )
);


sky130_fd_sc_hd__dlygate4sd3_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
Xdly_2 ( 
 .A( DL1 ),
 .X( DL2 )
);


sky130_fd_sc_hd__dlygate4sd3_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
Xdly_3 ( 
 .A( DL2 ),
 .X( DL3 )
);


sky130_fd_sc_hd__dlygate4sd3_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
Xdly_4 ( 
 .A( DL3 ),
 .X( DL4 )
);


sky130_fd_sc_hd__dlygate4sd3_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
Xdly_5 ( 
 .A( DL4 ),
 .X( DL5 )
);


sky130_fd_sc_hd__dlygate4sd3_1
#(
.VGND ( VGND ) ,
.VNB ( VNB ) ,
.VPB ( VPB ) ,
.VPWR ( VPWR ) 
//.prefix ( sky130_fd_sc_hd__ )
)
Xdly_6 ( 
 .A( DL5 ),
 .X( CLK_dly )
);

endmodule
