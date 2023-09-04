// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Aug 31 17:44:29 2023
// Host        : DESKTOP-TDOE7A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/nikgal/Vivado/fpga_in_the_loop/fpga_test_initialize_0/fpga_test_initialize_0_stub.v
// Design      : fpga_test_initialize_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fpga_test_initialize,Vivado 2023.1" *)
module fpga_test_initialize_0(p_fpga_test_B_AC_ap_vld, 
  p_fpga_test_B_StateSpace_o1_ce0, p_fpga_test_B_StateSpace_o1_we0, 
  p_fpga_test_B_StateSpace_o1_ce1, p_fpga_test_B_StateSpace_o1_we1, 
  p_fpga_test_B_StateSpace_o2_ap_vld, p_fpga_test_B_DataTypeConversion2_ap_vld, 
  p_fpga_test_B_LookUpTable_ap_vld, p_fpga_test_B_IC_ap_vld, 
  p_fpga_test_B_Derivative_ap_vld, p_fpga_test_B_DataTypeConversion1_ap_vld, 
  p_fpga_test_DW_DelayTs_DSTATE_ap_vld, p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld, 
  p_fpga_test_DW_IC_FirstOutputTime_ap_vld, p_fpga_test_DW_TimeStampA_ap_vld, 
  p_fpga_test_DW_LastUAtTimeA_ap_vld, p_fpga_test_DW_TimeStampB_ap_vld, 
  p_fpga_test_DW_LastUAtTimeB_ap_vld, p_fpga_test_DW_StateSpace_PWORK_ap_vld, 
  p_fpga_test_DW_StateSpace_IWORK_ce0, p_fpga_test_DW_StateSpace_IWORK_we0, 
  p_fpga_test_DW_StateSpace_IWORK_ce1, p_fpga_test_DW_StateSpace_IWORK_we1, 
  p_fpga_test_DW_u5_Mode_ap_vld, p_fpga_test_M_ap_vld, ap_clk, ap_rst, ap_start, ap_done, 
  ap_idle, ap_ready, p_fpga_test_B_AC, p_fpga_test_B_StateSpace_o1_address0, 
  p_fpga_test_B_StateSpace_o1_d0, p_fpga_test_B_StateSpace_o1_address1, 
  p_fpga_test_B_StateSpace_o1_d1, p_fpga_test_B_StateSpace_o2, 
  p_fpga_test_B_DataTypeConversion2, p_fpga_test_B_LookUpTable, p_fpga_test_B_IC, 
  p_fpga_test_B_Derivative, p_fpga_test_B_DataTypeConversion1, 
  p_fpga_test_DW_DelayTs_DSTATE, p_fpga_test_DW_DelayTs_DSTATE_f, 
  p_fpga_test_DW_IC_FirstOutputTime, p_fpga_test_DW_TimeStampA, 
  p_fpga_test_DW_LastUAtTimeA, p_fpga_test_DW_TimeStampB, p_fpga_test_DW_LastUAtTimeB, 
  p_fpga_test_DW_StateSpace_PWORK, p_fpga_test_DW_StateSpace_IWORK_address0, 
  p_fpga_test_DW_StateSpace_IWORK_d0, p_fpga_test_DW_StateSpace_IWORK_address1, 
  p_fpga_test_DW_StateSpace_IWORK_d1, p_fpga_test_DW_u5_Mode, p_fpga_test_M)
