`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/28 16:30:14
// Design Name: 
// Module Name: OExp01_muxctrl
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


module OExp01_muxctrl(
input wire [4:0]I0,
input wire [4:0]I1,
input wire [1:0]s,
input wire s1,
input wire [2:0]s2,
output wire [4:0]o_0 );
wire [4:0] MUX2T1_5_0_o;
wire [4:0] MUX2T1_5_1_o;
wire [7:0] MUX8T1_8_0_o;
MUX2T1_5 MUX2T1_5_0
(.I0(I0),
.I1(I1),
.O(MUX2T1_5_0_o),
.s(s1));
MUX2T1_5 MUX2T1_5_1
(.I0(I0),
.I1(I1),
.O(MUX2T1_5_1_o),
.s(1'b1));
MUX4T1_5 MUX4T1_5_1
(.I0(MUX8T1_8_0_o[3:0]),
.I1({MUX2T1_5_1_o[0],MUX2T1_5_0_o[3:0]}),
.I2(5'b1),
.I3(5'b0),
.O(o_0),
.s(s));
MUX8T1_8 MUX8T1_8_0
(.I0({MUX2T1_5_0_o[3:0],MUX2T1_5_1_o[3:0]}),
.I1({MUX2T1_5_1_o[3:0],MUX2T1_5_0_o[3:0]}),
.I2(8'b1),
.I3(8'b1),
.I4(8'b1),
.I5(8'b1),
.I6(8'b1),
.I7(8'b1),
.O(MUX8T1_8_0_o),
.s(s2));
endmodule
