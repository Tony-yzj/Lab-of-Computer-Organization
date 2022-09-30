`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/06 20:02:47
// Design Name: 
// Module Name: cache_tb
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


module cache_tb();
// Inputs
	reg clk;
	reg rst;
	reg [31:0] addr_cpu;
	reg rd_cpu;
	reg wr_cpu;
	reg ready_mem;

	// Outputs
	wire [31:0] addr_mem;
	wire rd_mem;
	wire wr_mem;

	// Bidirs
	reg [31:0] data_cpu_write;
	reg [31:0] data_mem_read;
	wire [31:0] data_mem_write;
	wire [31:0] data_cpu_read;
	
	// Instantiate the Unit Under Test (UUT)
	cache uut (
		.clk(clk), 
		.rst(rst), 
		.data_cpu_write(data_cpu_write), 
		.data_mem_read(data_mem_read), 
		.addr_cpu(addr_cpu), 
		.addr_mem(addr_mem), 
		.rd_cpu(rd_cpu), 
		.wr_cpu(wr_cpu), 
		.rd_mem(rd_mem), 
		.wr_mem(wr_mem), 
		.data_cpu_read(data_cpu_read), 
		.data_mem_write(data_mem_write),
		.ready_mem(ready_mem)
	);

	//Clock generator block
	initial begin
	clk = 1'd0;
	forever
	#10 clk = ~clk;
	end
	
	task delay;
	begin
	@(negedge clk);
	end
	endtask		
		
	
	initial begin
		// Initialize Inputs
		rst = 1;
		addr_cpu = 0;
		rd_cpu = 0;
		wr_cpu = 0;
		ready_mem = 1;
		data_cpu_write = 0;
		data_mem_read = 0;
		repeat(4)
		delay;
		
		rst = 0;
		
		delay;
		delay;
		//  Read from location
		rd_cpu = 1'd1;
		addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_0111;
		delay;
		rd_cpu = 1'd1;
		delay;
		delay;
		rd_cpu = 1'd0;
		delay;
		
		//  Write to same location
		wr_cpu = 1'd1;
		data_cpu_write = 32'habababab;
		addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_0111;
		delay;
		delay;
		wr_cpu = 1'd0;
		delay;
		delay;
		// Read from same location to check updated data
		rd_cpu = 1'd1;
		addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_0111;
		delay;
		rd_cpu = 1'd1;
		delay;
		rd_cpu = 1'd0;
		delay;
		
//		 Read Miss with dirty bit 0 policy check, reads data from Main Memory
		
		delay;
		rd_cpu = 1'd1;
		addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_1010;
		delay;
		rd_cpu = 1'd1;
		@(posedge rd_mem);
		ready_mem = 0;
		repeat(4)
		delay;
		
		ready_mem = 1;
		
		//delay;
		
		data_mem_read = 32'h11111111;
		
		#10;
		
		data_mem_read = 32'h22222222;
		
		#10;
		
		data_mem_read = 32'h33333333;
		
		#10;
		
		data_mem_read = 32'h44444444;
		rd_cpu = 1'd0;
		#10;
		data_mem_read = 32'hx;
		delay;

//		delay;
		
//		delay;
		
//		delay;
		
		
		
		delay;
		delay;
		rd_cpu = 1'd1;
        addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_1010;
        delay;
        delay;
        delay;
 		rd_cpu = 1'd0;

//////////////////////////////////////////////////////
		//  write Miss with dirty bit 0 policy check
		delay;
		delay;
		wr_cpu = 1'd1;
		data_cpu_write = 32'h5a5a5a5a;
		addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_1101;
		delay;
		wr_cpu = 1'd1;
//		delay;
//		delay;
//		@(posedge wr_mem);
//		ready_mem = 0;
//		repeat(4)
//		delay;
		
//		ready_mem = 1;
		
		@(posedge rd_mem);
		ready_mem = 0;
		repeat(4)
		delay;
		
		ready_mem = 1;
		
		//delay;
		data_mem_read = 32'hAAAAAAAA;
		
		#10;
		
		data_mem_read = 32'hBBBBBBBB;
		
		#10;
		
		data_mem_read = 32'hCCCCCCCC;
		
		#10;
		
		data_mem_read = 32'hDDDDDDDD;
		#10;
		data_mem_read = 32'hx;
//		delay;
		
//		delay;
		
//		delay;
		wr_cpu = 1'd0;
        delay;
        delay;
        delay;
		//write the same address again
		wr_cpu = 1'd1;
        data_cpu_write = 32'h5a5a5a5a;
        addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_1101;
        
        delay;                   
        
        delay;
        
        wr_cpu = 1'd0;
        delay;
        delay;
        // Read from same location to check updated data
        rd_cpu = 1'd1;
        addr_cpu = 32'b0000_0000_0000_0000_0000_0010_0000_1101;
        delay;
        rd_cpu = 1'd1;
        delay;
        rd_cpu = 1'd0;
        delay;
		
		repeat(10)
		delay;

		
		
		// End of Simulation
		#300 $finish;

	end
      
endmodule

