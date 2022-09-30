`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/11 15:53:25
// Design Name: 
// Module Name: SCPU_ctrl
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


module SCPU_ctrl_more( 
input[4:0]OPcode,                          //Opcode------inst[6:2]
input[2:0]Fun3,                              //Function-----inst[14:12]
input Fun7,                                     //Function-----inst[30]
input MIO_ready,                            //CPU Wait
output reg [2:0]ImmSel,          
output reg ALUSrc_B,                
output reg [1:0]MemtoReg,               
output reg [1:0]Jump,                          //jal
output reg Branch,                        //beq
output reg BranchN,
output reg RegWrite,               
output reg MemRW,                  
output reg [3:0]ALU_Control,       //alu
output reg CPU_MIO                     //not use
); 

reg [1:0] ALUop;
wire [3:0] Fun;

always @* begin
case(OPcode)
5'b01100: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b0_00_1_0_0_0_00_10_000; end //ALU
5'b00000: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b1_01_1_0_0_0_00_00_001; end //load
5'b01000: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b1_00_0_1_0_0_00_00_010; end //store
5'b11000: begin 
case(Fun3)
3'b000: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b0_00_0_0_1_0_00_01_011; end
3'b001: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b0_00_0_0_0_1_00_01_011; end
endcase //beq 
end
5'b11011: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b0_10_1_0_0_0_01_00_100; end //jump
5'b00100: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b1_00_1_0_0_0_00_11_001; end //ALU(addi;;;;)
5'b11001: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b1_10_1_0_0_0_10_00_001; end //jarl
5'b01101: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'b0_11_1_0_0_0_00_00_000; end //lui
default: begin  {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,BranchN,Jump,ALUop,ImmSel}  = 14'h0; end
endcase
end

assign Fun = {Fun3,Fun7};

always @* begin
case(ALUop)
2'b00: ALU_Control = 4'b0010 ; //add
2'b01: ALU_Control = 4'b0110 ; //sub
2'b10: 
case(Fun)
4'b0000: ALU_Control = 4'b0010 ; //add
4'b0001: ALU_Control = 4'b0110 ; //sub
4'b1110: ALU_Control = 4'b0000 ; //and
4'b1100: ALU_Control = 4'b0001 ; //or
4'b0100: ALU_Control = 4'b0111 ; //slt
4'b1010: ALU_Control = 4'b0101 ; //srl
4'b1000: ALU_Control = 4'b0011 ; //xor
4'b0110: ALU_Control = 4'b1010 ; //sltu
4'b0010: ALU_Control = 4'b1001 ; //sll
4'b1011: ALU_Control = 4'b1000 ; //sra
default: ALU_Control = 4'bx;  //nor(no this kind)
endcase
2'b11:
case(Fun3)
3'b000: ALU_Control = 4'b0010 ; //addi
3'b010: ALU_Control = 4'b0111 ; //slti
3'b100: ALU_Control = 4'b0011 ; //xori
3'b110: ALU_Control = 4'b0001 ; //ori
3'b111: ALU_Control = 4'b0000 ; //andi
3'b101: 
    if(Fun7)
        ALU_Control = 4'b1000 ; //srai
    else
        ALU_Control = 4'b0101 ; //srli
3'b011: ALU_Control = 4'b1010 ; //sltiu
3'b001: ALU_Control = 4'b1001 ; //slli
default: ALU_Control = 4'bx ;  //nor(no this kind)
endcase
endcase
end
endmodule