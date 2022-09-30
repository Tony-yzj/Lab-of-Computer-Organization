`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/30 15:09:37
// Design Name: 
// Module Name: fliat_adder32_tb
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


module fliat_adder32_tb();
    reg clk;
    reg rst;
    reg en; //��ʼ��־
    reg[31:0] A; //������
    reg [31:0] B; //����
    wire [31:0] result; //��
    wire fin;
    
    float_add32 U1(
    .clk(clk),
    .rst(rst),
    .en(en),
    .A(A),
    .B(B),
    .result(result),
    .fin(fin));

    always #10 clk = ~clk;
    initial begin 
    rst = 1'b1; 
    clk = 1'b0; //Testbench���ù̶����뼤���Ա�۲���
    en = 1'b0; 
    A = 32'b0; 
    B = 32'b0; 
    #10 
    rst = 1'b0; 
    en = 1; 
    A=32'hc0a00000; //-5.0
    B=32'hc0900000; //-4.5
    //c1180000(-9.5)
    #80 
    A=32'h40a00000; //+5.0
    B=32'h40900000; //+4.5
    #1000 $stop(); //41180000(+9.5)
    end
endmodule
