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


module SCPU_ctrl( 
input[4:0]OPcode,                          //Opcode------inst[6:2]
input[2:0]Fun3,                              //Function-----inst[14:12]
input Fun7,                                     //Function-----inst[30]
input MIO_ready,                            //CPU Wait
output reg [1:0]ImmSel,          
output reg ALUSrc_B,                
output reg [1:0]MemtoReg,               
output reg Jump,                          //jal
output reg Branch,                        //beq
output reg RegWrite,               
output reg MemRW,                  
output reg [2:0]ALU_Control,       //alu
output reg CPU_MIO                     //not use
); 

reg [1:0] ALUop;
wire [3:0] Fun;
reg CPU_ctrl_signals;
`define CPU_ctrl_signals {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel}

always @* begin
case(OPcode)
5'b01100: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel} = 11'b0_00_1_0_0_0_10_00; end //ALU
5'b00000: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel} = 11'b1_01_1_0_0_0_00_00; end //load
5'b01000: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel} = 11'b1_00_0_1_0_0_00_01; end //store
5'b11000: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel} = 11'b0_00_0_0_1_0_01_10; end //beq 
5'b11011: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel} = 11'b0_10_1_0_0_1_00_11; end //jump
5'b00100: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel} = 11'b1_00_1_0_0_0_11_00; end //ALU(addi;;;;)
default: begin {ALUSrc_B,MemtoReg,RegWrite,MemRW,Branch,Jump,ALUop,ImmSel} = 11'b00000000000; end
endcase
end

assign Fun = {Fun3,Fun7};

always @* begin
case(ALUop)
2'b00: ALU_Control = 3'b010 ; //add
2'b01: ALU_Control = 4'b110 ; //sub
2'b10: 
case(Fun)
4'b0000: ALU_Control = 3'b010 ; //add
4'b0001: ALU_Control = 3'b110 ; //sub
4'b1110: ALU_Control = 3'b000 ; //and
4'b1100: ALU_Control = 3'b001 ; //or
4'b0100: ALU_Control = 3'b111 ; //slt
4'b1010: ALU_Control = 3'b101 ; //srl
4'b1000: ALU_Control = 3'b011 ; //xor
default: ALU_Control = 3'bx;  //nor(no this kind)
endcase
2'b11:
case(Fun3)
3'b000: ALU_Control = 3'b010 ; //addi
3'b010: ALU_Control = 3'b111 ; //slti
3'b100: ALU_Control = 3'b011 ; //xori
3'b110: ALU_Control = 3'b001 ; //ori
3'b111: ALU_Control = 3'b000 ; //andi
3'b101: ALU_Control = 3'b101 ; //srli
default: ALU_Control = 3'bx ;  //nor(no this kind)
endcase
endcase
end
endmodule