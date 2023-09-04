// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:fpga_test_step:1.0
// IP Revision: 2113184611

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module fpga_test_step_0 (
  fpga_test_Y_ap_vld,
  fpga_test_B_StateSpace_o1_ce0,
  p_fpga_test_B_AC_ap_vld,
  p_fpga_test_B_StateSpace_o1_ce0,
  p_fpga_test_B_StateSpace_o1_we0,
  p_fpga_test_B_StateSpace_o1_ce1,
  p_fpga_test_B_StateSpace_o1_we1,
  p_fpga_test_B_StateSpace_o2_ap_vld,
  p_fpga_test_B_DataTypeConversion2_ap_vld,
  p_fpga_test_B_LookUpTable_ap_vld,
  p_fpga_test_B_IC_ap_vld,
  p_fpga_test_B_Derivative_ap_vld,
  p_fpga_test_B_DataTypeConversion1_ap_vld,
  fpga_test_DW_StateSpace_IWORK_ce0,
  fpga_test_DW_StateSpace_IWORK_ce1,
  p_fpga_test_DW_DelayTs_DSTATE_ap_vld,
  p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld,
  p_fpga_test_DW_IC_FirstOutputTime_ap_vld,
  p_fpga_test_DW_TimeStampA_ap_vld,
  p_fpga_test_DW_LastUAtTimeA_ap_vld,
  p_fpga_test_DW_TimeStampB_ap_vld,
  p_fpga_test_DW_LastUAtTimeB_ap_vld,
  p_fpga_test_DW_StateSpace_PWORK_ap_vld,
  p_fpga_test_DW_StateSpace_IWORK_ce0,
  p_fpga_test_DW_StateSpace_IWORK_we0,
  p_fpga_test_DW_StateSpace_IWORK_ce1,
  p_fpga_test_DW_StateSpace_IWORK_we1,
  p_fpga_test_DW_u5_Mode_ap_vld,
  fpga_test_M_o_ap_vld,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  fpga_test_U,
  fpga_test_Y,
  fpga_test_B_AC,
  fpga_test_B_StateSpace_o1_address0,
  fpga_test_B_StateSpace_o1_q0,
  fpga_test_B_StateSpace_o2,
  fpga_test_B_DataTypeConversion2,
  fpga_test_B_LookUpTable,
  fpga_test_B_IC,
  fpga_test_B_Derivative,
  fpga_test_B_DataTypeConversion1,
  p_fpga_test_B_AC,
  p_fpga_test_B_StateSpace_o1_address0,
  p_fpga_test_B_StateSpace_o1_d0,
  p_fpga_test_B_StateSpace_o1_address1,
  p_fpga_test_B_StateSpace_o1_d1,
  p_fpga_test_B_StateSpace_o2,
  p_fpga_test_B_DataTypeConversion2,
  p_fpga_test_B_LookUpTable,
  p_fpga_test_B_IC,
  p_fpga_test_B_Derivative,
  p_fpga_test_B_DataTypeConversion1,
  fpga_test_DW_DelayTs_DSTATE,
  fpga_test_DW_DelayTs_DSTATE_f,
  fpga_test_DW_IC_FirstOutputTime,
  fpga_test_DW_TimeStampA,
  fpga_test_DW_LastUAtTimeA,
  fpga_test_DW_TimeStampB,
  fpga_test_DW_LastUAtTimeB,
  fpga_test_DW_StateSpace_PWORK,
  fpga_test_DW_StateSpace_IWORK_address0,
  fpga_test_DW_StateSpace_IWORK_q0,
  fpga_test_DW_StateSpace_IWORK_address1,
  fpga_test_DW_StateSpace_IWORK_q1,
  fpga_test_DW_u5_Mode,
  p_fpga_test_DW_DelayTs_DSTATE,
  p_fpga_test_DW_DelayTs_DSTATE_f,
  p_fpga_test_DW_IC_FirstOutputTime,
  p_fpga_test_DW_TimeStampA,
  p_fpga_test_DW_LastUAtTimeA,
  p_fpga_test_DW_TimeStampB,
  p_fpga_test_DW_LastUAtTimeB,
  p_fpga_test_DW_StateSpace_PWORK,
  p_fpga_test_DW_StateSpace_IWORK_address0,
  p_fpga_test_DW_StateSpace_IWORK_d0,
  p_fpga_test_DW_StateSpace_IWORK_address1,
  p_fpga_test_DW_StateSpace_IWORK_d1,
  p_fpga_test_DW_u5_Mode,
  fpga_test_M_i,
  fpga_test_M_o
);

