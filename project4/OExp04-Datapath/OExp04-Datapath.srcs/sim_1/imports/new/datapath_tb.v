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
    reg[2:0] ALU_operation;
    reg[1:0] ImmSel;
    reg[1:0] MemtoReg;
    reg ALUSrc_B;
    reg Jump;
    reg Branch;
    reg RegWrite;

    wire[31:0] PC_out;
    wire[31:0] Data_out;
    wire[31:0] ALU_out;
    DataPath U1(
        .clk(clk),
        .rst(rst),
        .inst_field(inst_field),
        .Data_in(Data_in),
        .ImmSel(ImmSel),
        .MemtoReg(MemtoReg),
        .ALU_operation(ALU_operation),
        .ALUSrc_B(ALUSrc_B),
        .Jump(Jump),
        .Branch(Branch),
        .RegWrite(RegWrite),
        .PC_out(PC_out),
        .Data_out(Data_out),
        .ALU_out(ALU_out)
    );

    always #10 clk = ~clk;
    initial begin 

    rst = 1'b1; 
    clk = 1'b0; 
    inst_field = 32'h00100093;
    Data_in = 32'h0;
    ImmSel = 2'b00;
    MemtoReg = 2'b00;
    ALUSrc_B = 1'b0;
    ALU_operation = 3'b010;
    Jump = 1'b0;
    Branch = 1'h0;
    RegWrite = 1'b1;
    #100;
    inst_field = 32'hF80002E3;
    Data_in = 32'h0;
    ImmSel = 2'b10;
    MemtoReg = 2'b00;
    ALU_operation = 3'b110;
    ALUSrc_B = 1'b0;
    Jump = 1'b0;
    Branch = 1'h1;
    RegWrite = 1'b0;
    end

        
endmodule
