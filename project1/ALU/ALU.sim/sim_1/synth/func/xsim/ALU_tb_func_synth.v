// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar  2 19:32:47 2022
// Host        : LAPTOP-23S8O1B1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/1My Vault/2022 spring/Lab of
//               COAD/project1/ALU/ALU.sim/sim_1/synth/func/xsim/ALU_tb_func_synth.v}
// Design      : ALU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module ALU
   (A,
    ALU_operation,
    B,
    res,
    zero);
  input [31:0]A;
  input [2:0]ALU_operation;
  input [31:0]B;
  output [31:0]res;
  output zero;

  wire [31:0]A;
  wire [2:0]ALU_operation;
  wire [2:0]ALU_operation_IBUF;
  wire [31:0]A_IBUF;
  wire [31:0]B;
  wire [31:0]B_IBUF;
  wire [23:20]data5;
  wire [31:31]or32_0_res;
  wire p_0_out0;
  wire [31:0]res;
  wire [31:0]res_OBUF;
  wire \res_OBUF[0]_inst_i_2_n_0 ;
  wire \res_OBUF[0]_inst_i_3_n_0 ;
  wire \res_OBUF[0]_inst_i_4_n_0 ;
  wire \res_OBUF[0]_inst_i_6_n_0 ;
  wire \res_OBUF[0]_inst_i_7_n_0 ;
  wire \res_OBUF[10]_inst_i_2_n_0 ;
  wire \res_OBUF[10]_inst_i_3_n_0 ;
  wire \res_OBUF[10]_inst_i_4_n_0 ;
  wire \res_OBUF[10]_inst_i_5_n_0 ;
  wire \res_OBUF[11]_inst_i_10_n_0 ;
  wire \res_OBUF[11]_inst_i_2_n_0 ;
  wire \res_OBUF[11]_inst_i_2_n_1 ;
  wire \res_OBUF[11]_inst_i_2_n_2 ;
  wire \res_OBUF[11]_inst_i_2_n_3 ;
  wire \res_OBUF[11]_inst_i_2_n_4 ;
  wire \res_OBUF[11]_inst_i_2_n_5 ;
  wire \res_OBUF[11]_inst_i_2_n_6 ;
  wire \res_OBUF[11]_inst_i_2_n_7 ;
  wire \res_OBUF[11]_inst_i_3_n_0 ;
  wire \res_OBUF[11]_inst_i_4_n_0 ;
  wire \res_OBUF[11]_inst_i_5_n_0 ;
  wire \res_OBUF[11]_inst_i_6_n_0 ;
  wire \res_OBUF[11]_inst_i_7_n_0 ;
  wire \res_OBUF[11]_inst_i_8_n_0 ;
  wire \res_OBUF[11]_inst_i_9_n_0 ;
  wire \res_OBUF[12]_inst_i_2_n_0 ;
  wire \res_OBUF[12]_inst_i_3_n_0 ;
  wire \res_OBUF[12]_inst_i_4_n_0 ;
  wire \res_OBUF[12]_inst_i_5_n_0 ;
  wire \res_OBUF[13]_inst_i_2_n_0 ;
  wire \res_OBUF[13]_inst_i_3_n_0 ;
  wire \res_OBUF[13]_inst_i_4_n_0 ;
  wire \res_OBUF[13]_inst_i_5_n_0 ;
  wire \res_OBUF[14]_inst_i_2_n_0 ;
  wire \res_OBUF[14]_inst_i_3_n_0 ;
  wire \res_OBUF[14]_inst_i_4_n_0 ;
  wire \res_OBUF[14]_inst_i_5_n_0 ;
  wire \res_OBUF[15]_inst_i_10_n_0 ;
  wire \res_OBUF[15]_inst_i_2_n_0 ;
  wire \res_OBUF[15]_inst_i_2_n_1 ;
  wire \res_OBUF[15]_inst_i_2_n_2 ;
  wire \res_OBUF[15]_inst_i_2_n_3 ;
  wire \res_OBUF[15]_inst_i_2_n_4 ;
  wire \res_OBUF[15]_inst_i_2_n_5 ;
  wire \res_OBUF[15]_inst_i_2_n_6 ;
  wire \res_OBUF[15]_inst_i_2_n_7 ;
  wire \res_OBUF[15]_inst_i_3_n_0 ;
  wire \res_OBUF[15]_inst_i_4_n_0 ;
  wire \res_OBUF[15]_inst_i_5_n_0 ;
  wire \res_OBUF[15]_inst_i_6_n_0 ;
  wire \res_OBUF[15]_inst_i_7_n_0 ;
  wire \res_OBUF[15]_inst_i_8_n_0 ;
  wire \res_OBUF[15]_inst_i_9_n_0 ;
  wire \res_OBUF[16]_inst_i_2_n_0 ;
  wire \res_OBUF[16]_inst_i_3_n_0 ;
  wire \res_OBUF[16]_inst_i_4_n_0 ;
  wire \res_OBUF[16]_inst_i_5_n_0 ;
  wire \res_OBUF[16]_inst_i_6_n_0 ;
  wire \res_OBUF[17]_inst_i_2_n_0 ;
  wire \res_OBUF[17]_inst_i_3_n_0 ;
  wire \res_OBUF[17]_inst_i_4_n_0 ;
  wire \res_OBUF[17]_inst_i_5_n_0 ;
  wire \res_OBUF[17]_inst_i_6_n_0 ;
  wire \res_OBUF[18]_inst_i_2_n_0 ;
  wire \res_OBUF[18]_inst_i_3_n_0 ;
  wire \res_OBUF[18]_inst_i_4_n_0 ;
  wire \res_OBUF[18]_inst_i_5_n_0 ;
  wire \res_OBUF[18]_inst_i_6_n_0 ;
  wire \res_OBUF[19]_inst_i_10_n_0 ;
  wire \res_OBUF[19]_inst_i_11_n_0 ;
  wire \res_OBUF[19]_inst_i_2_n_0 ;
  wire \res_OBUF[19]_inst_i_2_n_1 ;
  wire \res_OBUF[19]_inst_i_2_n_2 ;
  wire \res_OBUF[19]_inst_i_2_n_3 ;
  wire \res_OBUF[19]_inst_i_2_n_4 ;
  wire \res_OBUF[19]_inst_i_2_n_5 ;
  wire \res_OBUF[19]_inst_i_2_n_6 ;
  wire \res_OBUF[19]_inst_i_2_n_7 ;
  wire \res_OBUF[19]_inst_i_3_n_0 ;
  wire \res_OBUF[19]_inst_i_4_n_0 ;
  wire \res_OBUF[19]_inst_i_5_n_0 ;
  wire \res_OBUF[19]_inst_i_6_n_0 ;
  wire \res_OBUF[19]_inst_i_7_n_0 ;
  wire \res_OBUF[19]_inst_i_8_n_0 ;
  wire \res_OBUF[19]_inst_i_9_n_0 ;
  wire \res_OBUF[1]_inst_i_2_n_0 ;
  wire \res_OBUF[1]_inst_i_3_n_0 ;
  wire \res_OBUF[1]_inst_i_4_n_0 ;
  wire \res_OBUF[1]_inst_i_5_n_0 ;
  wire \res_OBUF[20]_inst_i_2_n_0 ;
  wire \res_OBUF[20]_inst_i_3_n_0 ;
  wire \res_OBUF[20]_inst_i_4_n_0 ;
  wire \res_OBUF[20]_inst_i_5_n_0 ;
  wire \res_OBUF[21]_inst_i_2_n_0 ;
  wire \res_OBUF[21]_inst_i_3_n_0 ;
  wire \res_OBUF[21]_inst_i_4_n_0 ;
  wire \res_OBUF[21]_inst_i_5_n_0 ;
  wire \res_OBUF[22]_inst_i_2_n_0 ;
  wire \res_OBUF[22]_inst_i_3_n_0 ;
  wire \res_OBUF[22]_inst_i_4_n_0 ;
  wire \res_OBUF[22]_inst_i_5_n_0 ;
  wire \res_OBUF[23]_inst_i_10_n_0 ;
  wire \res_OBUF[23]_inst_i_2_n_0 ;
  wire \res_OBUF[23]_inst_i_2_n_1 ;
  wire \res_OBUF[23]_inst_i_2_n_2 ;
  wire \res_OBUF[23]_inst_i_2_n_3 ;
  wire \res_OBUF[23]_inst_i_2_n_4 ;
  wire \res_OBUF[23]_inst_i_2_n_5 ;
  wire \res_OBUF[23]_inst_i_2_n_6 ;
  wire \res_OBUF[23]_inst_i_2_n_7 ;
  wire \res_OBUF[23]_inst_i_3_n_0 ;
  wire \res_OBUF[23]_inst_i_4_n_0 ;
  wire \res_OBUF[23]_inst_i_5_n_0 ;
  wire \res_OBUF[23]_inst_i_6_n_0 ;
  wire \res_OBUF[23]_inst_i_7_n_0 ;
  wire \res_OBUF[23]_inst_i_8_n_0 ;
  wire \res_OBUF[23]_inst_i_9_n_0 ;
  wire \res_OBUF[24]_inst_i_2_n_0 ;
  wire \res_OBUF[24]_inst_i_3_n_0 ;
  wire \res_OBUF[24]_inst_i_4_n_0 ;
  wire \res_OBUF[24]_inst_i_5_n_0 ;
  wire \res_OBUF[25]_inst_i_2_n_0 ;
  wire \res_OBUF[25]_inst_i_3_n_0 ;
  wire \res_OBUF[25]_inst_i_4_n_0 ;
  wire \res_OBUF[25]_inst_i_5_n_0 ;
  wire \res_OBUF[26]_inst_i_2_n_0 ;
  wire \res_OBUF[26]_inst_i_3_n_0 ;
  wire \res_OBUF[26]_inst_i_4_n_0 ;
  wire \res_OBUF[26]_inst_i_5_n_0 ;
  wire \res_OBUF[27]_inst_i_10_n_0 ;
  wire \res_OBUF[27]_inst_i_2_n_0 ;
  wire \res_OBUF[27]_inst_i_2_n_1 ;
  wire \res_OBUF[27]_inst_i_2_n_2 ;
  wire \res_OBUF[27]_inst_i_2_n_3 ;
  wire \res_OBUF[27]_inst_i_2_n_4 ;
  wire \res_OBUF[27]_inst_i_2_n_5 ;
  wire \res_OBUF[27]_inst_i_2_n_6 ;
  wire \res_OBUF[27]_inst_i_2_n_7 ;
  wire \res_OBUF[27]_inst_i_3_n_0 ;
  wire \res_OBUF[27]_inst_i_4_n_0 ;
  wire \res_OBUF[27]_inst_i_5_n_0 ;
  wire \res_OBUF[27]_inst_i_6_n_0 ;
  wire \res_OBUF[27]_inst_i_7_n_0 ;
  wire \res_OBUF[27]_inst_i_8_n_0 ;
  wire \res_OBUF[27]_inst_i_9_n_0 ;
  wire \res_OBUF[28]_inst_i_2_n_0 ;
  wire \res_OBUF[28]_inst_i_3_n_0 ;
  wire \res_OBUF[28]_inst_i_4_n_0 ;
  wire \res_OBUF[29]_inst_i_2_n_0 ;
  wire \res_OBUF[29]_inst_i_3_n_0 ;
  wire \res_OBUF[29]_inst_i_4_n_0 ;
  wire \res_OBUF[2]_inst_i_2_n_0 ;
  wire \res_OBUF[2]_inst_i_3_n_0 ;
  wire \res_OBUF[2]_inst_i_4_n_0 ;
  wire \res_OBUF[2]_inst_i_5_n_0 ;
  wire \res_OBUF[30]_inst_i_2_n_0 ;
  wire \res_OBUF[30]_inst_i_2_n_1 ;
  wire \res_OBUF[30]_inst_i_2_n_2 ;
  wire \res_OBUF[30]_inst_i_2_n_3 ;
  wire \res_OBUF[30]_inst_i_2_n_4 ;
  wire \res_OBUF[30]_inst_i_2_n_5 ;
  wire \res_OBUF[30]_inst_i_2_n_6 ;
  wire \res_OBUF[30]_inst_i_2_n_7 ;
  wire \res_OBUF[30]_inst_i_3_n_0 ;
  wire \res_OBUF[30]_inst_i_4_n_0 ;
  wire \res_OBUF[30]_inst_i_5_n_0 ;
  wire \res_OBUF[30]_inst_i_6_n_0 ;
  wire \res_OBUF[30]_inst_i_7_n_0 ;
  wire \res_OBUF[30]_inst_i_8_n_0 ;
  wire \res_OBUF[30]_inst_i_9_n_0 ;
  wire \res_OBUF[31]_inst_i_2_n_0 ;
  wire \res_OBUF[31]_inst_i_3_n_0 ;
  wire \res_OBUF[31]_inst_i_4_n_0 ;
  wire \res_OBUF[3]_inst_i_10_n_0 ;
  wire \res_OBUF[3]_inst_i_11_n_0 ;
  wire \res_OBUF[3]_inst_i_2_n_0 ;
  wire \res_OBUF[3]_inst_i_2_n_1 ;
  wire \res_OBUF[3]_inst_i_2_n_2 ;
  wire \res_OBUF[3]_inst_i_2_n_3 ;
  wire \res_OBUF[3]_inst_i_2_n_4 ;
  wire \res_OBUF[3]_inst_i_2_n_5 ;
  wire \res_OBUF[3]_inst_i_2_n_6 ;
  wire \res_OBUF[3]_inst_i_2_n_7 ;
  wire \res_OBUF[3]_inst_i_3_n_0 ;
  wire \res_OBUF[3]_inst_i_4_n_0 ;
  wire \res_OBUF[3]_inst_i_5_n_0 ;
  wire \res_OBUF[3]_inst_i_6_n_0 ;
  wire \res_OBUF[3]_inst_i_7_n_0 ;
  wire \res_OBUF[3]_inst_i_8_n_0 ;
  wire \res_OBUF[3]_inst_i_9_n_0 ;
  wire \res_OBUF[4]_inst_i_2_n_0 ;
  wire \res_OBUF[4]_inst_i_3_n_0 ;
  wire \res_OBUF[4]_inst_i_4_n_0 ;
  wire \res_OBUF[4]_inst_i_5_n_0 ;
  wire \res_OBUF[5]_inst_i_2_n_0 ;
  wire \res_OBUF[5]_inst_i_3_n_0 ;
  wire \res_OBUF[5]_inst_i_4_n_0 ;
  wire \res_OBUF[5]_inst_i_5_n_0 ;
  wire \res_OBUF[6]_inst_i_2_n_0 ;
  wire \res_OBUF[6]_inst_i_3_n_0 ;
  wire \res_OBUF[6]_inst_i_4_n_0 ;
  wire \res_OBUF[6]_inst_i_5_n_0 ;
  wire \res_OBUF[7]_inst_i_10_n_0 ;
  wire \res_OBUF[7]_inst_i_2_n_0 ;
  wire \res_OBUF[7]_inst_i_2_n_1 ;
  wire \res_OBUF[7]_inst_i_2_n_2 ;
  wire \res_OBUF[7]_inst_i_2_n_3 ;
  wire \res_OBUF[7]_inst_i_2_n_4 ;
  wire \res_OBUF[7]_inst_i_2_n_5 ;
  wire \res_OBUF[7]_inst_i_2_n_6 ;
  wire \res_OBUF[7]_inst_i_2_n_7 ;
  wire \res_OBUF[7]_inst_i_3_n_0 ;
  wire \res_OBUF[7]_inst_i_4_n_0 ;
  wire \res_OBUF[7]_inst_i_5_n_0 ;
  wire \res_OBUF[7]_inst_i_6_n_0 ;
  wire \res_OBUF[7]_inst_i_7_n_0 ;
  wire \res_OBUF[7]_inst_i_8_n_0 ;
  wire \res_OBUF[7]_inst_i_9_n_0 ;
  wire \res_OBUF[8]_inst_i_2_n_0 ;
  wire \res_OBUF[8]_inst_i_3_n_0 ;
  wire \res_OBUF[8]_inst_i_4_n_0 ;
  wire \res_OBUF[8]_inst_i_5_n_0 ;
  wire \res_OBUF[9]_inst_i_2_n_0 ;
  wire \res_OBUF[9]_inst_i_3_n_0 ;
  wire \res_OBUF[9]_inst_i_4_n_0 ;
  wire \res_OBUF[9]_inst_i_5_n_0 ;
  wire zero;
  wire zero_OBUF;
  wire zero_OBUF_inst_i_10_n_0;
  wire zero_OBUF_inst_i_11_n_0;
  wire zero_OBUF_inst_i_12_n_0;
  wire zero_OBUF_inst_i_13_n_0;
  wire zero_OBUF_inst_i_14_n_0;
  wire zero_OBUF_inst_i_15_n_0;
  wire zero_OBUF_inst_i_16_n_0;
  wire zero_OBUF_inst_i_17_n_0;
  wire zero_OBUF_inst_i_18_n_0;
  wire zero_OBUF_inst_i_2_n_0;
  wire zero_OBUF_inst_i_3_n_0;
  wire zero_OBUF_inst_i_4_n_0;
  wire zero_OBUF_inst_i_5_n_0;
  wire zero_OBUF_inst_i_6_n_0;
  wire zero_OBUF_inst_i_7_n_0;
  wire zero_OBUF_inst_i_8_n_0;
  wire zero_OBUF_inst_i_9_n_0;
  wire [3:0]\NLW_res_OBUF[0]_inst_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_res_OBUF[0]_inst_i_5_O_UNCONNECTED ;

  IBUF \ALU_operation_IBUF[0]_inst 
       (.I(ALU_operation[0]),
        .O(ALU_operation_IBUF[0]));
  IBUF \ALU_operation_IBUF[1]_inst 
       (.I(ALU_operation[1]),
        .O(ALU_operation_IBUF[1]));
  IBUF \ALU_operation_IBUF[2]_inst 
       (.I(ALU_operation[2]),
        .O(ALU_operation_IBUF[2]));
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
  IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
  IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
  IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
  IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
  IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
  IBUF \A_IBUF[16]_inst 
       (.I(A[16]),
        .O(A_IBUF[16]));
  IBUF \A_IBUF[17]_inst 
       (.I(A[17]),
        .O(A_IBUF[17]));
  IBUF \A_IBUF[18]_inst 
       (.I(A[18]),
        .O(A_IBUF[18]));
  IBUF \A_IBUF[19]_inst 
       (.I(A[19]),
        .O(A_IBUF[19]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[20]_inst 
       (.I(A[20]),
        .O(A_IBUF[20]));
  IBUF \A_IBUF[21]_inst 
       (.I(A[21]),
        .O(A_IBUF[21]));
  IBUF \A_IBUF[22]_inst 
       (.I(A[22]),
        .O(A_IBUF[22]));
  IBUF \A_IBUF[23]_inst 
       (.I(A[23]),
        .O(A_IBUF[23]));
  IBUF \A_IBUF[24]_inst 
       (.I(A[24]),
        .O(A_IBUF[24]));
  IBUF \A_IBUF[25]_inst 
       (.I(A[25]),
        .O(A_IBUF[25]));
  IBUF \A_IBUF[26]_inst 
       (.I(A[26]),
        .O(A_IBUF[26]));
  IBUF \A_IBUF[27]_inst 
       (.I(A[27]),
        .O(A_IBUF[27]));
  IBUF \A_IBUF[28]_inst 
       (.I(A[28]),
        .O(A_IBUF[28]));
  IBUF \A_IBUF[29]_inst 
       (.I(A[29]),
        .O(A_IBUF[29]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[30]_inst 
       (.I(A[30]),
        .O(A_IBUF[30]));
  IBUF \A_IBUF[31]_inst 
       (.I(A[31]),
        .O(A_IBUF[31]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
  IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
  IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
  IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
  IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
  IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
  IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
  IBUF \B_IBUF[16]_inst 
       (.I(B[16]),
        .O(B_IBUF[16]));
  IBUF \B_IBUF[17]_inst 
       (.I(B[17]),
        .O(B_IBUF[17]));
  IBUF \B_IBUF[18]_inst 
       (.I(B[18]),
        .O(B_IBUF[18]));
  IBUF \B_IBUF[19]_inst 
       (.I(B[19]),
        .O(B_IBUF[19]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[20]_inst 
       (.I(B[20]),
        .O(B_IBUF[20]));
  IBUF \B_IBUF[21]_inst 
       (.I(B[21]),
        .O(B_IBUF[21]));
  IBUF \B_IBUF[22]_inst 
       (.I(B[22]),
        .O(B_IBUF[22]));
  IBUF \B_IBUF[23]_inst 
       (.I(B[23]),
        .O(B_IBUF[23]));
  IBUF \B_IBUF[24]_inst 
       (.I(B[24]),
        .O(B_IBUF[24]));
  IBUF \B_IBUF[25]_inst 
       (.I(B[25]),
        .O(B_IBUF[25]));
  IBUF \B_IBUF[26]_inst 
       (.I(B[26]),
        .O(B_IBUF[26]));
  IBUF \B_IBUF[27]_inst 
       (.I(B[27]),
        .O(B_IBUF[27]));
  IBUF \B_IBUF[28]_inst 
       (.I(B[28]),
        .O(B_IBUF[28]));
  IBUF \B_IBUF[29]_inst 
       (.I(B[29]),
        .O(B_IBUF[29]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[30]_inst 
       (.I(B[30]),
        .O(B_IBUF[30]));
  IBUF \B_IBUF[31]_inst 
       (.I(B[31]),
        .O(B_IBUF[31]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
  IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
  OBUF \res_OBUF[0]_inst 
       (.I(res_OBUF[0]),
        .O(res[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \res_OBUF[0]_inst_i_1 
       (.I0(\res_OBUF[0]_inst_i_2_n_0 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(\res_OBUF[0]_inst_i_3_n_0 ),
        .I3(ALU_operation_IBUF[2]),
        .I4(\res_OBUF[0]_inst_i_4_n_0 ),
        .O(res_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \res_OBUF[0]_inst_i_2 
       (.I0(p_0_out0),
        .I1(ALU_operation_IBUF[0]),
        .I2(\res_OBUF[3]_inst_i_2_n_7 ),
        .O(\res_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0C0A0CF)) 
    \res_OBUF[0]_inst_i_3 
       (.I0(\res_OBUF[1]_inst_i_4_n_0 ),
        .I1(\res_OBUF[0]_inst_i_6_n_0 ),
        .I2(ALU_operation_IBUF[0]),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[0]),
        .O(\res_OBUF[0]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[0]_inst_i_4 
       (.I0(\res_OBUF[3]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .O(\res_OBUF[0]_inst_i_4_n_0 ));
  CARRY4 \res_OBUF[0]_inst_i_5 
       (.CI(\res_OBUF[30]_inst_i_2_n_0 ),
        .CO(\NLW_res_OBUF[0]_inst_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_res_OBUF[0]_inst_i_5_O_UNCONNECTED [3:1],p_0_out0}),
        .S({1'b0,1'b0,1'b0,ALU_operation_IBUF[2]}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[0]_inst_i_6 
       (.I0(\res_OBUF[6]_inst_i_5_n_0 ),
        .I1(\res_OBUF[2]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[4]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[0]_inst_i_7_n_0 ),
        .O(\res_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[0]_inst_i_7 
       (.I0(A_IBUF[24]),
        .I1(A_IBUF[8]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[16]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[0]),
        .O(\res_OBUF[0]_inst_i_7_n_0 ));
  OBUF \res_OBUF[10]_inst 
       (.I(res_OBUF[10]),
        .O(res[10]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[10]_inst_i_1 
       (.I0(\res_OBUF[11]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[10]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[10]_inst_i_3_n_0 ),
        .O(res_OBUF[10]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[10]_inst_i_2 
       (.I0(\res_OBUF[11]_inst_i_9_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[10]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[10]),
        .I5(A_IBUF[10]),
        .O(\res_OBUF[10]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[10]_inst_i_3 
       (.I0(\res_OBUF[11]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[10]),
        .I4(B_IBUF[10]),
        .O(\res_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[10]_inst_i_4 
       (.I0(\res_OBUF[16]_inst_i_6_n_0 ),
        .I1(\res_OBUF[12]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[14]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[10]_inst_i_5_n_0 ),
        .O(\res_OBUF[10]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[10]_inst_i_5 
       (.I0(A_IBUF[18]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[26]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[10]),
        .O(\res_OBUF[10]_inst_i_5_n_0 ));
  OBUF \res_OBUF[11]_inst 
       (.I(res_OBUF[11]),
        .O(res[11]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[11]_inst_i_1 
       (.I0(\res_OBUF[11]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[11]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[11]_inst_i_4_n_0 ),
        .O(res_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[11]_inst_i_10 
       (.I0(A_IBUF[19]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[27]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[11]),
        .O(\res_OBUF[11]_inst_i_10_n_0 ));
  CARRY4 \res_OBUF[11]_inst_i_2 
       (.CI(\res_OBUF[7]_inst_i_2_n_0 ),
        .CO({\res_OBUF[11]_inst_i_2_n_0 ,\res_OBUF[11]_inst_i_2_n_1 ,\res_OBUF[11]_inst_i_2_n_2 ,\res_OBUF[11]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[11:8]),
        .O({\res_OBUF[11]_inst_i_2_n_4 ,\res_OBUF[11]_inst_i_2_n_5 ,\res_OBUF[11]_inst_i_2_n_6 ,\res_OBUF[11]_inst_i_2_n_7 }),
        .S({\res_OBUF[11]_inst_i_5_n_0 ,\res_OBUF[11]_inst_i_6_n_0 ,\res_OBUF[11]_inst_i_7_n_0 ,\res_OBUF[11]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[11]_inst_i_3 
       (.I0(\res_OBUF[12]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[11]_inst_i_9_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[11]),
        .I5(A_IBUF[11]),
        .O(\res_OBUF[11]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[11]_inst_i_4 
       (.I0(\res_OBUF[11]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[11]),
        .I4(B_IBUF[11]),
        .O(\res_OBUF[11]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[11]_inst_i_5 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[11]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[11]_inst_i_6 
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[11]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[11]_inst_i_7 
       (.I0(A_IBUF[9]),
        .I1(B_IBUF[9]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[11]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[11]_inst_i_8 
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[11]_inst_i_9 
       (.I0(\res_OBUF[17]_inst_i_6_n_0 ),
        .I1(\res_OBUF[13]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[15]_inst_i_10_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[11]_inst_i_10_n_0 ),
        .O(\res_OBUF[11]_inst_i_9_n_0 ));
  OBUF \res_OBUF[12]_inst 
       (.I(res_OBUF[12]),
        .O(res[12]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[12]_inst_i_1 
       (.I0(\res_OBUF[15]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[12]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[12]_inst_i_3_n_0 ),
        .O(res_OBUF[12]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[12]_inst_i_2 
       (.I0(\res_OBUF[13]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[12]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[12]),
        .I5(A_IBUF[12]),
        .O(\res_OBUF[12]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[12]_inst_i_3 
       (.I0(\res_OBUF[15]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[12]),
        .I4(B_IBUF[12]),
        .O(\res_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[12]_inst_i_4 
       (.I0(\res_OBUF[18]_inst_i_6_n_0 ),
        .I1(\res_OBUF[14]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[16]_inst_i_6_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[12]_inst_i_5_n_0 ),
        .O(\res_OBUF[12]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[12]_inst_i_5 
       (.I0(A_IBUF[20]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[28]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[12]),
        .O(\res_OBUF[12]_inst_i_5_n_0 ));
  OBUF \res_OBUF[13]_inst 
       (.I(res_OBUF[13]),
        .O(res[13]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[13]_inst_i_1 
       (.I0(\res_OBUF[15]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[13]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[13]_inst_i_3_n_0 ),
        .O(res_OBUF[13]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[13]_inst_i_2 
       (.I0(\res_OBUF[14]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[13]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[13]),
        .I5(A_IBUF[13]),
        .O(\res_OBUF[13]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[13]_inst_i_3 
       (.I0(\res_OBUF[15]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[13]),
        .I4(B_IBUF[13]),
        .O(\res_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[13]_inst_i_4 
       (.I0(\res_OBUF[19]_inst_i_11_n_0 ),
        .I1(\res_OBUF[15]_inst_i_10_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[17]_inst_i_6_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[13]_inst_i_5_n_0 ),
        .O(\res_OBUF[13]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[13]_inst_i_5 
       (.I0(A_IBUF[21]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[29]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[13]),
        .O(\res_OBUF[13]_inst_i_5_n_0 ));
  OBUF \res_OBUF[14]_inst 
       (.I(res_OBUF[14]),
        .O(res[14]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[14]_inst_i_1 
       (.I0(\res_OBUF[15]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[14]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[14]_inst_i_3_n_0 ),
        .O(res_OBUF[14]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[14]_inst_i_2 
       (.I0(\res_OBUF[15]_inst_i_9_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[14]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[14]),
        .I5(A_IBUF[14]),
        .O(\res_OBUF[14]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[14]_inst_i_3 
       (.I0(\res_OBUF[15]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[14]),
        .I4(B_IBUF[14]),
        .O(\res_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[14]_inst_i_4 
       (.I0(\res_OBUF[16]_inst_i_5_n_0 ),
        .I1(\res_OBUF[16]_inst_i_6_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[18]_inst_i_6_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[14]_inst_i_5_n_0 ),
        .O(\res_OBUF[14]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[14]_inst_i_5 
       (.I0(A_IBUF[22]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[30]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[14]),
        .O(\res_OBUF[14]_inst_i_5_n_0 ));
  OBUF \res_OBUF[15]_inst 
       (.I(res_OBUF[15]),
        .O(res[15]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[15]_inst_i_1 
       (.I0(\res_OBUF[15]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[15]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[15]_inst_i_4_n_0 ),
        .O(res_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[15]_inst_i_10 
       (.I0(A_IBUF[23]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[31]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[15]),
        .O(\res_OBUF[15]_inst_i_10_n_0 ));
  CARRY4 \res_OBUF[15]_inst_i_2 
       (.CI(\res_OBUF[11]_inst_i_2_n_0 ),
        .CO({\res_OBUF[15]_inst_i_2_n_0 ,\res_OBUF[15]_inst_i_2_n_1 ,\res_OBUF[15]_inst_i_2_n_2 ,\res_OBUF[15]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[15:12]),
        .O({\res_OBUF[15]_inst_i_2_n_4 ,\res_OBUF[15]_inst_i_2_n_5 ,\res_OBUF[15]_inst_i_2_n_6 ,\res_OBUF[15]_inst_i_2_n_7 }),
        .S({\res_OBUF[15]_inst_i_5_n_0 ,\res_OBUF[15]_inst_i_6_n_0 ,\res_OBUF[15]_inst_i_7_n_0 ,\res_OBUF[15]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[15]_inst_i_3 
       (.I0(\res_OBUF[16]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[15]_inst_i_9_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[15]),
        .I5(A_IBUF[15]),
        .O(\res_OBUF[15]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[15]_inst_i_4 
       (.I0(\res_OBUF[15]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[15]),
        .I4(B_IBUF[15]),
        .O(\res_OBUF[15]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[15]_inst_i_5 
       (.I0(A_IBUF[15]),
        .I1(B_IBUF[15]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[15]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[15]_inst_i_6 
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[15]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[15]_inst_i_7 
       (.I0(A_IBUF[13]),
        .I1(B_IBUF[13]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[15]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[15]_inst_i_8 
       (.I0(A_IBUF[12]),
        .I1(B_IBUF[12]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[15]_inst_i_9 
       (.I0(\res_OBUF[17]_inst_i_5_n_0 ),
        .I1(\res_OBUF[17]_inst_i_6_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[19]_inst_i_11_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[15]_inst_i_10_n_0 ),
        .O(\res_OBUF[15]_inst_i_9_n_0 ));
  OBUF \res_OBUF[16]_inst 
       (.I(res_OBUF[16]),
        .O(res[16]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[16]_inst_i_1 
       (.I0(\res_OBUF[19]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[16]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[16]_inst_i_3_n_0 ),
        .O(res_OBUF[16]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[16]_inst_i_2 
       (.I0(\res_OBUF[17]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[16]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[16]),
        .I5(A_IBUF[16]),
        .O(\res_OBUF[16]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[16]_inst_i_3 
       (.I0(\res_OBUF[19]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[16]),
        .I4(B_IBUF[16]),
        .O(\res_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[16]_inst_i_4 
       (.I0(\res_OBUF[18]_inst_i_5_n_0 ),
        .I1(\res_OBUF[18]_inst_i_6_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[16]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[16]_inst_i_6_n_0 ),
        .O(\res_OBUF[16]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[16]_inst_i_5 
       (.I0(A_IBUF[28]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[20]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[16]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[16]_inst_i_6 
       (.I0(A_IBUF[24]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[16]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[16]_inst_i_6_n_0 ));
  OBUF \res_OBUF[17]_inst 
       (.I(res_OBUF[17]),
        .O(res[17]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[17]_inst_i_1 
       (.I0(\res_OBUF[19]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[17]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[17]_inst_i_3_n_0 ),
        .O(res_OBUF[17]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[17]_inst_i_2 
       (.I0(\res_OBUF[18]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[17]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[17]),
        .I5(A_IBUF[17]),
        .O(\res_OBUF[17]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[17]_inst_i_3 
       (.I0(\res_OBUF[19]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[17]),
        .I4(B_IBUF[17]),
        .O(\res_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[17]_inst_i_4 
       (.I0(\res_OBUF[19]_inst_i_10_n_0 ),
        .I1(\res_OBUF[19]_inst_i_11_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[17]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[17]_inst_i_6_n_0 ),
        .O(\res_OBUF[17]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[17]_inst_i_5 
       (.I0(A_IBUF[29]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[21]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[17]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[17]_inst_i_6 
       (.I0(A_IBUF[25]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[17]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[17]_inst_i_6_n_0 ));
  OBUF \res_OBUF[18]_inst 
       (.I(res_OBUF[18]),
        .O(res[18]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[18]_inst_i_1 
       (.I0(\res_OBUF[19]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[18]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[18]_inst_i_3_n_0 ),
        .O(res_OBUF[18]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[18]_inst_i_2 
       (.I0(\res_OBUF[19]_inst_i_9_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[18]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[18]),
        .I5(A_IBUF[18]),
        .O(\res_OBUF[18]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[18]_inst_i_3 
       (.I0(\res_OBUF[19]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[18]),
        .I4(B_IBUF[18]),
        .O(\res_OBUF[18]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \res_OBUF[18]_inst_i_4 
       (.I0(\res_OBUF[20]_inst_i_5_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[18]_inst_i_5_n_0 ),
        .I3(B_IBUF[2]),
        .I4(\res_OBUF[18]_inst_i_6_n_0 ),
        .O(\res_OBUF[18]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[18]_inst_i_5 
       (.I0(A_IBUF[30]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[22]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[18]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[18]_inst_i_6 
       (.I0(A_IBUF[26]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[18]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[18]_inst_i_6_n_0 ));
  OBUF \res_OBUF[19]_inst 
       (.I(res_OBUF[19]),
        .O(res[19]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[19]_inst_i_1 
       (.I0(\res_OBUF[19]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[19]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[19]_inst_i_4_n_0 ),
        .O(res_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[19]_inst_i_10 
       (.I0(A_IBUF[31]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[23]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[19]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \res_OBUF[19]_inst_i_11 
       (.I0(A_IBUF[27]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[19]),
        .I3(B_IBUF[4]),
        .O(\res_OBUF[19]_inst_i_11_n_0 ));
  CARRY4 \res_OBUF[19]_inst_i_2 
       (.CI(\res_OBUF[15]_inst_i_2_n_0 ),
        .CO({\res_OBUF[19]_inst_i_2_n_0 ,\res_OBUF[19]_inst_i_2_n_1 ,\res_OBUF[19]_inst_i_2_n_2 ,\res_OBUF[19]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[19:16]),
        .O({\res_OBUF[19]_inst_i_2_n_4 ,\res_OBUF[19]_inst_i_2_n_5 ,\res_OBUF[19]_inst_i_2_n_6 ,\res_OBUF[19]_inst_i_2_n_7 }),
        .S({\res_OBUF[19]_inst_i_5_n_0 ,\res_OBUF[19]_inst_i_6_n_0 ,\res_OBUF[19]_inst_i_7_n_0 ,\res_OBUF[19]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[19]_inst_i_3 
       (.I0(\res_OBUF[20]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[19]_inst_i_9_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[19]),
        .I5(A_IBUF[19]),
        .O(\res_OBUF[19]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[19]_inst_i_4 
       (.I0(\res_OBUF[19]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[19]),
        .I4(B_IBUF[19]),
        .O(\res_OBUF[19]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[19]_inst_i_5 
       (.I0(A_IBUF[19]),
        .I1(B_IBUF[19]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[19]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[19]_inst_i_6 
       (.I0(A_IBUF[18]),
        .I1(B_IBUF[18]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[19]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[19]_inst_i_7 
       (.I0(A_IBUF[17]),
        .I1(B_IBUF[17]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[19]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[19]_inst_i_8 
       (.I0(A_IBUF[16]),
        .I1(B_IBUF[16]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[19]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \res_OBUF[19]_inst_i_9 
       (.I0(\res_OBUF[21]_inst_i_5_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[19]_inst_i_10_n_0 ),
        .I3(B_IBUF[2]),
        .I4(\res_OBUF[19]_inst_i_11_n_0 ),
        .O(\res_OBUF[19]_inst_i_9_n_0 ));
  OBUF \res_OBUF[1]_inst 
       (.I(res_OBUF[1]),
        .O(res[1]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[1]_inst_i_1 
       (.I0(\res_OBUF[3]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[1]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[1]_inst_i_3_n_0 ),
        .O(res_OBUF[1]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[1]_inst_i_2 
       (.I0(\res_OBUF[2]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[1]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[1]),
        .I5(A_IBUF[1]),
        .O(\res_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[1]_inst_i_3 
       (.I0(\res_OBUF[3]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[1]),
        .I4(B_IBUF[1]),
        .O(\res_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[1]_inst_i_4 
       (.I0(\res_OBUF[7]_inst_i_10_n_0 ),
        .I1(\res_OBUF[3]_inst_i_11_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[5]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[1]_inst_i_5_n_0 ),
        .O(\res_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[1]_inst_i_5 
       (.I0(A_IBUF[25]),
        .I1(A_IBUF[9]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[17]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[1]),
        .O(\res_OBUF[1]_inst_i_5_n_0 ));
  OBUF \res_OBUF[20]_inst 
       (.I(res_OBUF[20]),
        .O(res[20]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[20]_inst_i_1 
       (.I0(\res_OBUF[23]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[20]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[20]_inst_i_3_n_0 ),
        .O(res_OBUF[20]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[20]_inst_i_2 
       (.I0(\res_OBUF[21]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[20]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[20]),
        .I5(A_IBUF[20]),
        .O(\res_OBUF[20]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[20]_inst_i_3 
       (.I0(\res_OBUF[23]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[20]),
        .I4(B_IBUF[20]),
        .O(\res_OBUF[20]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res_OBUF[20]_inst_i_4 
       (.I0(\res_OBUF[22]_inst_i_5_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[20]_inst_i_5_n_0 ),
        .O(\res_OBUF[20]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res_OBUF[20]_inst_i_5 
       (.I0(A_IBUF[24]),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[28]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[20]),
        .I5(B_IBUF[4]),
        .O(\res_OBUF[20]_inst_i_5_n_0 ));
  OBUF \res_OBUF[21]_inst 
       (.I(res_OBUF[21]),
        .O(res[21]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[21]_inst_i_1 
       (.I0(\res_OBUF[23]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[21]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[21]_inst_i_3_n_0 ),
        .O(res_OBUF[21]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[21]_inst_i_2 
       (.I0(\res_OBUF[22]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[21]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[21]),
        .I5(A_IBUF[21]),
        .O(\res_OBUF[21]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[21]_inst_i_3 
       (.I0(\res_OBUF[23]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[21]),
        .I4(B_IBUF[21]),
        .O(\res_OBUF[21]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res_OBUF[21]_inst_i_4 
       (.I0(\res_OBUF[23]_inst_i_10_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[21]_inst_i_5_n_0 ),
        .O(\res_OBUF[21]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res_OBUF[21]_inst_i_5 
       (.I0(A_IBUF[25]),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[29]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[21]),
        .I5(B_IBUF[4]),
        .O(\res_OBUF[21]_inst_i_5_n_0 ));
  OBUF \res_OBUF[22]_inst 
       (.I(res_OBUF[22]),
        .O(res[22]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[22]_inst_i_1 
       (.I0(\res_OBUF[23]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[22]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[22]_inst_i_3_n_0 ),
        .O(res_OBUF[22]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[22]_inst_i_2 
       (.I0(\res_OBUF[23]_inst_i_9_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[22]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[22]),
        .I5(A_IBUF[22]),
        .O(\res_OBUF[22]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[22]_inst_i_3 
       (.I0(\res_OBUF[23]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[22]),
        .I4(B_IBUF[22]),
        .O(\res_OBUF[22]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res_OBUF[22]_inst_i_4 
       (.I0(\res_OBUF[24]_inst_i_5_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[22]_inst_i_5_n_0 ),
        .O(\res_OBUF[22]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res_OBUF[22]_inst_i_5 
       (.I0(A_IBUF[26]),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[30]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[22]),
        .I5(B_IBUF[4]),
        .O(\res_OBUF[22]_inst_i_5_n_0 ));
  OBUF \res_OBUF[23]_inst 
       (.I(res_OBUF[23]),
        .O(res[23]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[23]_inst_i_1 
       (.I0(\res_OBUF[23]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[23]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[23]_inst_i_4_n_0 ),
        .O(res_OBUF[23]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \res_OBUF[23]_inst_i_10 
       (.I0(A_IBUF[27]),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[31]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[23]),
        .I5(B_IBUF[4]),
        .O(\res_OBUF[23]_inst_i_10_n_0 ));
  CARRY4 \res_OBUF[23]_inst_i_2 
       (.CI(\res_OBUF[19]_inst_i_2_n_0 ),
        .CO({\res_OBUF[23]_inst_i_2_n_0 ,\res_OBUF[23]_inst_i_2_n_1 ,\res_OBUF[23]_inst_i_2_n_2 ,\res_OBUF[23]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[23:20]),
        .O({\res_OBUF[23]_inst_i_2_n_4 ,\res_OBUF[23]_inst_i_2_n_5 ,\res_OBUF[23]_inst_i_2_n_6 ,\res_OBUF[23]_inst_i_2_n_7 }),
        .S({\res_OBUF[23]_inst_i_5_n_0 ,\res_OBUF[23]_inst_i_6_n_0 ,\res_OBUF[23]_inst_i_7_n_0 ,\res_OBUF[23]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[23]_inst_i_3 
       (.I0(\res_OBUF[24]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[23]_inst_i_9_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[23]),
        .I5(A_IBUF[23]),
        .O(\res_OBUF[23]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[23]_inst_i_4 
       (.I0(\res_OBUF[23]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[23]),
        .I4(B_IBUF[23]),
        .O(\res_OBUF[23]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[23]_inst_i_5 
       (.I0(A_IBUF[23]),
        .I1(B_IBUF[23]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[23]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[23]_inst_i_6 
       (.I0(A_IBUF[22]),
        .I1(B_IBUF[22]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[23]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[23]_inst_i_7 
       (.I0(A_IBUF[21]),
        .I1(B_IBUF[21]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[23]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[23]_inst_i_8 
       (.I0(A_IBUF[20]),
        .I1(B_IBUF[20]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[23]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res_OBUF[23]_inst_i_9 
       (.I0(\res_OBUF[25]_inst_i_5_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[23]_inst_i_10_n_0 ),
        .O(\res_OBUF[23]_inst_i_9_n_0 ));
  OBUF \res_OBUF[24]_inst 
       (.I(res_OBUF[24]),
        .O(res[24]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[24]_inst_i_1 
       (.I0(\res_OBUF[27]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[24]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[24]_inst_i_3_n_0 ),
        .O(res_OBUF[24]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[24]_inst_i_2 
       (.I0(\res_OBUF[25]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[24]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[24]),
        .I5(A_IBUF[24]),
        .O(\res_OBUF[24]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[24]_inst_i_3 
       (.I0(\res_OBUF[27]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[24]),
        .I4(B_IBUF[24]),
        .O(\res_OBUF[24]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res_OBUF[24]_inst_i_4 
       (.I0(\res_OBUF[26]_inst_i_5_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[24]_inst_i_5_n_0 ),
        .O(\res_OBUF[24]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res_OBUF[24]_inst_i_5 
       (.I0(A_IBUF[28]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[24]),
        .I4(B_IBUF[3]),
        .O(\res_OBUF[24]_inst_i_5_n_0 ));
  OBUF \res_OBUF[25]_inst 
       (.I(res_OBUF[25]),
        .O(res[25]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[25]_inst_i_1 
       (.I0(\res_OBUF[27]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[25]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[25]_inst_i_3_n_0 ),
        .O(res_OBUF[25]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[25]_inst_i_2 
       (.I0(\res_OBUF[26]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[25]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[25]),
        .I5(A_IBUF[25]),
        .O(\res_OBUF[25]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[25]_inst_i_3 
       (.I0(\res_OBUF[27]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[25]),
        .I4(B_IBUF[25]),
        .O(\res_OBUF[25]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \res_OBUF[25]_inst_i_4 
       (.I0(\res_OBUF[27]_inst_i_10_n_0 ),
        .I1(B_IBUF[1]),
        .I2(\res_OBUF[25]_inst_i_5_n_0 ),
        .O(\res_OBUF[25]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res_OBUF[25]_inst_i_5 
       (.I0(A_IBUF[29]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[25]),
        .I4(B_IBUF[3]),
        .O(\res_OBUF[25]_inst_i_5_n_0 ));
  OBUF \res_OBUF[26]_inst 
       (.I(res_OBUF[26]),
        .O(res[26]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[26]_inst_i_1 
       (.I0(\res_OBUF[27]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[26]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[26]_inst_i_3_n_0 ),
        .O(res_OBUF[26]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[26]_inst_i_2 
       (.I0(\res_OBUF[27]_inst_i_9_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[26]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[26]),
        .I5(A_IBUF[26]),
        .O(\res_OBUF[26]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[26]_inst_i_3 
       (.I0(\res_OBUF[27]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[26]),
        .I4(B_IBUF[26]),
        .O(\res_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \res_OBUF[26]_inst_i_4 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[28]),
        .I2(B_IBUF[4]),
        .I3(B_IBUF[2]),
        .I4(B_IBUF[1]),
        .I5(\res_OBUF[26]_inst_i_5_n_0 ),
        .O(\res_OBUF[26]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res_OBUF[26]_inst_i_5 
       (.I0(A_IBUF[30]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[26]),
        .I4(B_IBUF[3]),
        .O(\res_OBUF[26]_inst_i_5_n_0 ));
  OBUF \res_OBUF[27]_inst 
       (.I(res_OBUF[27]),
        .O(res[27]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[27]_inst_i_1 
       (.I0(\res_OBUF[27]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[27]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[27]_inst_i_4_n_0 ),
        .O(res_OBUF[27]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \res_OBUF[27]_inst_i_10 
       (.I0(A_IBUF[31]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[27]),
        .I4(B_IBUF[3]),
        .O(\res_OBUF[27]_inst_i_10_n_0 ));
  CARRY4 \res_OBUF[27]_inst_i_2 
       (.CI(\res_OBUF[23]_inst_i_2_n_0 ),
        .CO({\res_OBUF[27]_inst_i_2_n_0 ,\res_OBUF[27]_inst_i_2_n_1 ,\res_OBUF[27]_inst_i_2_n_2 ,\res_OBUF[27]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[27:24]),
        .O({\res_OBUF[27]_inst_i_2_n_4 ,\res_OBUF[27]_inst_i_2_n_5 ,\res_OBUF[27]_inst_i_2_n_6 ,\res_OBUF[27]_inst_i_2_n_7 }),
        .S({\res_OBUF[27]_inst_i_5_n_0 ,\res_OBUF[27]_inst_i_6_n_0 ,\res_OBUF[27]_inst_i_7_n_0 ,\res_OBUF[27]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[27]_inst_i_3 
       (.I0(\res_OBUF[28]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[27]_inst_i_9_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[27]),
        .I5(A_IBUF[27]),
        .O(\res_OBUF[27]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[27]_inst_i_4 
       (.I0(\res_OBUF[27]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[27]),
        .I4(B_IBUF[27]),
        .O(\res_OBUF[27]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[27]_inst_i_5 
       (.I0(A_IBUF[27]),
        .I1(B_IBUF[27]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[27]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[27]_inst_i_6 
       (.I0(A_IBUF[26]),
        .I1(B_IBUF[26]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[27]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[27]_inst_i_7 
       (.I0(A_IBUF[25]),
        .I1(B_IBUF[25]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[27]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[27]_inst_i_8 
       (.I0(A_IBUF[24]),
        .I1(B_IBUF[24]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[27]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \res_OBUF[27]_inst_i_9 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[29]),
        .I2(B_IBUF[4]),
        .I3(B_IBUF[2]),
        .I4(B_IBUF[1]),
        .I5(\res_OBUF[27]_inst_i_10_n_0 ),
        .O(\res_OBUF[27]_inst_i_9_n_0 ));
  OBUF \res_OBUF[28]_inst 
       (.I(res_OBUF[28]),
        .O(res[28]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[28]_inst_i_1 
       (.I0(\res_OBUF[30]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[28]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[28]_inst_i_3_n_0 ),
        .O(res_OBUF[28]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[28]_inst_i_2 
       (.I0(\res_OBUF[29]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[28]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[28]),
        .I5(A_IBUF[28]),
        .O(\res_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[28]_inst_i_3 
       (.I0(\res_OBUF[30]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[28]),
        .I4(B_IBUF[28]),
        .O(\res_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \res_OBUF[28]_inst_i_4 
       (.I0(A_IBUF[30]),
        .I1(B_IBUF[1]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[28]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[2]),
        .O(\res_OBUF[28]_inst_i_4_n_0 ));
  OBUF \res_OBUF[29]_inst 
       (.I(res_OBUF[29]),
        .O(res[29]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[29]_inst_i_1 
       (.I0(\res_OBUF[30]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[29]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[29]_inst_i_3_n_0 ),
        .O(res_OBUF[29]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[29]_inst_i_2 
       (.I0(\res_OBUF[30]_inst_i_9_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[29]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[29]),
        .I5(A_IBUF[29]),
        .O(\res_OBUF[29]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[29]_inst_i_3 
       (.I0(\res_OBUF[30]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[29]),
        .I4(B_IBUF[29]),
        .O(\res_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \res_OBUF[29]_inst_i_4 
       (.I0(A_IBUF[31]),
        .I1(B_IBUF[1]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[29]),
        .I4(B_IBUF[4]),
        .I5(B_IBUF[2]),
        .O(\res_OBUF[29]_inst_i_4_n_0 ));
  OBUF \res_OBUF[2]_inst 
       (.I(res_OBUF[2]),
        .O(res[2]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[2]_inst_i_1 
       (.I0(\res_OBUF[3]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[2]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[2]_inst_i_3_n_0 ),
        .O(res_OBUF[2]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[2]_inst_i_2 
       (.I0(\res_OBUF[3]_inst_i_10_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[2]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[2]),
        .I5(A_IBUF[2]),
        .O(\res_OBUF[2]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[2]_inst_i_3 
       (.I0(\res_OBUF[3]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[2]),
        .O(\res_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[2]_inst_i_4 
       (.I0(\res_OBUF[8]_inst_i_5_n_0 ),
        .I1(\res_OBUF[4]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[6]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[2]_inst_i_5_n_0 ),
        .O(\res_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[2]_inst_i_5 
       (.I0(A_IBUF[26]),
        .I1(A_IBUF[10]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[18]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[2]),
        .O(\res_OBUF[2]_inst_i_5_n_0 ));
  OBUF \res_OBUF[30]_inst 
       (.I(res_OBUF[30]),
        .O(res[30]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[30]_inst_i_1 
       (.I0(\res_OBUF[30]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[30]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[30]_inst_i_4_n_0 ),
        .O(res_OBUF[30]));
  CARRY4 \res_OBUF[30]_inst_i_2 
       (.CI(\res_OBUF[27]_inst_i_2_n_0 ),
        .CO({\res_OBUF[30]_inst_i_2_n_0 ,\res_OBUF[30]_inst_i_2_n_1 ,\res_OBUF[30]_inst_i_2_n_2 ,\res_OBUF[30]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[31:28]),
        .O({\res_OBUF[30]_inst_i_2_n_4 ,\res_OBUF[30]_inst_i_2_n_5 ,\res_OBUF[30]_inst_i_2_n_6 ,\res_OBUF[30]_inst_i_2_n_7 }),
        .S({\res_OBUF[30]_inst_i_5_n_0 ,\res_OBUF[30]_inst_i_6_n_0 ,\res_OBUF[30]_inst_i_7_n_0 ,\res_OBUF[30]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[30]_inst_i_3 
       (.I0(\res_OBUF[31]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[30]_inst_i_9_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[30]),
        .I5(A_IBUF[30]),
        .O(\res_OBUF[30]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[30]_inst_i_4 
       (.I0(\res_OBUF[30]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[30]),
        .I4(B_IBUF[30]),
        .O(\res_OBUF[30]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[30]_inst_i_5 
       (.I0(A_IBUF[31]),
        .I1(B_IBUF[31]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[30]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[30]_inst_i_6 
       (.I0(A_IBUF[30]),
        .I1(B_IBUF[30]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[30]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[30]_inst_i_7 
       (.I0(A_IBUF[29]),
        .I1(B_IBUF[29]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[30]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[30]_inst_i_8 
       (.I0(A_IBUF[28]),
        .I1(B_IBUF[28]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[30]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \res_OBUF[30]_inst_i_9 
       (.I0(B_IBUF[2]),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[30]),
        .I3(B_IBUF[3]),
        .I4(B_IBUF[1]),
        .O(\res_OBUF[30]_inst_i_9_n_0 ));
  OBUF \res_OBUF[31]_inst 
       (.I(res_OBUF[31]),
        .O(res[31]));
  MUXF7 \res_OBUF[31]_inst_i_1 
       (.I0(\res_OBUF[31]_inst_i_2_n_0 ),
        .I1(\res_OBUF[31]_inst_i_3_n_0 ),
        .O(res_OBUF[31]),
        .S(ALU_operation_IBUF[2]));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[31]_inst_i_2 
       (.I0(\res_OBUF[30]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[31]),
        .I4(B_IBUF[31]),
        .O(\res_OBUF[31]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h003088880030BBBB)) 
    \res_OBUF[31]_inst_i_3 
       (.I0(\res_OBUF[30]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(\res_OBUF[31]_inst_i_4_n_0 ),
        .I3(B_IBUF[0]),
        .I4(ALU_operation_IBUF[0]),
        .I5(or32_0_res),
        .O(\res_OBUF[31]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \res_OBUF[31]_inst_i_4 
       (.I0(B_IBUF[2]),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[31]),
        .I3(B_IBUF[3]),
        .I4(B_IBUF[1]),
        .O(\res_OBUF[31]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \res_OBUF[31]_inst_i_5 
       (.I0(A_IBUF[31]),
        .I1(B_IBUF[31]),
        .O(or32_0_res));
  OBUF \res_OBUF[3]_inst 
       (.I(res_OBUF[3]),
        .O(res[3]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[3]_inst_i_1 
       (.I0(\res_OBUF[3]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[3]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[3]_inst_i_4_n_0 ),
        .O(res_OBUF[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[3]_inst_i_10 
       (.I0(\res_OBUF[9]_inst_i_5_n_0 ),
        .I1(\res_OBUF[5]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[7]_inst_i_10_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[3]_inst_i_11_n_0 ),
        .O(\res_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[3]_inst_i_11 
       (.I0(A_IBUF[27]),
        .I1(A_IBUF[11]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[19]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[3]),
        .O(\res_OBUF[3]_inst_i_11_n_0 ));
  CARRY4 \res_OBUF[3]_inst_i_2 
       (.CI(1'b0),
        .CO({\res_OBUF[3]_inst_i_2_n_0 ,\res_OBUF[3]_inst_i_2_n_1 ,\res_OBUF[3]_inst_i_2_n_2 ,\res_OBUF[3]_inst_i_2_n_3 }),
        .CYINIT(\res_OBUF[3]_inst_i_5_n_0 ),
        .DI(A_IBUF[3:0]),
        .O({\res_OBUF[3]_inst_i_2_n_4 ,\res_OBUF[3]_inst_i_2_n_5 ,\res_OBUF[3]_inst_i_2_n_6 ,\res_OBUF[3]_inst_i_2_n_7 }),
        .S({\res_OBUF[3]_inst_i_6_n_0 ,\res_OBUF[3]_inst_i_7_n_0 ,\res_OBUF[3]_inst_i_8_n_0 ,\res_OBUF[3]_inst_i_9_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[3]_inst_i_3 
       (.I0(\res_OBUF[4]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[3]_inst_i_10_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[3]),
        .O(\res_OBUF[3]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[3]_inst_i_4 
       (.I0(\res_OBUF[3]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .O(\res_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \res_OBUF[3]_inst_i_5 
       (.I0(ALU_operation_IBUF[2]),
        .I1(B_IBUF[0]),
        .O(\res_OBUF[3]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[3]_inst_i_6 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[3]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[3]_inst_i_7 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[3]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[3]_inst_i_8 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[3]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_OBUF[3]_inst_i_9 
       (.I0(A_IBUF[0]),
        .I1(ALU_operation_IBUF[2]),
        .O(\res_OBUF[3]_inst_i_9_n_0 ));
  OBUF \res_OBUF[4]_inst 
       (.I(res_OBUF[4]),
        .O(res[4]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[4]_inst_i_1 
       (.I0(\res_OBUF[7]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[4]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[4]_inst_i_3_n_0 ),
        .O(res_OBUF[4]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[4]_inst_i_2 
       (.I0(\res_OBUF[5]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[4]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[4]),
        .O(\res_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[4]_inst_i_3 
       (.I0(\res_OBUF[7]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[4]),
        .I4(B_IBUF[4]),
        .O(\res_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[4]_inst_i_4 
       (.I0(\res_OBUF[10]_inst_i_5_n_0 ),
        .I1(\res_OBUF[6]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[8]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[4]_inst_i_5_n_0 ),
        .O(\res_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[4]_inst_i_5 
       (.I0(A_IBUF[28]),
        .I1(A_IBUF[12]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[20]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[4]),
        .O(\res_OBUF[4]_inst_i_5_n_0 ));
  OBUF \res_OBUF[5]_inst 
       (.I(res_OBUF[5]),
        .O(res[5]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[5]_inst_i_1 
       (.I0(\res_OBUF[7]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[5]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[5]_inst_i_3_n_0 ),
        .O(res_OBUF[5]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[5]_inst_i_2 
       (.I0(\res_OBUF[6]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[5]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[5]),
        .I5(A_IBUF[5]),
        .O(\res_OBUF[5]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[5]_inst_i_3 
       (.I0(\res_OBUF[7]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[5]),
        .O(\res_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[5]_inst_i_4 
       (.I0(\res_OBUF[11]_inst_i_10_n_0 ),
        .I1(\res_OBUF[7]_inst_i_10_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[9]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[5]_inst_i_5_n_0 ),
        .O(\res_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[5]_inst_i_5 
       (.I0(A_IBUF[29]),
        .I1(A_IBUF[13]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[21]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[5]),
        .O(\res_OBUF[5]_inst_i_5_n_0 ));
  OBUF \res_OBUF[6]_inst 
       (.I(res_OBUF[6]),
        .O(res[6]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[6]_inst_i_1 
       (.I0(\res_OBUF[7]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[6]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[6]_inst_i_3_n_0 ),
        .O(res_OBUF[6]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[6]_inst_i_2 
       (.I0(\res_OBUF[7]_inst_i_9_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[6]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[6]),
        .I5(A_IBUF[6]),
        .O(\res_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[6]_inst_i_3 
       (.I0(\res_OBUF[7]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[6]),
        .I4(B_IBUF[6]),
        .O(\res_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[6]_inst_i_4 
       (.I0(\res_OBUF[12]_inst_i_5_n_0 ),
        .I1(\res_OBUF[8]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[10]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[6]_inst_i_5_n_0 ),
        .O(\res_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[6]_inst_i_5 
       (.I0(A_IBUF[30]),
        .I1(A_IBUF[14]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[22]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[6]),
        .O(\res_OBUF[6]_inst_i_5_n_0 ));
  OBUF \res_OBUF[7]_inst 
       (.I(res_OBUF[7]),
        .O(res[7]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[7]_inst_i_1 
       (.I0(\res_OBUF[7]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[7]_inst_i_3_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[7]_inst_i_4_n_0 ),
        .O(res_OBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[7]_inst_i_10 
       (.I0(A_IBUF[31]),
        .I1(A_IBUF[15]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[23]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[7]),
        .O(\res_OBUF[7]_inst_i_10_n_0 ));
  CARRY4 \res_OBUF[7]_inst_i_2 
       (.CI(\res_OBUF[3]_inst_i_2_n_0 ),
        .CO({\res_OBUF[7]_inst_i_2_n_0 ,\res_OBUF[7]_inst_i_2_n_1 ,\res_OBUF[7]_inst_i_2_n_2 ,\res_OBUF[7]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O({\res_OBUF[7]_inst_i_2_n_4 ,\res_OBUF[7]_inst_i_2_n_5 ,\res_OBUF[7]_inst_i_2_n_6 ,\res_OBUF[7]_inst_i_2_n_7 }),
        .S({\res_OBUF[7]_inst_i_5_n_0 ,\res_OBUF[7]_inst_i_6_n_0 ,\res_OBUF[7]_inst_i_7_n_0 ,\res_OBUF[7]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[7]_inst_i_3 
       (.I0(\res_OBUF[8]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[7]_inst_i_9_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[7]),
        .I5(A_IBUF[7]),
        .O(\res_OBUF[7]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[7]_inst_i_4 
       (.I0(\res_OBUF[7]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[7]),
        .I4(B_IBUF[7]),
        .O(\res_OBUF[7]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[7]_inst_i_5 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[7]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[7]_inst_i_6 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[7]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[7]_inst_i_7 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[7]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \res_OBUF[7]_inst_i_8 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .I2(ALU_operation_IBUF[2]),
        .O(\res_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[7]_inst_i_9 
       (.I0(\res_OBUF[13]_inst_i_5_n_0 ),
        .I1(\res_OBUF[9]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[11]_inst_i_10_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[7]_inst_i_10_n_0 ),
        .O(\res_OBUF[7]_inst_i_9_n_0 ));
  OBUF \res_OBUF[8]_inst 
       (.I(res_OBUF[8]),
        .O(res[8]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[8]_inst_i_1 
       (.I0(\res_OBUF[11]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[8]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[8]_inst_i_3_n_0 ),
        .O(res_OBUF[8]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[8]_inst_i_2 
       (.I0(\res_OBUF[9]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[8]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[8]),
        .I5(A_IBUF[8]),
        .O(\res_OBUF[8]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[8]_inst_i_3 
       (.I0(\res_OBUF[11]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[8]),
        .I4(B_IBUF[8]),
        .O(\res_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[8]_inst_i_4 
       (.I0(\res_OBUF[14]_inst_i_5_n_0 ),
        .I1(\res_OBUF[10]_inst_i_5_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[12]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[8]_inst_i_5_n_0 ),
        .O(\res_OBUF[8]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[8]_inst_i_5 
       (.I0(A_IBUF[16]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[24]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[8]),
        .O(\res_OBUF[8]_inst_i_5_n_0 ));
  OBUF \res_OBUF[9]_inst 
       (.I(res_OBUF[9]),
        .O(res[9]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \res_OBUF[9]_inst_i_1 
       (.I0(\res_OBUF[11]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[9]_inst_i_2_n_0 ),
        .I4(ALU_operation_IBUF[2]),
        .I5(\res_OBUF[9]_inst_i_3_n_0 ),
        .O(res_OBUF[9]));
  LUT6 #(
    .INIT(64'hB800B800B800B8FF)) 
    \res_OBUF[9]_inst_i_2 
       (.I0(\res_OBUF[10]_inst_i_4_n_0 ),
        .I1(B_IBUF[0]),
        .I2(\res_OBUF[9]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[9]),
        .I5(A_IBUF[9]),
        .O(\res_OBUF[9]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3BF8F808)) 
    \res_OBUF[9]_inst_i_3 
       (.I0(\res_OBUF[11]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(ALU_operation_IBUF[0]),
        .I3(A_IBUF[9]),
        .I4(B_IBUF[9]),
        .O(\res_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \res_OBUF[9]_inst_i_4 
       (.I0(\res_OBUF[15]_inst_i_10_n_0 ),
        .I1(\res_OBUF[11]_inst_i_10_n_0 ),
        .I2(B_IBUF[1]),
        .I3(\res_OBUF[13]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(\res_OBUF[9]_inst_i_5_n_0 ),
        .O(\res_OBUF[9]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \res_OBUF[9]_inst_i_5 
       (.I0(A_IBUF[17]),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[25]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[9]),
        .O(\res_OBUF[9]_inst_i_5_n_0 ));
  OBUF zero_OBUF_inst
       (.I(zero_OBUF),
        .O(zero));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    zero_OBUF_inst_i_1
       (.I0(zero_OBUF_inst_i_2_n_0),
        .I1(zero_OBUF_inst_i_3_n_0),
        .I2(zero_OBUF_inst_i_4_n_0),
        .I3(zero_OBUF_inst_i_5_n_0),
        .I4(zero_OBUF_inst_i_6_n_0),
        .I5(zero_OBUF_inst_i_7_n_0),
        .O(zero_OBUF));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    zero_OBUF_inst_i_10
       (.I0(\res_OBUF[28]_inst_i_3_n_0 ),
        .I1(zero_OBUF_inst_i_16_n_0),
        .I2(\res_OBUF[29]_inst_i_3_n_0 ),
        .I3(ALU_operation_IBUF[2]),
        .I4(zero_OBUF_inst_i_17_n_0),
        .O(zero_OBUF_inst_i_10_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    zero_OBUF_inst_i_11
       (.I0(\res_OBUF[31]_inst_i_2_n_0 ),
        .I1(\res_OBUF[31]_inst_i_3_n_0 ),
        .I2(\res_OBUF[30]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[2]),
        .I4(zero_OBUF_inst_i_18_n_0),
        .O(zero_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'h30883088308830BB)) 
    zero_OBUF_inst_i_12
       (.I0(\res_OBUF[23]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(data5[20]),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[20]),
        .I5(A_IBUF[20]),
        .O(zero_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'h30883088308830BB)) 
    zero_OBUF_inst_i_13
       (.I0(\res_OBUF[23]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(data5[21]),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[21]),
        .I5(A_IBUF[21]),
        .O(zero_OBUF_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'h30883088308830BB)) 
    zero_OBUF_inst_i_14
       (.I0(\res_OBUF[23]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(data5[22]),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[22]),
        .I5(A_IBUF[22]),
        .O(zero_OBUF_inst_i_14_n_0));
  LUT6 #(
    .INIT(64'h30883088308830BB)) 
    zero_OBUF_inst_i_15
       (.I0(\res_OBUF[23]_inst_i_2_n_4 ),
        .I1(ALU_operation_IBUF[1]),
        .I2(data5[23]),
        .I3(ALU_operation_IBUF[0]),
        .I4(B_IBUF[23]),
        .I5(A_IBUF[23]),
        .O(zero_OBUF_inst_i_15_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    zero_OBUF_inst_i_16
       (.I0(\res_OBUF[30]_inst_i_2_n_7 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[28]_inst_i_2_n_0 ),
        .O(zero_OBUF_inst_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    zero_OBUF_inst_i_17
       (.I0(\res_OBUF[30]_inst_i_2_n_6 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[29]_inst_i_2_n_0 ),
        .O(zero_OBUF_inst_i_17_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    zero_OBUF_inst_i_18
       (.I0(\res_OBUF[30]_inst_i_2_n_5 ),
        .I1(ALU_operation_IBUF[0]),
        .I2(ALU_operation_IBUF[1]),
        .I3(\res_OBUF[30]_inst_i_3_n_0 ),
        .O(zero_OBUF_inst_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    zero_OBUF_inst_i_19
       (.I0(\res_OBUF[23]_inst_i_10_n_0 ),
        .I1(\res_OBUF[21]_inst_i_5_n_0 ),
        .I2(B_IBUF[0]),
        .I3(\res_OBUF[22]_inst_i_5_n_0 ),
        .I4(B_IBUF[1]),
        .I5(\res_OBUF[20]_inst_i_5_n_0 ),
        .O(data5[20]));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_OBUF_inst_i_2
       (.I0(res_OBUF[3]),
        .I1(res_OBUF[2]),
        .I2(res_OBUF[1]),
        .I3(res_OBUF[0]),
        .O(zero_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    zero_OBUF_inst_i_20
       (.I0(\res_OBUF[24]_inst_i_5_n_0 ),
        .I1(\res_OBUF[22]_inst_i_5_n_0 ),
        .I2(B_IBUF[0]),
        .I3(\res_OBUF[23]_inst_i_10_n_0 ),
        .I4(B_IBUF[1]),
        .I5(\res_OBUF[21]_inst_i_5_n_0 ),
        .O(data5[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    zero_OBUF_inst_i_21
       (.I0(\res_OBUF[25]_inst_i_5_n_0 ),
        .I1(\res_OBUF[23]_inst_i_10_n_0 ),
        .I2(B_IBUF[0]),
        .I3(\res_OBUF[24]_inst_i_5_n_0 ),
        .I4(B_IBUF[1]),
        .I5(\res_OBUF[22]_inst_i_5_n_0 ),
        .O(data5[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    zero_OBUF_inst_i_22
       (.I0(\res_OBUF[26]_inst_i_5_n_0 ),
        .I1(\res_OBUF[24]_inst_i_5_n_0 ),
        .I2(B_IBUF[0]),
        .I3(\res_OBUF[25]_inst_i_5_n_0 ),
        .I4(B_IBUF[1]),
        .I5(\res_OBUF[23]_inst_i_10_n_0 ),
        .O(data5[23]));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_OBUF_inst_i_3
       (.I0(res_OBUF[7]),
        .I1(res_OBUF[6]),
        .I2(res_OBUF[5]),
        .I3(res_OBUF[4]),
        .O(zero_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_OBUF_inst_i_4
       (.I0(res_OBUF[15]),
        .I1(res_OBUF[14]),
        .I2(res_OBUF[13]),
        .I3(res_OBUF[12]),
        .O(zero_OBUF_inst_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_OBUF_inst_i_5
       (.I0(res_OBUF[9]),
        .I1(res_OBUF[8]),
        .I2(res_OBUF[11]),
        .I3(res_OBUF[10]),
        .O(zero_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    zero_OBUF_inst_i_6
       (.I0(res_OBUF[16]),
        .I1(res_OBUF[17]),
        .I2(res_OBUF[18]),
        .I3(res_OBUF[19]),
        .I4(zero_OBUF_inst_i_8_n_0),
        .I5(zero_OBUF_inst_i_9_n_0),
        .O(zero_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    zero_OBUF_inst_i_7
       (.I0(zero_OBUF_inst_i_10_n_0),
        .I1(zero_OBUF_inst_i_11_n_0),
        .I2(res_OBUF[26]),
        .I3(res_OBUF[27]),
        .I4(res_OBUF[24]),
        .I5(res_OBUF[25]),
        .O(zero_OBUF_inst_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    zero_OBUF_inst_i_8
       (.I0(\res_OBUF[20]_inst_i_3_n_0 ),
        .I1(zero_OBUF_inst_i_12_n_0),
        .I2(\res_OBUF[21]_inst_i_3_n_0 ),
        .I3(ALU_operation_IBUF[2]),
        .I4(zero_OBUF_inst_i_13_n_0),
        .O(zero_OBUF_inst_i_8_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    zero_OBUF_inst_i_9
       (.I0(\res_OBUF[22]_inst_i_3_n_0 ),
        .I1(zero_OBUF_inst_i_14_n_0),
        .I2(\res_OBUF[23]_inst_i_4_n_0 ),
        .I3(ALU_operation_IBUF[2]),
        .I4(zero_OBUF_inst_i_15_n_0),
        .O(zero_OBUF_inst_i_9_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