output wire fpga_test_Y_ap_vld;
output wire fpga_test_B_StateSpace_o1_ce0;
output wire p_fpga_test_B_AC_ap_vld;
output wire p_fpga_test_B_StateSpace_o1_ce0;
output wire p_fpga_test_B_StateSpace_o1_we0;
output wire p_fpga_test_B_StateSpace_o1_ce1;
output wire p_fpga_test_B_StateSpace_o1_we1;
output wire p_fpga_test_B_StateSpace_o2_ap_vld;
output wire p_fpga_test_B_DataTypeConversion2_ap_vld;
output wire p_fpga_test_B_LookUpTable_ap_vld;
output wire p_fpga_test_B_IC_ap_vld;
output wire p_fpga_test_B_Derivative_ap_vld;
output wire p_fpga_test_B_DataTypeConversion1_ap_vld;
output wire fpga_test_DW_StateSpace_IWORK_ce0;
output wire fpga_test_DW_StateSpace_IWORK_ce1;
output wire p_fpga_test_DW_DelayTs_DSTATE_ap_vld;
output wire p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld;
output wire p_fpga_test_DW_IC_FirstOutputTime_ap_vld;
output wire p_fpga_test_DW_TimeStampA_ap_vld;
output wire p_fpga_test_DW_LastUAtTimeA_ap_vld;
output wire p_fpga_test_DW_TimeStampB_ap_vld;
output wire p_fpga_test_DW_LastUAtTimeB_ap_vld;
output wire p_fpga_test_DW_StateSpace_PWORK_ap_vld;
output wire p_fpga_test_DW_StateSpace_IWORK_ce0;
output wire p_fpga_test_DW_StateSpace_IWORK_we0;
output wire p_fpga_test_DW_StateSpace_IWORK_ce1;
output wire p_fpga_test_DW_StateSpace_IWORK_we1;
output wire p_fpga_test_DW_u5_Mode_ap_vld;
output wire fpga_test_M_o_ap_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_U, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_U DATA" *)
input wire [7 : 0] fpga_test_U;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_Y, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_Y DATA" *)
output wire [31 : 0] fpga_test_Y;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_AC, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_AC DATA" *)
input wire [31 : 0] fpga_test_B_AC;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_StateSpace_o1_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_StateSpace_o1_address0 DATA" *)
output wire [0 : 0] fpga_test_B_StateSpace_o1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_StateSpace_o1_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_StateSpace_o1_q0 DATA" *)
input wire [63 : 0] fpga_test_B_StateSpace_o1_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_StateSpace_o2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_StateSpace_o2 DATA" *)
input wire [63 : 0] fpga_test_B_StateSpace_o2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_DataTypeConversion2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_DataTypeConversion2 DATA" *)
input wire [63 : 0] fpga_test_B_DataTypeConversion2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_LookUpTable, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_LookUpTable DATA" *)
input wire [63 : 0] fpga_test_B_LookUpTable;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_IC, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_IC DATA" *)
input wire [63 : 0] fpga_test_B_IC;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_Derivative, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_Derivative DATA" *)
input wire [63 : 0] fpga_test_B_Derivative;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_B_DataTypeConversion1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_B_DataTypeConversion1 DATA" *)
input wire [7 : 0] fpga_test_B_DataTypeConversion1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_AC, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_AC DATA" *)
output wire [31 : 0] p_fpga_test_B_AC;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_StateSpace_o1_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_StateSpace_o1_address0 DATA" *)
output wire [0 : 0] p_fpga_test_B_StateSpace_o1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_StateSpace_o1_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_StateSpace_o1_d0 DATA" *)
output wire [63 : 0] p_fpga_test_B_StateSpace_o1_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_StateSpace_o1_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_StateSpace_o1_address1 DATA" *)
output wire [0 : 0] p_fpga_test_B_StateSpace_o1_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_StateSpace_o1_d1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_StateSpace_o1_d1 DATA" *)
output wire [63 : 0] p_fpga_test_B_StateSpace_o1_d1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_StateSpace_o2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_StateSpace_o2 DATA" *)
output wire [63 : 0] p_fpga_test_B_StateSpace_o2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_DataTypeConversion2, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_DataTypeConversion2 DATA" *)
output wire [63 : 0] p_fpga_test_B_DataTypeConversion2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_LookUpTable, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_LookUpTable DATA" *)
output wire [63 : 0] p_fpga_test_B_LookUpTable;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_IC, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_IC DATA" *)
output wire [63 : 0] p_fpga_test_B_IC;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_Derivative, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_Derivative DATA" *)
output wire [63 : 0] p_fpga_test_B_Derivative;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_B_DataTypeConversion1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_B_DataTypeConversion1 DATA" *)
output wire [7 : 0] p_fpga_test_B_DataTypeConversion1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_DelayTs_DSTATE, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_DelayTs_DSTATE DATA" *)
input wire [63 : 0] fpga_test_DW_DelayTs_DSTATE;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_DelayTs_DSTATE_f, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_DelayTs_DSTATE_f DATA" *)
input wire [63 : 0] fpga_test_DW_DelayTs_DSTATE_f;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_IC_FirstOutputTime, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_IC_FirstOutputTime DATA" *)
input wire [63 : 0] fpga_test_DW_IC_FirstOutputTime;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_TimeStampA, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_TimeStampA DATA" *)
input wire [63 : 0] fpga_test_DW_TimeStampA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_LastUAtTimeA, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_LastUAtTimeA DATA" *)
input wire [63 : 0] fpga_test_DW_LastUAtTimeA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_TimeStampB, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_TimeStampB DATA" *)
input wire [63 : 0] fpga_test_DW_TimeStampB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_LastUAtTimeB, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_LastUAtTimeB DATA" *)
input wire [63 : 0] fpga_test_DW_LastUAtTimeB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_StateSpace_PWORK, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_StateSpace_PWORK DATA" *)
input wire [831 : 0] fpga_test_DW_StateSpace_PWORK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_StateSpace_IWORK_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_StateSpace_IWORK_address0 DATA" *)
output wire [3 : 0] fpga_test_DW_StateSpace_IWORK_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_StateSpace_IWORK_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_StateSpace_IWORK_q0 DATA" *)
input wire [31 : 0] fpga_test_DW_StateSpace_IWORK_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_StateSpace_IWORK_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_StateSpace_IWORK_address1 DATA" *)
output wire [3 : 0] fpga_test_DW_StateSpace_IWORK_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_StateSpace_IWORK_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_StateSpace_IWORK_q1 DATA" *)
input wire [31 : 0] fpga_test_DW_StateSpace_IWORK_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_DW_u5_Mode, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_DW_u5_Mode DATA" *)
input wire [7 : 0] fpga_test_DW_u5_Mode;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_DelayTs_DSTATE, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_DelayTs_DSTATE DATA" *)
output wire [63 : 0] p_fpga_test_DW_DelayTs_DSTATE;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_DelayTs_DSTATE_f, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_DelayTs_DSTATE_f DATA" *)
output wire [63 : 0] p_fpga_test_DW_DelayTs_DSTATE_f;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_IC_FirstOutputTime, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_IC_FirstOutputTime DATA" *)
output wire [63 : 0] p_fpga_test_DW_IC_FirstOutputTime;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_TimeStampA, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_TimeStampA DATA" *)
output wire [63 : 0] p_fpga_test_DW_TimeStampA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_LastUAtTimeA, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_LastUAtTimeA DATA" *)
output wire [63 : 0] p_fpga_test_DW_LastUAtTimeA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_TimeStampB, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_TimeStampB DATA" *)
output wire [63 : 0] p_fpga_test_DW_TimeStampB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_LastUAtTimeB, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_LastUAtTimeB DATA" *)
output wire [63 : 0] p_fpga_test_DW_LastUAtTimeB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_StateSpace_PWORK, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_StateSpace_PWORK DATA" *)
output wire [831 : 0] p_fpga_test_DW_StateSpace_PWORK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_StateSpace_IWORK_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_StateSpace_IWORK_address0 DATA" *)
output wire [3 : 0] p_fpga_test_DW_StateSpace_IWORK_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_StateSpace_IWORK_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_StateSpace_IWORK_d0 DATA" *)
output wire [31 : 0] p_fpga_test_DW_StateSpace_IWORK_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_StateSpace_IWORK_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_StateSpace_IWORK_address1 DATA" *)
output wire [3 : 0] p_fpga_test_DW_StateSpace_IWORK_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_StateSpace_IWORK_d1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_StateSpace_IWORK_d1 DATA" *)
output wire [31 : 0] p_fpga_test_DW_StateSpace_IWORK_d1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_fpga_test_DW_u5_Mode, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_fpga_test_DW_u5_Mode DATA" *)
output wire [7 : 0] p_fpga_test_DW_u5_Mode;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_M_i, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_M_i DATA" *)
input wire [519 : 0] fpga_test_M_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpga_test_M_o, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 fpga_test_M_o DATA" *)
output wire [519 : 0] fpga_test_M_o;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  fpga_test_step inst (
    .fpga_test_Y_ap_vld(fpga_test_Y_ap_vld),
    .fpga_test_B_StateSpace_o1_ce0(fpga_test_B_StateSpace_o1_ce0),
    .p_fpga_test_B_AC_ap_vld(p_fpga_test_B_AC_ap_vld),
    .p_fpga_test_B_StateSpace_o1_ce0(p_fpga_test_B_StateSpace_o1_ce0),
    .p_fpga_test_B_StateSpace_o1_we0(p_fpga_test_B_StateSpace_o1_we0),
    .p_fpga_test_B_StateSpace_o1_ce1(p_fpga_test_B_StateSpace_o1_ce1),
    .p_fpga_test_B_StateSpace_o1_we1(p_fpga_test_B_StateSpace_o1_we1),
    .p_fpga_test_B_StateSpace_o2_ap_vld(p_fpga_test_B_StateSpace_o2_ap_vld),
    .p_fpga_test_B_DataTypeConversion2_ap_vld(p_fpga_test_B_DataTypeConversion2_ap_vld),
    .p_fpga_test_B_LookUpTable_ap_vld(p_fpga_test_B_LookUpTable_ap_vld),
    .p_fpga_test_B_IC_ap_vld(p_fpga_test_B_IC_ap_vld),
    .p_fpga_test_B_Derivative_ap_vld(p_fpga_test_B_Derivative_ap_vld),
    .p_fpga_test_B_DataTypeConversion1_ap_vld(p_fpga_test_B_DataTypeConversion1_ap_vld),
    .fpga_test_DW_StateSpace_IWORK_ce0(fpga_test_DW_StateSpace_IWORK_ce0),
    .fpga_test_DW_StateSpace_IWORK_ce1(fpga_test_DW_StateSpace_IWORK_ce1),
    .p_fpga_test_DW_DelayTs_DSTATE_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_ap_vld),
    .p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld),
    .p_fpga_test_DW_IC_FirstOutputTime_ap_vld(p_fpga_test_DW_IC_FirstOutputTime_ap_vld),
    .p_fpga_test_DW_TimeStampA_ap_vld(p_fpga_test_DW_TimeStampA_ap_vld),
    .p_fpga_test_DW_LastUAtTimeA_ap_vld(p_fpga_test_DW_LastUAtTimeA_ap_vld),
    .p_fpga_test_DW_TimeStampB_ap_vld(p_fpga_test_DW_TimeStampB_ap_vld),
    .p_fpga_test_DW_LastUAtTimeB_ap_vld(p_fpga_test_DW_LastUAtTimeB_ap_vld),
    .p_fpga_test_DW_StateSpace_PWORK_ap_vld(p_fpga_test_DW_StateSpace_PWORK_ap_vld),
    .p_fpga_test_DW_StateSpace_IWORK_ce0(p_fpga_test_DW_StateSpace_IWORK_ce0),
    .p_fpga_test_DW_StateSpace_IWORK_we0(p_fpga_test_DW_StateSpace_IWORK_we0),
    .p_fpga_test_DW_StateSpace_IWORK_ce1(p_fpga_test_DW_StateSpace_IWORK_ce1),
    .p_fpga_test_DW_StateSpace_IWORK_we1(p_fpga_test_DW_StateSpace_IWORK_we1),
    .p_fpga_test_DW_u5_Mode_ap_vld(p_fpga_test_DW_u5_Mode_ap_vld),
    .fpga_test_M_o_ap_vld(fpga_test_M_o_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .fpga_test_U(fpga_test_U),
    .fpga_test_Y(fpga_test_Y),
    .fpga_test_B_AC(fpga_test_B_AC),
    .fpga_test_B_StateSpace_o1_address0(fpga_test_B_StateSpace_o1_address0),
    .fpga_test_B_StateSpace_o1_q0(fpga_test_B_StateSpace_o1_q0),
    .fpga_test_B_StateSpace_o2(fpga_test_B_StateSpace_o2),
    .fpga_test_B_DataTypeConversion2(fpga_test_B_DataTypeConversion2),
    .fpga_test_B_LookUpTable(fpga_test_B_LookUpTable),
    .fpga_test_B_IC(fpga_test_B_IC),
    .fpga_test_B_Derivative(fpga_test_B_Derivative),
    .fpga_test_B_DataTypeConversion1(fpga_test_B_DataTypeConversion1),
    .p_fpga_test_B_AC(p_fpga_test_B_AC),
    .p_fpga_test_B_StateSpace_o1_address0(p_fpga_test_B_StateSpace_o1_address0),
    .p_fpga_test_B_StateSpace_o1_d0(p_fpga_test_B_StateSpace_o1_d0),
    .p_fpga_test_B_StateSpace_o1_address1(p_fpga_test_B_StateSpace_o1_address1),
    .p_fpga_test_B_StateSpace_o1_d1(p_fpga_test_B_StateSpace_o1_d1),
    .p_fpga_test_B_StateSpace_o2(p_fpga_test_B_StateSpace_o2),
    .p_fpga_test_B_DataTypeConversion2(p_fpga_test_B_DataTypeConversion2),
    .p_fpga_test_B_LookUpTable(p_fpga_test_B_LookUpTable),
    .p_fpga_test_B_IC(p_fpga_test_B_IC),
    .p_fpga_test_B_Derivative(p_fpga_test_B_Derivative),
    .p_fpga_test_B_DataTypeConversion1(p_fpga_test_B_DataTypeConversion1),
    .fpga_test_DW_DelayTs_DSTATE(fpga_test_DW_DelayTs_DSTATE),
    .fpga_test_DW_DelayTs_DSTATE_f(fpga_test_DW_DelayTs_DSTATE_f),
    .fpga_test_DW_IC_FirstOutputTime(fpga_test_DW_IC_FirstOutputTime),
    .fpga_test_DW_TimeStampA(fpga_test_DW_TimeStampA),
    .fpga_test_DW_LastUAtTimeA(fpga_test_DW_LastUAtTimeA),
    .fpga_test_DW_TimeStampB(fpga_test_DW_TimeStampB),
    .fpga_test_DW_LastUAtTimeB(fpga_test_DW_LastUAtTimeB),
    .fpga_test_DW_StateSpace_PWORK(fpga_test_DW_StateSpace_PWORK),
    .fpga_test_DW_StateSpace_IWORK_address0(fpga_test_DW_StateSpace_IWORK_address0),
    .fpga_test_DW_StateSpace_IWORK_q0(fpga_test_DW_StateSpace_IWORK_q0),
    .fpga_test_DW_StateSpace_IWORK_address1(fpga_test_DW_StateSpace_IWORK_address1),
    .fpga_test_DW_StateSpace_IWORK_q1(fpga_test_DW_StateSpace_IWORK_q1),
    .fpga_test_DW_u5_Mode(fpga_test_DW_u5_Mode),
    .p_fpga_test_DW_DelayTs_DSTATE(p_fpga_test_DW_DelayTs_DSTATE),
    .p_fpga_test_DW_DelayTs_DSTATE_f(p_fpga_test_DW_DelayTs_DSTATE_f),
    .p_fpga_test_DW_IC_FirstOutputTime(p_fpga_test_DW_IC_FirstOutputTime),
    .p_fpga_test_DW_TimeStampA(p_fpga_test_DW_TimeStampA),
    .p_fpga_test_DW_LastUAtTimeA(p_fpga_test_DW_LastUAtTimeA),
    .p_fpga_test_DW_TimeStampB(p_fpga_test_DW_TimeStampB),
    .p_fpga_test_DW_LastUAtTimeB(p_fpga_test_DW_LastUAtTimeB),
    .p_fpga_test_DW_StateSpace_PWORK(p_fpga_test_DW_StateSpace_PWORK),
    .p_fpga_test_DW_StateSpace_IWORK_address0(p_fpga_test_DW_StateSpace_IWORK_address0),
    .p_fpga_test_DW_StateSpace_IWORK_d0(p_fpga_test_DW_StateSpace_IWORK_d0),
    .p_fpga_test_DW_StateSpace_IWORK_address1(p_fpga_test_DW_StateSpace_IWORK_address1),
    .p_fpga_test_DW_StateSpace_IWORK_d1(p_fpga_test_DW_StateSpace_IWORK_d1),
    .p_fpga_test_DW_u5_Mode(p_fpga_test_DW_u5_Mode),
    .fpga_test_M_i(fpga_test_M_i),
    .fpga_test_M_o(fpga_test_M_o)
  );
endmodule
