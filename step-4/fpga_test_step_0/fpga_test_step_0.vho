-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.
-- IP VLNV: xilinx.com:hls:fpga_test_step:1.0
-- IP Revision: 2113184611

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT fpga_test_step_0
  PORT (
    fpga_test_Y_ap_vld : OUT STD_LOGIC;
    fpga_test_B_StateSpace_o1_ce0 : OUT STD_LOGIC;
    p_fpga_test_B_AC_ap_vld : OUT STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_ce0 : OUT STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_we0 : OUT STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_ce1 : OUT STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_we1 : OUT STD_LOGIC;
    p_fpga_test_B_StateSpace_o2_ap_vld : OUT STD_LOGIC;
    p_fpga_test_B_DataTypeConversion2_ap_vld : OUT STD_LOGIC;
    p_fpga_test_B_LookUpTable_ap_vld : OUT STD_LOGIC;
    p_fpga_test_B_IC_ap_vld : OUT STD_LOGIC;
    p_fpga_test_B_Derivative_ap_vld : OUT STD_LOGIC;
    p_fpga_test_B_DataTypeConversion1_ap_vld : OUT STD_LOGIC;
    fpga_test_DW_StateSpace_IWORK_ce0 : OUT STD_LOGIC;
    fpga_test_DW_StateSpace_IWORK_ce1 : OUT STD_LOGIC;
    p_fpga_test_DW_DelayTs_DSTATE_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_IC_FirstOutputTime_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_TimeStampA_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_LastUAtTimeA_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_TimeStampB_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_LastUAtTimeB_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_StateSpace_PWORK_ap_vld : OUT STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_ce0 : OUT STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_we0 : OUT STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_ce1 : OUT STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_we1 : OUT STD_LOGIC;
    p_fpga_test_DW_u5_Mode_ap_vld : OUT STD_LOGIC;
    fpga_test_M_o_ap_vld : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fpga_test_U : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpga_test_Y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fpga_test_B_AC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    fpga_test_B_StateSpace_o1_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    fpga_test_B_StateSpace_o1_q0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_B_StateSpace_o2 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_B_DataTypeConversion2 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_B_LookUpTable : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_B_IC : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_B_Derivative : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_B_DataTypeConversion1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    p_fpga_test_B_AC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    p_fpga_test_B_StateSpace_o1_address0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_fpga_test_B_StateSpace_o1_d0 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_B_StateSpace_o1_address1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_fpga_test_B_StateSpace_o1_d1 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_B_StateSpace_o2 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_B_DataTypeConversion2 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_B_LookUpTable : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_B_IC : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_B_Derivative : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_B_DataTypeConversion1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpga_test_DW_DelayTs_DSTATE : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_DW_DelayTs_DSTATE_f : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_DW_IC_FirstOutputTime : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_DW_TimeStampA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_DW_LastUAtTimeA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_DW_TimeStampB : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_DW_LastUAtTimeB : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpga_test_DW_StateSpace_PWORK : IN STD_LOGIC_VECTOR(831 DOWNTO 0);
    fpga_test_DW_StateSpace_IWORK_address0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpga_test_DW_StateSpace_IWORK_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    fpga_test_DW_StateSpace_IWORK_address1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpga_test_DW_StateSpace_IWORK_q1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    fpga_test_DW_u5_Mode : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    p_fpga_test_DW_DelayTs_DSTATE : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_DW_DelayTs_DSTATE_f : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_DW_IC_FirstOutputTime : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_DW_TimeStampA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_DW_LastUAtTimeA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_DW_TimeStampB : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_DW_LastUAtTimeB : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    p_fpga_test_DW_StateSpace_PWORK : OUT STD_LOGIC_VECTOR(831 DOWNTO 0);
    p_fpga_test_DW_StateSpace_IWORK_address0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    p_fpga_test_DW_StateSpace_IWORK_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    p_fpga_test_DW_StateSpace_IWORK_address1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    p_fpga_test_DW_StateSpace_IWORK_d1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    p_fpga_test_DW_u5_Mode : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpga_test_M_i : IN STD_LOGIC_VECTOR(519 DOWNTO 0);
    fpga_test_M_o : OUT STD_LOGIC_VECTOR(519 DOWNTO 0) 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : fpga_test_step_0
  PORT MAP (
    fpga_test_Y_ap_vld => fpga_test_Y_ap_vld,
    fpga_test_B_StateSpace_o1_ce0 => fpga_test_B_StateSpace_o1_ce0,
    p_fpga_test_B_AC_ap_vld => p_fpga_test_B_AC_ap_vld,
    p_fpga_test_B_StateSpace_o1_ce0 => p_fpga_test_B_StateSpace_o1_ce0,
    p_fpga_test_B_StateSpace_o1_we0 => p_fpga_test_B_StateSpace_o1_we0,
    p_fpga_test_B_StateSpace_o1_ce1 => p_fpga_test_B_StateSpace_o1_ce1,
    p_fpga_test_B_StateSpace_o1_we1 => p_fpga_test_B_StateSpace_o1_we1,
    p_fpga_test_B_StateSpace_o2_ap_vld => p_fpga_test_B_StateSpace_o2_ap_vld,
    p_fpga_test_B_DataTypeConversion2_ap_vld => p_fpga_test_B_DataTypeConversion2_ap_vld,
    p_fpga_test_B_LookUpTable_ap_vld => p_fpga_test_B_LookUpTable_ap_vld,
    p_fpga_test_B_IC_ap_vld => p_fpga_test_B_IC_ap_vld,
    p_fpga_test_B_Derivative_ap_vld => p_fpga_test_B_Derivative_ap_vld,
    p_fpga_test_B_DataTypeConversion1_ap_vld => p_fpga_test_B_DataTypeConversion1_ap_vld,
    fpga_test_DW_StateSpace_IWORK_ce0 => fpga_test_DW_StateSpace_IWORK_ce0,
    fpga_test_DW_StateSpace_IWORK_ce1 => fpga_test_DW_StateSpace_IWORK_ce1,
    p_fpga_test_DW_DelayTs_DSTATE_ap_vld => p_fpga_test_DW_DelayTs_DSTATE_ap_vld,
    p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld => p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld,
    p_fpga_test_DW_IC_FirstOutputTime_ap_vld => p_fpga_test_DW_IC_FirstOutputTime_ap_vld,
    p_fpga_test_DW_TimeStampA_ap_vld => p_fpga_test_DW_TimeStampA_ap_vld,
    p_fpga_test_DW_LastUAtTimeA_ap_vld => p_fpga_test_DW_LastUAtTimeA_ap_vld,
    p_fpga_test_DW_TimeStampB_ap_vld => p_fpga_test_DW_TimeStampB_ap_vld,
    p_fpga_test_DW_LastUAtTimeB_ap_vld => p_fpga_test_DW_LastUAtTimeB_ap_vld,
    p_fpga_test_DW_StateSpace_PWORK_ap_vld => p_fpga_test_DW_StateSpace_PWORK_ap_vld,
    p_fpga_test_DW_StateSpace_IWORK_ce0 => p_fpga_test_DW_StateSpace_IWORK_ce0,
    p_fpga_test_DW_StateSpace_IWORK_we0 => p_fpga_test_DW_StateSpace_IWORK_we0,
    p_fpga_test_DW_StateSpace_IWORK_ce1 => p_fpga_test_DW_StateSpace_IWORK_ce1,
    p_fpga_test_DW_StateSpace_IWORK_we1 => p_fpga_test_DW_StateSpace_IWORK_we1,
    p_fpga_test_DW_u5_Mode_ap_vld => p_fpga_test_DW_u5_Mode_ap_vld,
    fpga_test_M_o_ap_vld => fpga_test_M_o_ap_vld,
    ap_clk => ap_clk,
    ap_rst => ap_rst,
    ap_start => ap_start,
    ap_done => ap_done,
    ap_idle => ap_idle,
    ap_ready => ap_ready,
    fpga_test_U => fpga_test_U,
    fpga_test_Y => fpga_test_Y,
    fpga_test_B_AC => fpga_test_B_AC,
    fpga_test_B_StateSpace_o1_address0 => fpga_test_B_StateSpace_o1_address0,
    fpga_test_B_StateSpace_o1_q0 => fpga_test_B_StateSpace_o1_q0,
    fpga_test_B_StateSpace_o2 => fpga_test_B_StateSpace_o2,
    fpga_test_B_DataTypeConversion2 => fpga_test_B_DataTypeConversion2,
    fpga_test_B_LookUpTable => fpga_test_B_LookUpTable,
    fpga_test_B_IC => fpga_test_B_IC,
    fpga_test_B_Derivative => fpga_test_B_Derivative,
    fpga_test_B_DataTypeConversion1 => fpga_test_B_DataTypeConversion1,
    p_fpga_test_B_AC => p_fpga_test_B_AC,
    p_fpga_test_B_StateSpace_o1_address0 => p_fpga_test_B_StateSpace_o1_address0,
    p_fpga_test_B_StateSpace_o1_d0 => p_fpga_test_B_StateSpace_o1_d0,
    p_fpga_test_B_StateSpace_o1_address1 => p_fpga_test_B_StateSpace_o1_address1,
    p_fpga_test_B_StateSpace_o1_d1 => p_fpga_test_B_StateSpace_o1_d1,
    p_fpga_test_B_StateSpace_o2 => p_fpga_test_B_StateSpace_o2,
    p_fpga_test_B_DataTypeConversion2 => p_fpga_test_B_DataTypeConversion2,
    p_fpga_test_B_LookUpTable => p_fpga_test_B_LookUpTable,
    p_fpga_test_B_IC => p_fpga_test_B_IC,
    p_fpga_test_B_Derivative => p_fpga_test_B_Derivative,
    p_fpga_test_B_DataTypeConversion1 => p_fpga_test_B_DataTypeConversion1,
    fpga_test_DW_DelayTs_DSTATE => fpga_test_DW_DelayTs_DSTATE,
    fpga_test_DW_DelayTs_DSTATE_f => fpga_test_DW_DelayTs_DSTATE_f,
    fpga_test_DW_IC_FirstOutputTime => fpga_test_DW_IC_FirstOutputTime,
    fpga_test_DW_TimeStampA => fpga_test_DW_TimeStampA,
    fpga_test_DW_LastUAtTimeA => fpga_test_DW_LastUAtTimeA,
    fpga_test_DW_TimeStampB => fpga_test_DW_TimeStampB,
    fpga_test_DW_LastUAtTimeB => fpga_test_DW_LastUAtTimeB,
    fpga_test_DW_StateSpace_PWORK => fpga_test_DW_StateSpace_PWORK,
    fpga_test_DW_StateSpace_IWORK_address0 => fpga_test_DW_StateSpace_IWORK_address0,
    fpga_test_DW_StateSpace_IWORK_q0 => fpga_test_DW_StateSpace_IWORK_q0,
    fpga_test_DW_StateSpace_IWORK_address1 => fpga_test_DW_StateSpace_IWORK_address1,
    fpga_test_DW_StateSpace_IWORK_q1 => fpga_test_DW_StateSpace_IWORK_q1,
    fpga_test_DW_u5_Mode => fpga_test_DW_u5_Mode,
    p_fpga_test_DW_DelayTs_DSTATE => p_fpga_test_DW_DelayTs_DSTATE,
    p_fpga_test_DW_DelayTs_DSTATE_f => p_fpga_test_DW_DelayTs_DSTATE_f,
    p_fpga_test_DW_IC_FirstOutputTime => p_fpga_test_DW_IC_FirstOutputTime,
    p_fpga_test_DW_TimeStampA => p_fpga_test_DW_TimeStampA,
    p_fpga_test_DW_LastUAtTimeA => p_fpga_test_DW_LastUAtTimeA,
    p_fpga_test_DW_TimeStampB => p_fpga_test_DW_TimeStampB,
    p_fpga_test_DW_LastUAtTimeB => p_fpga_test_DW_LastUAtTimeB,
    p_fpga_test_DW_StateSpace_PWORK => p_fpga_test_DW_StateSpace_PWORK,
    p_fpga_test_DW_StateSpace_IWORK_address0 => p_fpga_test_DW_StateSpace_IWORK_address0,
    p_fpga_test_DW_StateSpace_IWORK_d0 => p_fpga_test_DW_StateSpace_IWORK_d0,
    p_fpga_test_DW_StateSpace_IWORK_address1 => p_fpga_test_DW_StateSpace_IWORK_address1,
    p_fpga_test_DW_StateSpace_IWORK_d1 => p_fpga_test_DW_StateSpace_IWORK_d1,
    p_fpga_test_DW_u5_Mode => p_fpga_test_DW_u5_Mode,
    fpga_test_M_i => fpga_test_M_i,
    fpga_test_M_o => fpga_test_M_o
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file fpga_test_step_0.vhd when simulating
-- the core, fpga_test_step_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



