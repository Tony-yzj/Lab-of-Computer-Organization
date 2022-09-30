`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/30 15:32:51
// Design Name: 
// Module Name: ID_reg_Ex
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


module ID_reg_Ex(
    input clk_IDEX, //�Ĵ���ʱ��
    input rst_IDEX, //�Ĵ�����λ
    input en_IDEX, //�Ĵ���ʹ��
    input[31:0] PC_in_IDEX, //PC����
    input[4:0] Rd_addr_IDEX, //дĿ�ĵ�ַ����
    input[31:0] Rs1_in_IDEX, //������1����
    input[31:0] Rs2_in_IDEX, //������2����
    input[31:0] Imm_in_IDEX, //����������
    input ALUSrc_B_in_IDEX, //ALU B����ѡ��
    input[3:0] ALU_control_in_IDEX, //ALUѡ�����
    input Branch_in_IDEX, //Beq
    input BranchN_in_IDEX, //Bne
    input MemRW_in_IDEX, //�洢����д
    input[1:0] Jump_in_IDEX, //Jal
    input[1:0] MemtoReg_in_IDEX, //д��ѡ��
    input RegWrite_in_IDEX, //�Ĵ����Ѷ�д
    output reg[31:0] PC_out_IDEX, //PC���
    output reg[4:0] Rd_addr_out_IDEX, //Ŀ�ĵ�ַ���
    output reg[31:0] Rs1_out_IDEX, //������1���
    output reg[31:0] Rs2_out_IDEX, //������2���
    output reg[31:0] Imm_out_IDEX , //���������
    output reg ALUSrc_B_out_IDEX, //ALU Bѡ��
    output reg[3:0] ALU_control_out_IDEX, //ALU����
    output reg Branch_out_IDEX, //Beq
    output reg BranchN_out_IDEX, //Bne
    output reg MemRW_out_IDEX, //�洢����д
    output reg[1:0] Jump_out_IDEX, //Jal
    output reg[1:0] MemtoReg_out_IDEX, //д��
    output reg RegWrite_out_IDEX //�Ĵ����Ѷ�д
    );

    always @(posedge clk_IDEX or posedge rst_IDEX) begin
        if(rst_IDEX == 1'b1)begin
            PC_out_IDEX <= 32'h0;
            Rd_addr_out_IDEX <= 5'h0;
            Rs1_out_IDEX <= 32'h0;
            Rs2_out_IDEX <= 32'h0;
            Imm_out_IDEX <= 32'h0;
            ALUSrc_B_out_IDEX <= 1'h0;
            ALU_control_out_IDEX <= 4'h0;
            Branch_out_IDEX <= 1'h0;
            BranchN_out_IDEX <= 1'h0;
            MemRW_out_IDEX <= 1'h0;
            Jump_out_IDEX <= 2'h0;
            MemtoReg_out_IDEX <= 2'h0;
            RegWrite_out_IDEX <= 1'h0;
        end
        else if(en_IDEX == 1'b1) begin
            PC_out_IDEX <= PC_in_IDEX;
            Rd_addr_out_IDEX <= Rd_addr_IDEX;
            Rs1_out_IDEX <= Rs1_in_IDEX;
            Rs2_out_IDEX <= Rs2_in_IDEX;
            Imm_out_IDEX <= Imm_in_IDEX;
            ALUSrc_B_out_IDEX <= ALUSrc_B_in_IDEX;
            ALU_control_out_IDEX <= ALU_control_in_IDEX;
            Branch_out_IDEX <= Branch_in_IDEX;
            BranchN_out_IDEX <= BranchN_in_IDEX;
            MemRW_out_IDEX <= MemRW_in_IDEX;
            Jump_out_IDEX <= Jump_in_IDEX;
            MemtoReg_out_IDEX <= MemtoReg_in_IDEX;
            RegWrite_out_IDEX <= RegWrite_in_IDEX;
        end
    end
endmodule
