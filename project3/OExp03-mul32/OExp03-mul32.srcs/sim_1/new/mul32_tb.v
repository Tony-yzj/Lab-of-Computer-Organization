`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/21 17:30:26
// Design Name: 
// Module Name: mul32_tb
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


module mul32_tb();
    reg clk;
    reg rst;
    reg[31:0] multiplicand;
    reg[31:0] multiplier;
    reg start;
    wire[63:0] product;
    wire finish;
    initial begin
    clk = 0;
    rst = 1;
    multiplicand = 0;
    multiplier   = 0;
    start        = 0;
    #100
    rst = 0;
    start = 1;
    multiplicand = 32'd2;
    multiplier   = 32'd3;
    #350
    start = 0;
    #350
    start = 1;
    multiplicand = 32'd10;
    multiplier   = 32'd8;
    #350
    start = 0;
    #350
    start = 1;
    multiplicand = 32'd9;
    multiplier   = 32'd9;
    #350
    start = 0;
    #350
    start = 1;
    multiplicand = 32'd50;
    multiplier   = 32'd6;
    #350
    start = 0;
    #350
    start = 1;
    multiplicand = 32'd6;
    multiplier   = 32'd60;
    #350
    start = 0;
    #4000 $finish();
    end
    
    always #5 clk = ~clk;
    
    mul32 mul32_u(
    clk,rst,multiplicand,multiplier,start,product,finish
    );
endmodule
