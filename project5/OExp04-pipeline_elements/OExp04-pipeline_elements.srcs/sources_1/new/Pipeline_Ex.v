`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/30 15:52:49
// Design Name: 
// Module Name: Pipeline_Ex
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


module Pipeline_Ex(
    input[31:0] PC_in_EX, //PC����
    input[31:0] Rs1_in_EX, //������1����
    input[31:0] Rs2_in_EX, //������2����
    input[31:0] Imm_in_EX , //����������
    input ALUSrc_B_in_EX , //ALU Bѡ��
    input[3:0] ALU_control_in_EX, //ALUѡ�����
    output reg [31:0] PC_out_EX, //PC���
    output reg [31:0] PC4_out_EX, //PC+4���
    output reg zero_out_EX, //ALU��0���
    output reg [31:0] ALU_out_EX, //ALU�������
    output [31:0] Rs2_out_EX //������2���
    );

    wire[31:0] mux_out;
    assign Rs2_out_EX = Rs2_in_EX;
    add_32 add_32_0(
        .a(PC_in_EX),
        .b(Imm_in_EX),
        .c(PC_out_EX)
    );

    add_32 add_32_1(
        .a(32'h4),
        .b(PC_in_EX),
        .c(PC4_out_EX)
    );

    ALU ALU(
        .A(Rs1_in_EX),
        .ALU_operation(ALU_control_in_EX),
        .B(mux_out),
        .res(ALU_out_EX),
        .zero(zero_out_EX)
    );

    MUX2T1_32 MUX2T1_32_0(
        .I0(Rs2_in_EX),
        .I1(Imm_in_EX),
        .s(ALUSrc_B_in_EX),
        .O(mux_out)
    );

endmodule
