`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 15:00:12
// Design Name: 
// Module Name: SCPU_tb
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


module SCPU_tb(
);
reg[4:0] OPcode;
reg MIO_ready;
reg [2:0]Fun3;
reg Fun7;
reg Fun;
wire [1:0]ImmSel;
wire ALUSrc_B;
wire Jump;
wire [1:0] MemtoReg;
wire Branch;
wire RegWrite;
wire [2:0]ALU_Control;
wire CPU_MIO;


SCPU_ctrl U1(
    .OPcode(OPcode),
    .Fun3(Fun3),
    .Fun7(Fun7),
    .MIO_ready(MIO_ready),
    .ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .Jump(Jump),
    .Branch(Branch),
    .RegWrite(RegWrite),
    .ALU_Control(ALU_Control),
    .CPU_MIO(CPU_MIO)
    );

initial begin
    // Initialize Inputs
    OPcode = 0;
    Fun = 0;
    MIO_ready = 0; #40;
    // Wait 40 ns for global reset to finish
    // Add stimulus here
    //�������źź͹ؼ��ź�����Ƿ�������ֵ��
    OPcode = 5'b01100; //ALUָ��,��� ALUop=2'b10; RegWrite=1
    Fun3 = 3'b000; Fun7 = 1'b0;//add,���ALU_Control=3'b010
    #20;
    Fun3 = 3'b000; Fun7 = 1'b1;//sub,���ALU_Control=3'b110
    #20;
    Fun3 = 3'b111; Fun7 = 1'b0;//and,���ALU_Control=3'b000
    #20;
    Fun3 = 3'b110; Fun7 = 1'b0;//or,���ALU_Control=3'b001
    #20;
    Fun3 = 3'b010; Fun7 = 1'b0 ;//slt,���ALU_Control=3'b111
    #20;
    #20;
    Fun3 = 3'b101; Fun7 = 1'b0; //srl,���ALU_Control=3'b101
    #20;
    Fun3 = 3'b100; Fun7 = 1'b0; //xor,���ALU_Control=3'b011
    #20;
    Fun3 = 3'b111; Fun7 = 1'b1; //���
    #20;
    OPcode = 5'b00000; #20; //loadָ��,��� ALUop=2'b00, #20; // ALUSrc_B=1, MemtoReg=1, RegWrite=1
    OPcode = 5'b01000; #20; //storeָ��,���ALUop=2'b00, MemRW=1, ALUSrc_B=1
    OPcode = 5'b11000; #20//beqָ��,��� ALUop=2'b01, Branch=1 #20;
    OPcode = 5'b11011; #20 //jumpָ��,��� Jump=1
    OPcode = 5'b00100; #20 //Iָ��,��� ALUop=2'b11; RegWrite=1 #20;
    Fun3 = 3'b000; //addi,���ALU_Control=3'b010
    #20;
    OPcode = 5'h1f; //���
    Fun3 = 3'b000; Fun7 = 1'b0;//���
    end
endmodule