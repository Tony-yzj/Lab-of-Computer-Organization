`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/07 16:54:33
// Design Name: 
// Module Name: tb_seq
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tb_seq();
     reg clk;
	 reg reset;
	 reg in; 
	 wire out;
	 
 seq seq_u1(
         .clk(clk),
         .reset(reset),
         .in(in),
         .out(out)
        );
 always #20 clk = ~clk;
 
 initial
     begin
	     clk = 0;
		 reset = 0;
		 #20 reset = 1;
	end
	
 //011100101
 initial
     begin
	     in = 0;
		 #30
		 in = 1;
		 #40
		 in = 1;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 0;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 1;
		 #40
		 $finish;
		 end

endmodule
