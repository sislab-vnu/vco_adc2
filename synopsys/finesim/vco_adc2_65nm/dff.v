`timescale 1ns/1ps
module top;
   integer fd;

   dff #(.finesim_a2d("VDD12"), .finesim_d2a("VDD12")) I1 (clk,dout, q);


   initial begin
      $finesim_config( ,
		       ".option progress=1", // show the progress of FineSim Pro
		       ".A2D VDD12 VL=0.6 VH=0.6 TX=0n",
		       ".D2A VDD12 VL=0 VH=1.2",
		       ".finesim -np 6 -o vco_adc_fs_sim Spice/vco_adc2_65nm_crst_tb.sp" // run commend of FineSim Pro
		       );

      $finesim_instance(I1,"X_DFF"); // mapping each instance
      $dumpfile("vco_adc2.vcd");
      $dumpvars(0, top);
   end
   initial begin
      fd = $fopen("out.txt", "w");
   end

   always @(posedge clk)
     begin
	$fwrite(fd, dout);
	$fwrite(fd, "\n");
     end
endmodule
module dff #(parameter finesim_a2d ="VDD12",
            parameter finesim_d2a="VDD12")
            (clk, d, q);
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
