`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/07 16:17:36
// Design Name: 
// Module Name: regs_tb
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


module regs_tb(
    );
    reg clk, rst, RegWrite;
    reg [4:0] Rs1_addr, Rs2_addr, Wt_addr;
    reg [31:0] Wt_data;
    wire [31:0] Rs1_data, Rs2_data;

regs regs1(
    .clk(clk), 
    .rst(rst), 
    .RegWrite(RegWrite), 
    .Rs1_addr(Rs1_addr), 
    .Rs2_addr(Rs2_addr), 
    .Wt_addr(Wt_addr),
    .Wt_data(Wt_data),
    .Rs1_data(Rs1_data), 
    .Rs2_data(Rs2_data)
    );
    always begin
    #10;
    clk = ~clk;
    end
initial begin
    clk = 0;
    rst = 1;
    RegWrite = 0;
    Wt_data = 0;
    Wt_addr = 0;
    Rs1_addr = 0;
    Rs2_addr = 0;
    #100;
    rst = 0;
    RegWrite=1;
    Wt_addr[4:0]=5'h05;
    Wt_data[31:0]=32'ha5a5a5a5;
    #50;
    Wt_addr[4:0]=5'h0a;
    Wt_data[31:0]=32'h5a5a5a5a;
    #50;
    RegWrite=0;
    Rs1_addr[4:0]=5'h05;
    Rs2_addr[4:0]=5'h0a;
end    
endmodule
