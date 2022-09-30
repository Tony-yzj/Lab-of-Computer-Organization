`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/07 15:59:01
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [2:0] ALU_operation,
    input [31:0] B,
    output reg [31:0] res,
    output zero
);
parameter one = 32'h00000001, zero_0 = 32'h00000000;
always @ (*)
    case (ALU_operation) 
    3'b000: res = A&B;
    3'b001: res = A|B;
    3'b010: res = A+B;
    3'b011: res = A^B;
    3'b100: res = ~(A|B);
    3'b101: res = A>>B[4:0];
    3'b110: res = A-B;
    3'b111: res = (A<B)?one:zero_0;
    default: res = 32'hx;
    endcase
    
    assign zero = (res==0)? 1: 0;
endmodule
