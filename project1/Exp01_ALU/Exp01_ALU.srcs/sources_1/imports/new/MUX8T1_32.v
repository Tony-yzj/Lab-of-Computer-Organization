`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/23 18:48:27
// Design Name: 
// Module Name: MUX8T1_32
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


module MUX8T1_32(
    input[31:0]I0,
    input[31:0]I1,
    input[31:0]I2,
    input[31:0]I3,
    input[31:0]I4,
    input[31:0]I5,
    input[31:0]I6,
    input[31:0]I7,
    input [2:0]s,
    output reg[31:0]O
    );
    
    always@(*) begin
    if(s==3'd0)  O=I0;
    else if(s==3'd1)  O=I1;
    else if(s==3'd2)  O=I2;
    else if(s==3'd3)  O=I3;
    else if(s==3'd4)  O=I4;
    else if(s==3'd5)  O=I5;
    else if(s==3'd6)  O=I6;
    else   O=I7;
    end
    
endmodule