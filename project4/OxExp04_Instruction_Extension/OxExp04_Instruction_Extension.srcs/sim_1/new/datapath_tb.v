`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/09 14:33:10
// Design Name: 
// Module Name: datapath_tb
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


module datapath_tb(

    );
    reg clk;
    reg rst;
    reg[31:0] inst_field;
    reg[31:0] Data_in;
    reg[3:0] ALU_operation;
    reg[2:0] ImmSel;
    reg[1:0] MemtoReg;
    reg ALUSrc_B;
    reg[1:0]Jump;
    reg Branch;
    reg BranchN;
    reg RegWrite;

    wire[31:0] PC_out;
    wire[31:0] Data_out;
    wire[31:0] Imm_out;
    wire[31:0] PC_new;
    DataPath_more U1(
        .clk(clk),
        .rst(rst),
        .inst_field(inst_field),
        .Data_in(Data_in),
        .ImmSel(ImmSel),
        .MemtoReg(MemtoReg),
        .ALUSrc_B(ALUSrc_B),
        .Jump(Jump),
        .Branch(Branch),
        .BranchN(BranchN),
        .RegWrite(RegWrite),
        .PC_out(PC_out),
        .Data_out(Data_out),
        .Imm_out(Imm_out),
        .PC_new(PC_new)
    );

    always #10 clk = ~clk;
    initial begin 

    rst = 1'b1; 
    clk = 1'b0; 
    inst_field = 32'h88888137; //lui
    Data_in = 32'h80000000;
    ImmSel = 3'b000;
    MemtoReg = 2'b11;
    ALUSrc_B = 1'b0;
    Jump = 2'b00;
    Branch = 1'h0;
    BranchN = 1'h0;
    RegWrite = 1'b1;
    ALU_operation = 4'b0010;
    #100;
    inst_field = 32'hFE0098E3; //bne
    Data_in = 32'h00000000;
    ImmSel = 3'b011;
    MemtoReg = 2'b00;
    ALUSrc_B = 1'b0;
    Jump = 2'b00;
    Branch = 1'h0;
    BranchN = 1'h1;
    RegWrite = 1'b0;
    ALU_operation = 4'b0110;
    end

        
endmodule
