`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 20:42:13
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
    input clk_IF,
    input rst_IF,
    input en_IF,
    input [31:0]PC_in_IF,
    input PCSrc,
    output [31:0]PC_out_IF
    );
    
    wire[31:0] U0_out, U2_out;
    MUX2T1_32 U0(
        .I0(U2_out),
        .I1(PC_in_IF),
        .s(PCSrc),
        .O(U0_out)
    );

    REG32 U1(
        .clk(clk_IF),
        .rst(rst_IF),
        .CE(en_IF),
        .D(U0_out),
        .Q(PC_out_IF)
    );

    add_32 U2(
        .a(32'h4),
        .b(PC_out_IF),
        .c(U2_out)
    );

endmodule