/* synthesis syn_black_box black_box_pad_pin="p_fpga_test_B_AC_ap_vld,p_fpga_test_B_StateSpace_o1_ce0,p_fpga_test_B_StateSpace_o1_we0,p_fpga_test_B_StateSpace_o1_ce1,p_fpga_test_B_StateSpace_o1_we1,p_fpga_test_B_StateSpace_o2_ap_vld,p_fpga_test_B_DataTypeConversion2_ap_vld,p_fpga_test_B_LookUpTable_ap_vld,p_fpga_test_B_IC_ap_vld,p_fpga_test_B_Derivative_ap_vld,p_fpga_test_B_DataTypeConversion1_ap_vld,p_fpga_test_DW_DelayTs_DSTATE_ap_vld,p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld,p_fpga_test_DW_IC_FirstOutputTime_ap_vld,p_fpga_test_DW_TimeStampA_ap_vld,p_fpga_test_DW_LastUAtTimeA_ap_vld,p_fpga_test_DW_TimeStampB_ap_vld,p_fpga_test_DW_LastUAtTimeB_ap_vld,p_fpga_test_DW_StateSpace_PWORK_ap_vld,p_fpga_test_DW_StateSpace_IWORK_ce0,p_fpga_test_DW_StateSpace_IWORK_we0,p_fpga_test_DW_StateSpace_IWORK_ce1,p_fpga_test_DW_StateSpace_IWORK_we1,p_fpga_test_DW_u5_Mode_ap_vld,p_fpga_test_M_ap_vld,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_fpga_test_B_AC[31:0],p_fpga_test_B_StateSpace_o1_address0[0:0],p_fpga_test_B_StateSpace_o1_d0[63:0],p_fpga_test_B_StateSpace_o1_address1[0:0],p_fpga_test_B_StateSpace_o1_d1[63:0],p_fpga_test_B_StateSpace_o2[63:0],p_fpga_test_B_DataTypeConversion2[63:0],p_fpga_test_B_LookUpTable[63:0],p_fpga_test_B_IC[63:0],p_fpga_test_B_Derivative[63:0],p_fpga_test_B_DataTypeConversion1[7:0],p_fpga_test_DW_DelayTs_DSTATE[63:0],p_fpga_test_DW_DelayTs_DSTATE_f[63:0],p_fpga_test_DW_IC_FirstOutputTime[63:0],p_fpga_test_DW_TimeStampA[63:0],p_fpga_test_DW_LastUAtTimeA[63:0],p_fpga_test_DW_TimeStampB[63:0],p_fpga_test_DW_LastUAtTimeB[63:0],p_fpga_test_DW_StateSpace_PWORK[831:0],p_fpga_test_DW_StateSpace_IWORK_address0[3:0],p_fpga_test_DW_StateSpace_IWORK_d0[31:0],p_fpga_test_DW_StateSpace_IWORK_address1[3:0],p_fpga_test_DW_StateSpace_IWORK_d1[31:0],p_fpga_test_DW_u5_Mode[7:0],p_fpga_test_M[519:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output p_fpga_test_B_AC_ap_vld;
  output p_fpga_test_B_StateSpace_o1_ce0;
  output p_fpga_test_B_StateSpace_o1_we0;
  output p_fpga_test_B_StateSpace_o1_ce1;
  output p_fpga_test_B_StateSpace_o1_we1;
  output p_fpga_test_B_StateSpace_o2_ap_vld;
  output p_fpga_test_B_DataTypeConversion2_ap_vld;
  output p_fpga_test_B_LookUpTable_ap_vld;
  output p_fpga_test_B_IC_ap_vld;
  output p_fpga_test_B_Derivative_ap_vld;
  output p_fpga_test_B_DataTypeConversion1_ap_vld;
  output p_fpga_test_DW_DelayTs_DSTATE_ap_vld;
  output p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld;
  output p_fpga_test_DW_IC_FirstOutputTime_ap_vld;
  output p_fpga_test_DW_TimeStampA_ap_vld;
  output p_fpga_test_DW_LastUAtTimeA_ap_vld;
  output p_fpga_test_DW_TimeStampB_ap_vld;
  output p_fpga_test_DW_LastUAtTimeB_ap_vld;
  output p_fpga_test_DW_StateSpace_PWORK_ap_vld;
  output p_fpga_test_DW_StateSpace_IWORK_ce0;
  output p_fpga_test_DW_StateSpace_IWORK_we0;
  output p_fpga_test_DW_StateSpace_IWORK_ce1;
  output p_fpga_test_DW_StateSpace_IWORK_we1;
  output p_fpga_test_DW_u5_Mode_ap_vld;
  output p_fpga_test_M_ap_vld;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]p_fpga_test_B_AC;
  output [0:0]p_fpga_test_B_StateSpace_o1_address0;
  output [63:0]p_fpga_test_B_StateSpace_o1_d0;
  output [0:0]p_fpga_test_B_StateSpace_o1_address1;
  output [63:0]p_fpga_test_B_StateSpace_o1_d1;
  output [63:0]p_fpga_test_B_StateSpace_o2;
  output [63:0]p_fpga_test_B_DataTypeConversion2;
  output [63:0]p_fpga_test_B_LookUpTable;
  output [63:0]p_fpga_test_B_IC;
  output [63:0]p_fpga_test_B_Derivative;
  output [7:0]p_fpga_test_B_DataTypeConversion1;
  output [63:0]p_fpga_test_DW_DelayTs_DSTATE;
  output [63:0]p_fpga_test_DW_DelayTs_DSTATE_f;
  output [63:0]p_fpga_test_DW_IC_FirstOutputTime;
  output [63:0]p_fpga_test_DW_TimeStampA;
  output [63:0]p_fpga_test_DW_LastUAtTimeA;
  output [63:0]p_fpga_test_DW_TimeStampB;
  output [63:0]p_fpga_test_DW_LastUAtTimeB;
  output [831:0]p_fpga_test_DW_StateSpace_PWORK;
  output [3:0]p_fpga_test_DW_StateSpace_IWORK_address0;
  output [31:0]p_fpga_test_DW_StateSpace_IWORK_d0;
  output [3:0]p_fpga_test_DW_StateSpace_IWORK_address1;
  output [31:0]p_fpga_test_DW_StateSpace_IWORK_d1;
  output [7:0]p_fpga_test_DW_u5_Mode;
  output [519:0]p_fpga_test_M;
endmodule
