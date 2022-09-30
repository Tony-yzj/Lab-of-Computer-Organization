`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/23 16:52:39
// Design Name: 
// Module Name: MUX2T1_5_tb
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


module MUX2T1_5_tb(

    );
    reg[4:0]I0,I1;
    wire[4:0]O;
    reg s;
    MUX2T1_5 MUX(.I0(I0), .I1(I1), .s(s), .O(O));
    
    initial begin
    s = 0;
    I1 = 5'b00001;
    I0 = 5'b00110;
    #50
    s = 0;
    #50
    s = 1;
    #50
    I1 = 5'b10000;
    I0 = 5'b01000;
    #50
    s = 0;
    end
endmodule
