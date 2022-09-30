`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/02 17:06:39
// Design Name: 
// Module Name: DataPath
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


module DataPath_more(
    input wire clk,
    input wire rst,
    input wire[31:0] inst_field,
    input wire[31:0] Data_in,
    input wire[3:0] ALU_operation,
    input wire[2:0] ImmSel,
    input wire[1:0] MemtoReg,
    input wire ALUSrc_B,
    input wire[1:0]Jump,
    input wire Branch,
    input wire BranchN,
    input wire RegWrite,

    output wire[31:0] PC_out,
    output wire[31:0] Data_out,
    output wire[31:0] Imm_out,
    output wire[31:0] PC_new
    );
wire[31:0] ALU_out;
//[31:0] Imm_out;
wire[31:0] PC_inc;
wire[31:0] PC_imm;
wire ALU_zero;
wire[31:0] PC_new_1;
wire[31:0] Wt_data;
//wire[31:0] PC_new;
wire[31:0] Rs1_data;
wire[31:0] ALU_B;

ImmGen ImmGen(
    .ImmSel(ImmSel),
    .inst_field(inst_field),
    .Imm_out(Imm_out)
);

add_32 add_32_0(
    .a(PC_out),
    .b(32'h4),
    .c(PC_inc)
);

add_32 add_32_1(
    .a(PC_out),
    .b(Imm_out),
    .c(PC_imm)
);

MUX2T1_32 MUX2T1_32_1(
    .I0(PC_inc),
    .I1(PC_imm),
    .s((Branch & ALU_zero) | (BranchN & ~ALU_zero)),
    .O(PC_new_1)
);

MUX4T1_32 MUX4T1_32_0(
    .s(MemtoReg),
    .I0(ALU_out),
    .I1(Data_in),
    .I2(PC_inc),
    .I3(Imm_out),
    .O(Wt_data)
);

MUX4T1_32 MUX4T1_32_1(
    .s(Jump),
    .I0(PC_new_1),
    .I1(PC_imm),
    .I2(ALU_out),
    .I3(PC_new_1),
    .O(PC_new)
);

MUX2T1_32 MUX2T1_32_0(
    .I0(Data_out),
    .I1(Imm_out),
    .s(ALUSrc_B),
    .O(ALU_B)
);

regs Regs(
    .clk(clk),
    .rst(rst),
    .RegWrite(RegWrite),
    .Rs1_addr(inst_field[19:15]),
    .Rs2_addr(inst_field[24:20]),
    .Wt_addr(inst_field[11:7]),
    .Wt_data(Wt_data),
    .Rs1_data(Rs1_data),
    .Rs2_data(Data_out)
);

ALU ALU(
    .A(Rs1_data),
    .B(ALU_B),
    .ALU_operation(ALU_operation),
    .res(ALU_out),
    .zero(ALU_zero)
);

REG32 PC(
    .clk(clk),
    .rst(rst),
    .CE(1'b1),
    .D(PC_new),
    .Q(PC_out)
);

endmodule
