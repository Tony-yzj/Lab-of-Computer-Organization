`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/16 18:17:32
// Design Name: 
// Module Name: RV_INT_tb
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


module RV_INT_tb(

    );
    reg clk;
    reg reset;
    reg INT;
    reg ecall;
    reg mret;
    reg ill_instr;
    reg[31:0]pc_next;
    wire[31:0]pc;
    RV_int u(
    .clk(clk),
    .reset(reset),
    .INT(INT),
    .ecall(ecall),
    .mret(mret),
    .ill_instr(ill_instr),
    .pc_next(pc_next),
    .pc(pc)
    );
    always  #10 clk = ~clk;
    initial begin
    clk = 0;
    reset = 1;
    INT = 0;
    ecall = 0;
    mret = 0;
    ill_instr = 0;
    pc_next = 32'h10;
    #100;
    reset = 0;
    INT = 1;
    #100;
    INT = 0;
    pc_next = 32'h20;
    #100;
    pc_next = 32'h24;
    #100;
    mret = 1;
    end

endmodule
