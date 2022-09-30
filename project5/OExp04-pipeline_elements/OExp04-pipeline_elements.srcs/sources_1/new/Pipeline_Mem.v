`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/30 16:31:44
// Design Name: 
// Module Name: Pipeline_Mem
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


module Pipeline_Mem(
    input zero_in_Mem,
    input Branch_in_Mem,
    input BranchN_in_Mem,
    input [1:0]Jump_in_Mem,
    output PCSrc
    );

    assign PCSrc = (((~zero_in_Mem) & BranchN_in_Mem) | ((zero_in_Mem) & Branch_in_Mem)) | Jump_in_Mem[0] | Jump_in_Mem[1];

endmodule
