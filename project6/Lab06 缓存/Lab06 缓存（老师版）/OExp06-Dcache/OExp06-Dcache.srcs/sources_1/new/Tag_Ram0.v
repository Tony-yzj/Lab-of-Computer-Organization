`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 21:39:59
// Design Name: 
// Module Name: Tag_Ram0
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


module Tag_Ram0#(
    parameter AWIDTH = 7,		// Address Width Parameter, also used to calculate depth
    parameter DWIDTH = 26		// Data width parameter
)(
    input 	             clock,	//Input signal for clock
	input 	[AWIDTH-1:0] addr,	//Parameterized Address bus input
	input 	[DWIDTH-1:0] din,	//Parameterized Data bus input
	input 	             en,	//Write Enable (input HIGH = write, LOW = read)
	output  [DWIDTH-1:0] dout	//Parameterized Data bus output
    );
   
    localparam DEPTH  = 1 << AWIDTH;

// Memory Array Decaration
    reg [DWIDTH-1:0] cache_tag [0:DEPTH-1];
    
    // Memory initialization
    initial
    begin
        $readmemh("tram0.mem", cache_tag);
    end
    
    // Internal Register to latch address for synchronous read operation
    reg [AWIDTH-1:0] rd_addr;
    
    // Sequential Block to write data in memory as well as latch read address
    // depending on 'we' write enable signal
    always@(posedge clock)
    begin
        if(en)
            cache_tag[addr] <= din;    
    
    rd_addr <= addr;        
    end
    
    // Data out during read operation with latched address to keep output stable
    assign dout = cache_tag[rd_addr];
    
endmodule

