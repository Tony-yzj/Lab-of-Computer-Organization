`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 16:36:07
// Design Name: 
// Module Name: CSSTE
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

module CSSTE(
    input         clk_100mhz,
    input         RSTN,
    output        HSYNC,
    output        VSYNC,
    input  [3:0]  BTN_y,
    input  [15:0] SW,
    output [3:0]  Blue,
    output [3:0]  Green,
    output [3:0]  Red,
    output        led_clk,
    output        led_sout,
    output        led_clrn,
    output        LED_PEN,
    output        seg_clk,
    output        seg_clrn,
    output        SEG_PEN,
    output        seg_sout
    );

wire [3:0] BTN_OK;
wire [15:0] SW_OK;
wire rst;
wire [31:0] clkdiv;
wire Clk_CPU;
wire [31:0] Data_in;
wire [31:0] inst_in;
wire [31:0] Data_out;
wire [31:0] Addr_out;
wire [31:0] PC_out;
wire MemRW;
wire data_ram_we;
wire [8:0] ram_addr;
wire [31:0] ram_data_in;
wire [31:0] ram_data_out;
wire [15:0] LED_out;
wire [31:0] counter_out;
wire counter0_out;
wire counter1_out;
wire counter2_out;
wire GPIOf0000000_we;
wire GPIOe0000000_we;
wire counter_we;
wire [31:0] Peripheral_in;
wire [7:0] point_out;
wire [7:0] LE_out;
wire[31:0] Disp_num;
wire [1:0] counter_set;

SCPU U1
(
    .clk(Clk_CPU),
    .rst(rst),
    .Data_in(Data_in),
    .inst_in(inst_in),
    .MemRW(MemRW),
    .Addr_out(Addr_out),
    .Data_out(Data_out),
    .PC_out(PC_out)
);

ROM_D_0 U2
(
    .a(PC_out[11:2]),
    .spo(inst_in)
);

RAM_B U3
(
    .clka(~clk_100mhz),
    .wea(data_ram_we),
    .addra(ram_addr),
    .dina(ram_data_in),
    .douta(ram_data_out)
);

MIO_BUS U4
(
    .clk(clk_100mhz),
    .rst(rst),
    .BTN(BTN_OK),
    .SW(SW_OK),
    .mem_w(MemRW),
    .Cpu_data2bus(Data_out),
    .addr_bus(Addr_out),
    .ram_data_out(ram_data_out),
    .led_out(LED_out),
    .counter_out(counter_out),
    .counter0_out(counter0_out),
    .counter1_out(counter1_out),
    .counter2_out(counter2_out),
    .Cpu_data4bus(Data_in),
    .ram_data_in(ram_data_in),
    .ram_addr(ram_addr),
    .data_ram_we(data_ram_we),
    .GPIOf0000000_we(GPIOf0000000_we),
    .GPIOe0000000_we(GPIOe0000000_we),
    .counter_we(counter_we),
    .Peripheral_in(Peripheral_in)
);

Multi_8CH32 U5
(
    .clk(~Clk_CPU),
    .rst(rst),
    .EN(GPIOe0000000_we),
    .Test(SW_OK[7:5]),
    .point_in({clkdiv[31:0], clkdiv[31:0]}),
    .LES(64'b0),
    .Data0(Peripheral_in),
    .data1({2'b0, PC_out[31:2]}),
    .data2(inst_in),
    .data3(counter_out),
    .data4(Addr_out),
    .data5(Data_out),
    .data6(Data_in),
    .data7(PC_out),
    .point_out(point_out),
    .LE_out(LE_out),
    .Disp_num(Disp_num)
);

SSeg7_Dev_0 U6
(
    .clk(clk_100mhz),
    .flash(clkdiv[25]),
    .Hexs(Disp_num),
    .LES(LE_out),
    .point(point_out),
    .rst(rst),
    .Start(clkdiv[20]),
    .SW0(SW_OK[0]),
    .seg_clk(seg_clk),
    .seg_clrn(seg_clrn),
    .seg_sout(seg_sout),
    .SEG_PEN(SEG_PEN)
);

SPIO U7
(
    .clk(~Clk_CPU),
    .rst(rst),
    .Start(clkdiv[20]),
    .EN(GPIOf0000000_we),
    .P_Data(Peripheral_in),
    .counter_set(counter_set),
    .LED_out(LED_out),
    .led_clk(led_clk),
    .led_clrn(led_clrn),
    .led_sout(led_sout),
    .LED_PEN(LED_PEN)
);

clk_div U8
(
    .clk(clk_100mhz),
    .rst(rst),
    .SW2(SW_OK[2]),
    .SW8(SW_OK[8]),
    .STEP(BTN_OK[0] | SW_OK[10]),
    .clkdiv(clkdiv),
    .Clk_CPU(Clk_CPU)
);

SAnti_jitter U9
(
    .clk(clk_100mhz),
    .RSTN(RSTN),
    .Key_y(BTN_y),
    .SW(SW),
    .BTN_OK(BTN_OK),
    .SW_OK(SW_OK),
    .rst(rst)
);

Counter_x U10
(
    .clk(~Clk_CPU),
    .rst(rst),
    .clk0(clkdiv[6]),
    .clk1(clkdiv[9]),
    .clk2(clkdiv[11]),
    .counter_we(counter_we),
    .counter_val(Peripheral_in),
    .counter_ch(counter_set),
    .counter0_OUT(counter0_out),
    .counter1_OUT(counter1_out),
    .counter2_OUT(counter2_out),
    .counter_out(counter_out)
);

VGA U11
(
    .clk_25m(clkdiv[1]),
    .clk_100m(clk_100mhz),
    .rst(rst),
    .pc(PC_out),
    .inst(inst_in),
    .alu_res(Addr_out),
    .mem_wen(MemRW),
    .dmem_o_data(ram_data_out),
    .dmem_i_data(ram_data_in),
    .dmem_addr(Addr_out),
    .hs(HSYNC),
    .vs(VSYNC),
    .vga_r(Red),
    .vga_b(Blue),
    .vga_g(Green)
);

endmodule