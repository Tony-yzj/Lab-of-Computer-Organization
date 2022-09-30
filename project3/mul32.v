`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/21 16:55:52
// Design Name: 
// Module Name: mul32
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

module mul32(
input clk,
input rst,
input [31:0] multiplicand,
input [31:0] multiplier, 
input start, 
output reg[63:0] product,
output finish
);
integer cnt = 0;
wire [63:0]mul;
reg fin;

assign finish = fin;
assign mul = {multiplicand, 32'h0};
always @(posedge clk or posedge start or rst) begin
    if(rst) begin
    product <= 64'h0;
    fin <= 1'b0;
    end
    else if(start) begin
        product[31:0] <= multiplier;
        product[63:32] <= 32'h0;
        cnt <= 0;
        fin = 1'b0;
        end
    else begin  
        if(cnt<32)begin
            if(multiplier[cnt] == 1'b1)
                product <= (product + mul)>>1;
            else
                product <= product >>1;
            //product <= product >> 1;
            cnt <= cnt+1;
            fin <= 1'b0;
            end
            else fin <= 1'b1;
    end
end
endmodule