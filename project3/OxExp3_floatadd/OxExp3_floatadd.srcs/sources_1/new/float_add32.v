`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/30 13:29:29
// Design Name: 
// Module Name: float_add32
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


module float_add32(
    input clk,
    input rst,
    input en, //开始标志
    input[31:0] A, //被加数
    input[31:0] B, //加数
    output [31:0] result, //商
    output reg fin
    );

    reg signa,signb,sign,sign_same;
    reg[31:0] ta,tb;
    reg[7:0]expa,expb;
    reg[22:0]fraca,fracb;
    reg[7:0]exp,exp_dif;
    reg[24:0]fra_max;
    reg[24:0]fra_min;
    reg[24:0]frac;
    reg[31:0]res;
    reg[2:0] state;
    reg[7:0]temp;
    wire round;
    assign result = res;
    assign round = temp[0];
    initial begin
    sign = 0;
    frac = 0;
    exp = 0;
    end
    //000-pre 001-if zero? 010-normalize 011-add 100-dealwithalignment  101-finish
    always @(posedge clk) begin
        case(state)
        3'b000: begin
        fin <= 0;
        signa <= A[31];
        signb <= B[31];
        expa <= A[30:23];
        expb <= B[30:23];
        fraca <= A[22:0];
        fracb <= B[22:0];
        state <= 3'b001;
        end
        3'b001: begin
            if(A == 0) begin
                sign <= signb;
                exp <= expb;
                frac = fracb;
                state <= 3'b101;
            end
            else
            state <= 3'b010;
            if(B == 0) begin
                sign <= signa;
                exp <= expa;
                frac = fraca;
                state <= 3'b101;
            end
            else
            state <= 3'b010;
        end
        3'b010:begin
            if(signa != signb)
            sign_same <= 0;
            else
            sign_same <= 1;

            if(expa > expb) begin
                exp <= expa;
                sign <= signa;
                exp_dif <= expa-expb;
                fra_max <= {2'b01, fraca};
                fra_min <= {2'b01, fracb};
            end
            else if(expa < expb) begin
                exp <= expb;
                sign <= signb;
                exp_dif <= expb-expa;
                fra_max <= {2'b01, fracb};
                fra_min <= {2'b01, fraca};
            end
            else begin
                exp <= expa;
                exp_dif <= 0;
                if(fraca > fracb) begin
                sign <= signa;
                fra_max <= {2'b01, fraca};
                fra_min <= {2'b01, fracb};
                end
                else begin
                sign <= signb;
                fra_max <= {2'b01, fracb};
                fra_min <= {2'b01, fraca};
                end
            end
            state <= 3'b110;
        end
        3'b110: begin
            fra_min <= fra_min >> exp_dif;
            temp <= fra_min >> (exp_dif-1);
            state <= 3'b011;
        end
        3'b011: begin
            if(sign_same) begin //舍入
            if(round)
            frac <= fra_max + fra_min+1'b1;
            else
            frac <= fra_max + fra_min;
            end
            else
            if(round)
            frac <= fra_max - fra_min-1'b1;
            else
            frac <= fra_max - fra_min;
            state <= 3'b100;
        end
        3'b100: begin
            if(frac[24] == 1'b1) begin
                exp <= exp + 1;
                frac <= {1'b0,frac[24:1]};
                state <= 3'b101;
            end
            else if(frac[24:23] == 1'b00) begin
                exp <= exp-1;
                frac <= {frac[23:0],1'b0};
                state <= 3'b100;
            end
            else
            state <= 3'b101;
        end
        3'b101:begin
            fin <= 1;
            state <= 3'b000;
            end
        default: state <= 3'b000;
        endcase
    end

    always @(posedge fin or posedge rst or negedge rst) begin
        if(en) begin
        res <= {sign, exp, frac[22:0]};
        end
        else if(rst) begin
        res <= 0;
        fin <= 1'b1;
        end
        else
        res <= res;
    end
endmodule
