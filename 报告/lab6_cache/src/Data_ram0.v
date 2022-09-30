`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/06 13:10:29
// Design Name: 
// Module Name: Data_ram0
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


module Data_ram0#(
    parameter Index_width = 7,		// Address Width Parameter, also used to calculate depth
    parameter Block_width = 128		// Data width parameter
)(
    input wire clk, // clock
    input wire en, // enable
    input wire [Index_width-1:0] addr, // address
    input wire [Block_width-1:0] din, // data write in
    output [Block_width-1:0] dout // data read out
    );
   
    localparam Num_of_sets  = 128;

    // Memory Array Decaration  
    reg [Block_width-1:0] cache_tag [0:Num_of_sets-1];
    
    // Memory initialization
    initial
    begin
        $readmemh("dram0.mem", cache_tag);
    end
    
    // Internal Register to latch address for synchronous read operation
    reg [Index_width-1:0] rd_addr;
    
    // Sequential Block to write data in memory as well as latch read address
    // depending on 'we' write enable signal
    always@(posedge clk)
    begin
        if(en)
            cache_tag[addr] <= din;    
        rd_addr <= addr;        
    end
    
    // Data out during read operation with latched address to keep output stable
    assign dout = cache_tag[rd_addr];
    
endmodule
