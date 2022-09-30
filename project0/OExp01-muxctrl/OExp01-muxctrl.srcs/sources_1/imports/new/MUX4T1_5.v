`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/23 18:48:27
// Design Name: 
// Module Name: MUX4T1_5
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


module MUX4T1_5(
    input[4:0]I0,
    input[4:0]I1,
    input[4:0]I2,
    input[4:0]I3,
    input [1:0]s,
    output reg[4:0]O
    );
    
    always@(*) begin
    if(s==2'd0) O=I0;
    else if(s==2'd1) O=I1;
    else if(s==2'd2) O=I2;
    else if(s==2'd3) O=I3;
    end
    
endmodule