`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/23 19:35:08
// Design Name: 
// Module Name: ACD32_tb
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


module ACD32_tb(
    
    );
    reg[31:0] A,B;
    wire[32:0] S;
    reg CO;
    ADC32 ACD(
        .A(A), 
        .B(B),
        .CO(CO),
        .S(S)
        );
    initial begin
    CO=0;
    A=32'd10;
    B=32'd5;
    #50
    CO=1;
    end
endmodule
