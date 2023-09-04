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

// IP VLNV: xilinx.com:hls:fpga_test_initialize:1.0
// IP Revision: 2113187442

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
fpga_test_initialize_0 your_instance_name (
  .p_fpga_test_B_AC_ap_vld(p_fpga_test_B_AC_ap_vld),                                    // output wire p_fpga_test_B_AC_ap_vld
  .p_fpga_test_B_StateSpace_o1_ce0(p_fpga_test_B_StateSpace_o1_ce0),                    // output wire p_fpga_test_B_StateSpace_o1_ce0
  .p_fpga_test_B_StateSpace_o1_we0(p_fpga_test_B_StateSpace_o1_we0),                    // output wire p_fpga_test_B_StateSpace_o1_we0
  .p_fpga_test_B_StateSpace_o1_ce1(p_fpga_test_B_StateSpace_o1_ce1),                    // output wire p_fpga_test_B_StateSpace_o1_ce1
  .p_fpga_test_B_StateSpace_o1_we1(p_fpga_test_B_StateSpace_o1_we1),                    // output wire p_fpga_test_B_StateSpace_o1_we1
  .p_fpga_test_B_StateSpace_o2_ap_vld(p_fpga_test_B_StateSpace_o2_ap_vld),              // output wire p_fpga_test_B_StateSpace_o2_ap_vld
  .p_fpga_test_B_DataTypeConversion2_ap_vld(p_fpga_test_B_DataTypeConversion2_ap_vld),  // output wire p_fpga_test_B_DataTypeConversion2_ap_vld
  .p_fpga_test_B_LookUpTable_ap_vld(p_fpga_test_B_LookUpTable_ap_vld),                  // output wire p_fpga_test_B_LookUpTable_ap_vld
  .p_fpga_test_B_IC_ap_vld(p_fpga_test_B_IC_ap_vld),                                    // output wire p_fpga_test_B_IC_ap_vld
  .p_fpga_test_B_Derivative_ap_vld(p_fpga_test_B_Derivative_ap_vld),                    // output wire p_fpga_test_B_Derivative_ap_vld
  .p_fpga_test_B_DataTypeConversion1_ap_vld(p_fpga_test_B_DataTypeConversion1_ap_vld),  // output wire p_fpga_test_B_DataTypeConversion1_ap_vld
  .p_fpga_test_DW_DelayTs_DSTATE_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_ap_vld),          // output wire p_fpga_test_DW_DelayTs_DSTATE_ap_vld
  .p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld),      // output wire p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld
  .p_fpga_test_DW_IC_FirstOutputTime_ap_vld(p_fpga_test_DW_IC_FirstOutputTime_ap_vld),  // output wire p_fpga_test_DW_IC_FirstOutputTime_ap_vld
  .p_fpga_test_DW_TimeStampA_ap_vld(p_fpga_test_DW_TimeStampA_ap_vld),                  // output wire p_fpga_test_DW_TimeStampA_ap_vld
  .p_fpga_test_DW_LastUAtTimeA_ap_vld(p_fpga_test_DW_LastUAtTimeA_ap_vld),              // output wire p_fpga_test_DW_LastUAtTimeA_ap_vld
  .p_fpga_test_DW_TimeStampB_ap_vld(p_fpga_test_DW_TimeStampB_ap_vld),                  // output wire p_fpga_test_DW_TimeStampB_ap_vld
  .p_fpga_test_DW_LastUAtTimeB_ap_vld(p_fpga_test_DW_LastUAtTimeB_ap_vld),              // output wire p_fpga_test_DW_LastUAtTimeB_ap_vld
  .p_fpga_test_DW_StateSpace_PWORK_ap_vld(p_fpga_test_DW_StateSpace_PWORK_ap_vld),      // output wire p_fpga_test_DW_StateSpace_PWORK_ap_vld
  .p_fpga_test_DW_StateSpace_IWORK_ce0(p_fpga_test_DW_StateSpace_IWORK_ce0),            // output wire p_fpga_test_DW_StateSpace_IWORK_ce0
  .p_fpga_test_DW_StateSpace_IWORK_we0(p_fpga_test_DW_StateSpace_IWORK_we0),            // output wire p_fpga_test_DW_StateSpace_IWORK_we0
  .p_fpga_test_DW_StateSpace_IWORK_ce1(p_fpga_test_DW_StateSpace_IWORK_ce1),            // output wire p_fpga_test_DW_StateSpace_IWORK_ce1
  .p_fpga_test_DW_StateSpace_IWORK_we1(p_fpga_test_DW_StateSpace_IWORK_we1),            // output wire p_fpga_test_DW_StateSpace_IWORK_we1
  .p_fpga_test_DW_u5_Mode_ap_vld(p_fpga_test_DW_u5_Mode_ap_vld),                        // output wire p_fpga_test_DW_u5_Mode_ap_vld
  .p_fpga_test_M_ap_vld(p_fpga_test_M_ap_vld),                                          // output wire p_fpga_test_M_ap_vld
  .ap_clk(ap_clk),                                                                      // input wire ap_clk
  .ap_rst(ap_rst),                                                                      // input wire ap_rst
  .ap_start(ap_start),                                                                  // input wire ap_start
  .ap_done(ap_done),                                                                    // output wire ap_done
  .ap_idle(ap_idle),                                                                    // output wire ap_idle
  .ap_ready(ap_ready),                                                                  // output wire ap_ready
  .p_fpga_test_B_AC(p_fpga_test_B_AC),                                                  // output wire [31 : 0] p_fpga_test_B_AC
  .p_fpga_test_B_StateSpace_o1_address0(p_fpga_test_B_StateSpace_o1_address0),          // output wire [0 : 0] p_fpga_test_B_StateSpace_o1_address0
  .p_fpga_test_B_StateSpace_o1_d0(p_fpga_test_B_StateSpace_o1_d0),                      // output wire [63 : 0] p_fpga_test_B_StateSpace_o1_d0
  .p_fpga_test_B_StateSpace_o1_address1(p_fpga_test_B_StateSpace_o1_address1),          // output wire [0 : 0] p_fpga_test_B_StateSpace_o1_address1
  .p_fpga_test_B_StateSpace_o1_d1(p_fpga_test_B_StateSpace_o1_d1),                      // output wire [63 : 0] p_fpga_test_B_StateSpace_o1_d1
  .p_fpga_test_B_StateSpace_o2(p_fpga_test_B_StateSpace_o2),                            // output wire [63 : 0] p_fpga_test_B_StateSpace_o2
  .p_fpga_test_B_DataTypeConversion2(p_fpga_test_B_DataTypeConversion2),                // output wire [63 : 0] p_fpga_test_B_DataTypeConversion2
  .p_fpga_test_B_LookUpTable(p_fpga_test_B_LookUpTable),                                // output wire [63 : 0] p_fpga_test_B_LookUpTable
  .p_fpga_test_B_IC(p_fpga_test_B_IC),                                                  // output wire [63 : 0] p_fpga_test_B_IC
  .p_fpga_test_B_Derivative(p_fpga_test_B_Derivative),                                  // output wire [63 : 0] p_fpga_test_B_Derivative
  .p_fpga_test_B_DataTypeConversion1(p_fpga_test_B_DataTypeConversion1),                // output wire [7 : 0] p_fpga_test_B_DataTypeConversion1
  .p_fpga_test_DW_DelayTs_DSTATE(p_fpga_test_DW_DelayTs_DSTATE),                        // output wire [63 : 0] p_fpga_test_DW_DelayTs_DSTATE
  .p_fpga_test_DW_DelayTs_DSTATE_f(p_fpga_test_DW_DelayTs_DSTATE_f),                    // output wire [63 : 0] p_fpga_test_DW_DelayTs_DSTATE_f
  .p_fpga_test_DW_IC_FirstOutputTime(p_fpga_test_DW_IC_FirstOutputTime),                // output wire [63 : 0] p_fpga_test_DW_IC_FirstOutputTime
  .p_fpga_test_DW_TimeStampA(p_fpga_test_DW_TimeStampA),                                // output wire [63 : 0] p_fpga_test_DW_TimeStampA
  .p_fpga_test_DW_LastUAtTimeA(p_fpga_test_DW_LastUAtTimeA),                            // output wire [63 : 0] p_fpga_test_DW_LastUAtTimeA
  .p_fpga_test_DW_TimeStampB(p_fpga_test_DW_TimeStampB),                                // output wire [63 : 0] p_fpga_test_DW_TimeStampB
  .p_fpga_test_DW_LastUAtTimeB(p_fpga_test_DW_LastUAtTimeB),                            // output wire [63 : 0] p_fpga_test_DW_LastUAtTimeB
  .p_fpga_test_DW_StateSpace_PWORK(p_fpga_test_DW_StateSpace_PWORK),                    // output wire [831 : 0] p_fpga_test_DW_StateSpace_PWORK
  .p_fpga_test_DW_StateSpace_IWORK_address0(p_fpga_test_DW_StateSpace_IWORK_address0),  // output wire [3 : 0] p_fpga_test_DW_StateSpace_IWORK_address0
  .p_fpga_test_DW_StateSpace_IWORK_d0(p_fpga_test_DW_StateSpace_IWORK_d0),              // output wire [31 : 0] p_fpga_test_DW_StateSpace_IWORK_d0
  .p_fpga_test_DW_StateSpace_IWORK_address1(p_fpga_test_DW_StateSpace_IWORK_address1),  // output wire [3 : 0] p_fpga_test_DW_StateSpace_IWORK_address1
  .p_fpga_test_DW_StateSpace_IWORK_d1(p_fpga_test_DW_StateSpace_IWORK_d1),              // output wire [31 : 0] p_fpga_test_DW_StateSpace_IWORK_d1
  .p_fpga_test_DW_u5_Mode(p_fpga_test_DW_u5_Mode),                                      // output wire [7 : 0] p_fpga_test_DW_u5_Mode
  .p_fpga_test_M(p_fpga_test_M)                                                        // output wire [519 : 0] p_fpga_test_M
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file fpga_test_initialize_0.v when simulating
// the core, fpga_test_initialize_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

