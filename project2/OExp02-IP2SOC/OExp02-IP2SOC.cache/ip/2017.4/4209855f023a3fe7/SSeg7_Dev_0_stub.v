// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Mar 21 16:03:55 2022
// Host        : LAPTOP-23S8O1B1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SSeg7_Dev_0_stub.v
// Design      : SSeg7_Dev_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SSeg7_Dev,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, flash, Hexs, LES, point, rst, Start, SW0, seg_clk, 
  seg_clrn, SEG_PEN, seg_sout)
/* synthesis syn_black_box black_box_pad_pin="clk,flash,Hexs[31:0],LES[7:0],point[7:0],rst,Start,SW0,seg_clk,seg_clrn,SEG_PEN,seg_sout" */;
  input clk;
  input flash;
  input [31:0]Hexs;
  input [7:0]LES;
  input [7:0]point;
  input rst;
  input Start;
  input SW0;
  output seg_clk;
  output seg_clrn;
  output SEG_PEN;
  output seg_sout;
endmodule
