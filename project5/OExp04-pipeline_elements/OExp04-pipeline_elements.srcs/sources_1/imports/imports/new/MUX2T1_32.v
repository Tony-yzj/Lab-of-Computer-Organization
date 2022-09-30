`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/23 18:48:27
// Design Name: 
// Module Name: MUX2T1_32
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


module MUX2T1_32(
    input[31:0]I0,
    input[31:0]I1,
    input s,
    output[31:0]O
    );
    
    assign O = s?I1:I0;
endmodule