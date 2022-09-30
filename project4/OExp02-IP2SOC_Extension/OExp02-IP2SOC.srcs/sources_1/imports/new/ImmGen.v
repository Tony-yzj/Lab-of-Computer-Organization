`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/02 17:07:34
// Design Name: 
// Module Name: ImmGen
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


module ImmGen(
    input wire [2:0] ImmSel,
    input wire [31:0] inst_field, 
    output reg [31:0] Imm_out
    );
    
    always@*begin
    case(ImmSel)
    3'b001:Imm_out = {{20{inst_field[31]}},inst_field[31:20]}; //addi\lw(I)
    3'b010:Imm_out = {{20{inst_field[31]}},inst_field[31:25],inst_field[11:7]}; //sw(s)
    3'b011:Imm_out = {{20{inst_field[31]}},inst_field[7],inst_field[30:25],inst_field[11:8],1'b0}; //beq(b)
    3'b101:Imm_out = {{12{inst_field[31]}},inst_field[19:12],inst_field[20],inst_field[30:21],1'b0}; //jal(j)
    3'b000:Imm_out = {inst_field[31:12],12'h0}; //U-type/lui
    default:Imm_out = 32'h4;
    endcase 
    end
    endmodule