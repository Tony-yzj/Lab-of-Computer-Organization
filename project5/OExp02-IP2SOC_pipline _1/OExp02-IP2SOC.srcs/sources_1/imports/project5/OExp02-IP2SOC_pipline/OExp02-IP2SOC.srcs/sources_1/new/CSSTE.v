`timescale 1ns / 1ps

module CSSTE(
    input         clk_100mhz,
    input         RSTN,
    input  [3:0]  BTN_y,
    input  [15:0] SW,
    output [3:0]  Blue,
    output [3:0]  Green,
    output [3:0]  Red,
    output        HSYNC,
    output        VSYNC,
    output        LED_PEN,
    output        SEG_PEN,
    output        led_clk,
    output        led_clrn,
    output        led_sout,
    output        seg_clk,
    output        seg_clrn,
    output        seg_sout
    );
  wire [3:0] BTN_OK;
  wire [15:0] SW_OK;
  wire        rst;
  wire        Clk_CPU;
  wire [31:0] clkdiv;
  wire [31:0] Addr_out;
  wire [31:0] Data_out;
  wire [31:0] Data_out_WB;
  wire [31:0] PC_out_IF; 
  wire [31:0] PC_out_ID;
  wire [31:0] PC_out_EX;
  wire [31:0] Inst_ID;
  wire        MemRW_Mem;
  wire        MemRW_EX;
  wire [31:0] Inst_IF;
  wire [31:0] Data_in;
  wire [9:0]  ram_addr;
  wire [31:0] ram_data_in;
  wire [31:0] RAM_B_0_douta;
  wire [31:0] U4_data_ram_we;
  wire        U4_GPIOe0000000_we;
  wire        U4_GPIOf0000000_we;
  wire [31:0] U4_Peripheral_in;
  wire        U10_counter0_OUT;
  wire        U10_counter1_OUT;
  wire        U10_counter2_OUT;
  wire [31:0] U10_counter_out;
  wire        U4_counter_we;
  wire [15:0] U7_LED_out;
  
  
 Pipeline_CPU U1
       (.Addr_out(Addr_out),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .Data_out_WB(Data_out_WB),
        .MIO_ready(1'b0),
        .MemRW_Mem(MemRW_Mem),
        .MemRW_EX(MemRW_EX),
        .PC_out_IF(PC_out_IF),
        .PC_out_ID(PC_out_ID),
        .PC_out_EX(PC_out_EX),
        .inst_ID(Inst_ID),
        .clk(Clk_CPU),
        .inst_IF(Inst_IF),
        .rst(rst));

  ROM_P U2
       (.a(PC_out_IF[11:2]),
        .spo(Inst_IF));

  RAM_B U3
       (.addra(ram_addr),
        .clka(~clk_100mhz),
        .dina(ram_data_in),
        .douta(RAM_B_0_douta),
        .wea(U4_data_ram_we)); 

  MIO_BUS U4
       (.BTN(BTN_OK),
        .Cpu_data2bus(Data_out),
        .Cpu_data4bus(Data_in),
        .GPIOe0000000_we(U4_GPIOe0000000_we),
        .GPIOf0000000_we(U4_GPIOf0000000_we),
        .Peripheral_in(U4_Peripheral_in),
        .SW(SW_OK),
        .addr_bus(Addr_out),
        .clk(clk_100mhz),
        .counter0_out(U10_counter0_OUT),
        .counter1_out(U10_counter1_OUT),
        .counter2_out(U10_counter2_OUT),
        .counter_out(U10_counter_out),
        .counter_we(U4_counter_we),
        .data_ram_we(U4_data_ram_we),
        .led_out(U7_LED_out),
        .mem_w(MemRW_Mem),
        .ram_addr(ram_addr),
        .ram_data_in(ram_data_in),
        .ram_data_out(RAM_B_0_douta),
        .rst(rst));
  wire [31:0] Multi_8CH32_0_Disp_num;
  wire [7:0]  Multi_8CH32_0_LE_out;
  wire [7:0]  Multi_8CH32_0_point_out;
  Multi_8CH32 U5
       (.Data0(U4_Peripheral_in),
        .Disp_num(Multi_8CH32_0_Disp_num),
        .EN(U4_GPIOe0000000_we),
        .LES(64'b0),
        .LE_out(Multi_8CH32_0_LE_out),
        .Test(SW_OK[7:5]),
        .clk(~Clk_CPU),
        .data1({2'b0,PC_out_IF[31:2]}),
        .data2(Inst_IF),
        .data3(U10_counter_out),
        .data4(Addr_out),
        .data5(Data_out),
        .data6(Data_in),
        .data7(PC_out_IF),
        .point_in({clkdiv[31:0],clkdiv[31:0]}),
        .point_out(Multi_8CH32_0_point_out),
        .rst(rst));
  SSeg7_Dev_0 U6
       (.Hexs(Multi_8CH32_0_Disp_num),
        .LES(Multi_8CH32_0_LE_out),
        .SEG_PEN(SEG_PEN),
        .SW0(SW_OK[0]),
        .Start(clkdiv[20]),
        .clk(clk_100mhz),
        .flash(clkdiv[25]),
        .point(Multi_8CH32_0_point_out),
        .rst(rst),
        .seg_clk(seg_clk),
        .seg_clrn(seg_clrn),
        .seg_sout(seg_sout));
  wire [1:0] U7_counter_set;
  SPIO U7
       (.EN(U4_GPIOf0000000_we),
        .LED_PEN(LED_PEN),
        .LED_out(U7_LED_out),
        .P_Data(U4_Peripheral_in),
        .Start(clkdiv[20]),
        .clk(~Clk_CPU),
        .counter_set(U7_counter_set),
        .led_clk(led_clk),
        .led_clrn(led_clrn),
        .led_sout(led_sout),
        .rst(rst));
  clk_div U8
       (.Clk_CPU(Clk_CPU),
        .STEP(BTN_OK[0]),
        .SW2(SW_OK[2]),
        .SW8(SW_OK[8]),
        .clk(clk_100mhz),
        .clkdiv(clkdiv),
        .rst(rst));
  SAnti_jitter U9
       (.BTN_OK(BTN_OK),
        .Key_y(BTN_y),
        .RSTN(RSTN),
        .SW(SW),
        .SW_OK(SW_OK),
        .clk(clk_100mhz),
        .readn(1'b0),
        .rst(rst));
  Counter_x U10
               (.clk(~Clk_CPU),
                .clk0(clkdiv[6]),
                .clk1(clkdiv[9]),
                .clk2(clkdiv[11]),
                .counter0_OUT(U10_counter0_OUT),
                .counter1_OUT(U10_counter1_OUT),
                .counter2_OUT(U10_counter2_OUT),
                .counter_ch(U7_counter_set),
                .counter_out(U10_counter_out),
                .counter_val(U4_Peripheral_in),
                .counter_we(U4_counter_we),
                .rst(rst));
  VGA U11
       (.Addr_out(Addr_out),
        .clk_100m(clk_100mhz),
        .clk_25m(clkdiv[1]),
        .Data_out(Data_out),
        .Data_out_WB(Data_out_WB),
        .hs(HSYNC),
        .MemRW_Mem(MemRW_Mem),
        .MemRW_Ex(MemRW_EX),
        .PC_IF(PC_out_IF),
        .PC_ID(PC_out_ID),
        .PC_Ex(PC_out_EX),
        .inst_ID(Inst_ID),
        .inst_IF(Inst_IF),
        .rst(rst),
        .vga_b(Blue),
        .vga_g(Green),
        .vga_r(Red),
        .vs(VSYNC));

endmodule