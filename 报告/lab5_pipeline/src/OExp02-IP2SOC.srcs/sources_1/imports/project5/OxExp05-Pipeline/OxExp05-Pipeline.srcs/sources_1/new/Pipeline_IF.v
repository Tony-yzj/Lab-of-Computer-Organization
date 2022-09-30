`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/16 15:26:24
// Design Name: 
// Module Name: Pipeline_IF
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


module Pipeline_IF( 
    input clk_IF, //时钟
    input rst_IF, //复位
    input en_IF, //使能
    input [31:0] PC_in_IF, //取指令PC输入
    input PCSrc, //PC输入选择
    output reg [31:0] PC_out_IF //PC输出
); 
always @(1


endmodule
