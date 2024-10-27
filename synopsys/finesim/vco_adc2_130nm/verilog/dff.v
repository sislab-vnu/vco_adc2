`timescale 1ns/1ps
module top;
   integer fd;

   dff I1 (CLK,Dout, Q);

   
   initial begin
      $finesim_config( ,
		       ".option progress=1", // show the progress of FineSim Pro
		       ".A2D VDD18 VL=0.9 VH=0.9 TX=0n",
		       ".D2A VDD18 VL=0 VH=1.8",
		       ".finesim -np 6 -o vco_adc_fs_sim spice/vco_adc2_130nm_tb.sp" // run commend of FineSim Pro
		       );
      $finesim_instance(I1,"X_DFF"); // mapping each instance
      $dumpfile("vco_adc2.vcd");
      $dumpvars(0, top);
   end
   initial begin
      fd = $fopen("out.txt", "w");
   end

   always @(posedge CLK)
     begin
	$fwrite(fd, Dout);
	$fwrite(fd, "\n");
     end
endmodule
module dff(clk, d, q);
   input d; // Data input 
   input clk; // clock input 
   output q; // output Q
   reg 	  q_reg;
   
   always @(posedge clk) 
     begin
	q_reg <= d; 
     end 
   assign q = q_reg;
endmodule 
