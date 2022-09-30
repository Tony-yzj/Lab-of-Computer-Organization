`timescale 1ns / 1ps
module Ext_32(
    input [3:0] imm_16,
    output[7:0] Imm_32
    ); 
    
    assign Imm_32 = {{16{1'b0}},imm_16};

endmodule