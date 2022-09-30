`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/09 18:50:13
// Design Name: 
// Module Name: RV_int
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


module RV_int(
    input wire clk,
    input wire reset,
    input wire INT,
    input wire ecall,
    input wire mret,
    input wire ill_instr,
    input wire[31:0]pc_next,
    output reg[31:0]pc
    );
    
    reg [31:0] MTVEC [2:0];
    reg [31:0]MEPC;
    initial begin
    MTVEC[0] = 32'h00000004;
    MTVEC[1] = 32'h00000008;
    MTVEC[2] = 32'h0000000c;
    end
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            MEPC<= 32'h00000000;
        end
        else if(INT) begin
        MEPC <=  pc_next;
        end
        else if(ecall) begin
        MEPC <= pc_next;
        end
        else if(ill_instr) begin
        MEPC <= pc_next;
        end
    end
     always @(*) begin
           if(reset) begin
               pc<= 32'h00000000;
           end
           else if(INT) begin
           pc <= 32'h0000000c;
           end
           else if(ecall) begin
           pc <= 32'h00000008;
           end
           else if(ill_instr) begin
           pc <= 32'h00000004;
           end
           else if(mret)
           pc <= MEPC;
           else begin
           pc <= pc_next;  
           end
       end
endmodule
