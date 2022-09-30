`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 12:44:18
// Design Name: 
// Module Name: div32
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
module div32(
input clk,
input rst,
input start,
input[31:0] dividend, 
input[31:0] divisor, 
output [31:0] quotient, 
output [31:0] remainder,
output reg finish
);

reg[63:0] rem;
wire[63:0]div;
integer cnt = 0;
assign div = {divisor,32'h0};
assign quotient = rem[31:0];
assign remainder = rem[63:32];
always@(posedge clk or start or rst) begin
    if(rst) begin
        rem <= 64'h0;
        finish<= 1'b0;
        cnt <= 0;
    end
    else if(start) begin
        if(cnt == 0) begin
        rem <= {31'b0,dividend,1'b0};
        finish <= 1'b0;
        cnt <= cnt+1;
        end
        else if(cnt <33) begin
            if(rem <div) begin
                rem <= rem << 1;
            end
            else if(rem >= div) begin
                rem = (rem-div)<<1;
                rem = rem + 1;
            end
            finish <= 1'b0;
            cnt <= cnt+1;
        end
        else begin
            rem[63:32] = rem[63:32] >> 1;
            finish <= 1'b1;
            cnt <= 0;
        end
        
    end
end

endmodule
