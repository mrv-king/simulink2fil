-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Aug 28 22:39:01 2023
-- Host        : DESKTOP-TDOE7A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top fpga_test_step_0 -prefix
--               fpga_test_step_0_ fpga_test_step_0_stub.vhdl
-- Design      : fpga_test_step_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fpga_test_step_0 is
  Port ( 
    fpga_test_Y_ap_vld : out STD_LOGIC;
    fpga_test_B_StateSpace_o1_ce0 : out STD_LOGIC;
    p_fpga_test_B_AC_ap_vld : out STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_ce0 : out STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_we0 : out STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_ce1 : out STD_LOGIC;
    p_fpga_test_B_StateSpace_o1_we1 : out STD_LOGIC;
    p_fpga_test_B_StateSpace_o2_ap_vld : out STD_LOGIC;
    p_fpga_test_B_DataTypeConversion2_ap_vld : out STD_LOGIC;
    p_fpga_test_B_LookUpTable_ap_vld : out STD_LOGIC;
    p_fpga_test_B_IC_ap_vld : out STD_LOGIC;
    p_fpga_test_B_Derivative_ap_vld : out STD_LOGIC;
    p_fpga_test_B_DataTypeConversion1_ap_vld : out STD_LOGIC;
    fpga_test_DW_StateSpace_IWORK_ce0 : out STD_LOGIC;
    fpga_test_DW_StateSpace_IWORK_ce1 : out STD_LOGIC;
    p_fpga_test_DW_DelayTs_DSTATE_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_IC_FirstOutputTime_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_TimeStampA_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_LastUAtTimeA_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_TimeStampB_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_LastUAtTimeB_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_StateSpace_PWORK_ap_vld : out STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_ce0 : out STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_we0 : out STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_ce1 : out STD_LOGIC;
    p_fpga_test_DW_StateSpace_IWORK_we1 : out STD_LOGIC;
    p_fpga_test_DW_u5_Mode_ap_vld : out STD_LOGIC;
    fpga_test_M_o_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    fpga_test_U : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fpga_test_Y : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fpga_test_B_AC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fpga_test_B_StateSpace_o1_address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    fpga_test_B_StateSpace_o1_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_B_StateSpace_o2 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_B_DataTypeConversion2 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_B_LookUpTable : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_B_IC : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_B_Derivative : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_B_DataTypeConversion1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_fpga_test_B_AC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_fpga_test_B_StateSpace_o1_address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_fpga_test_B_StateSpace_o1_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_B_StateSpace_o1_address1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_fpga_test_B_StateSpace_o1_d1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_B_StateSpace_o2 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_B_DataTypeConversion2 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_B_LookUpTable : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_B_IC : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_B_Derivative : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_B_DataTypeConversion1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpga_test_DW_DelayTs_DSTATE : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_DW_DelayTs_DSTATE_f : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_DW_IC_FirstOutputTime : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_DW_TimeStampA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_DW_LastUAtTimeA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_DW_TimeStampB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_DW_LastUAtTimeB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fpga_test_DW_StateSpace_PWORK : in STD_LOGIC_VECTOR ( 831 downto 0 );
    fpga_test_DW_StateSpace_IWORK_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpga_test_DW_StateSpace_IWORK_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fpga_test_DW_StateSpace_IWORK_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpga_test_DW_StateSpace_IWORK_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fpga_test_DW_u5_Mode : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_fpga_test_DW_DelayTs_DSTATE : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_DW_DelayTs_DSTATE_f : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_DW_IC_FirstOutputTime : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_DW_TimeStampA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_DW_LastUAtTimeA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_DW_TimeStampB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_DW_LastUAtTimeB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    p_fpga_test_DW_StateSpace_PWORK : out STD_LOGIC_VECTOR ( 831 downto 0 );
    p_fpga_test_DW_StateSpace_IWORK_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_fpga_test_DW_StateSpace_IWORK_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_fpga_test_DW_StateSpace_IWORK_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_fpga_test_DW_StateSpace_IWORK_d1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_fpga_test_DW_u5_Mode : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpga_test_M_i : in STD_LOGIC_VECTOR ( 519 downto 0 );
    fpga_test_M_o : out STD_LOGIC_VECTOR ( 519 downto 0 )
  );

end fpga_test_step_0;

architecture stub of fpga_test_step_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "fpga_test_Y_ap_vld,fpga_test_B_StateSpace_o1_ce0,p_fpga_test_B_AC_ap_vld,p_fpga_test_B_StateSpace_o1_ce0,p_fpga_test_B_StateSpace_o1_we0,p_fpga_test_B_StateSpace_o1_ce1,p_fpga_test_B_StateSpace_o1_we1,p_fpga_test_B_StateSpace_o2_ap_vld,p_fpga_test_B_DataTypeConversion2_ap_vld,p_fpga_test_B_LookUpTable_ap_vld,p_fpga_test_B_IC_ap_vld,p_fpga_test_B_Derivative_ap_vld,p_fpga_test_B_DataTypeConversion1_ap_vld,fpga_test_DW_StateSpace_IWORK_ce0,fpga_test_DW_StateSpace_IWORK_ce1,p_fpga_test_DW_DelayTs_DSTATE_ap_vld,p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld,p_fpga_test_DW_IC_FirstOutputTime_ap_vld,p_fpga_test_DW_TimeStampA_ap_vld,p_fpga_test_DW_LastUAtTimeA_ap_vld,p_fpga_test_DW_TimeStampB_ap_vld,p_fpga_test_DW_LastUAtTimeB_ap_vld,p_fpga_test_DW_StateSpace_PWORK_ap_vld,p_fpga_test_DW_StateSpace_IWORK_ce0,p_fpga_test_DW_StateSpace_IWORK_we0,p_fpga_test_DW_StateSpace_IWORK_ce1,p_fpga_test_DW_StateSpace_IWORK_we1,p_fpga_test_DW_u5_Mode_ap_vld,fpga_test_M_o_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,fpga_test_U[7:0],fpga_test_Y[31:0],fpga_test_B_AC[31:0],fpga_test_B_StateSpace_o1_address0[0:0],fpga_test_B_StateSpace_o1_q0[63:0],fpga_test_B_StateSpace_o2[63:0],fpga_test_B_DataTypeConversion2[63:0],fpga_test_B_LookUpTable[63:0],fpga_test_B_IC[63:0],fpga_test_B_Derivative[63:0],fpga_test_B_DataTypeConversion1[7:0],p_fpga_test_B_AC[31:0],p_fpga_test_B_StateSpace_o1_address0[0:0],p_fpga_test_B_StateSpace_o1_d0[63:0],p_fpga_test_B_StateSpace_o1_address1[0:0],p_fpga_test_B_StateSpace_o1_d1[63:0],p_fpga_test_B_StateSpace_o2[63:0],p_fpga_test_B_DataTypeConversion2[63:0],p_fpga_test_B_LookUpTable[63:0],p_fpga_test_B_IC[63:0],p_fpga_test_B_Derivative[63:0],p_fpga_test_B_DataTypeConversion1[7:0],fpga_test_DW_DelayTs_DSTATE[63:0],fpga_test_DW_DelayTs_DSTATE_f[63:0],fpga_test_DW_IC_FirstOutputTime[63:0],fpga_test_DW_TimeStampA[63:0],fpga_test_DW_LastUAtTimeA[63:0],fpga_test_DW_TimeStampB[63:0],fpga_test_DW_LastUAtTimeB[63:0],fpga_test_DW_StateSpace_PWORK[831:0],fpga_test_DW_StateSpace_IWORK_address0[3:0],fpga_test_DW_StateSpace_IWORK_q0[31:0],fpga_test_DW_StateSpace_IWORK_address1[3:0],fpga_test_DW_StateSpace_IWORK_q1[31:0],fpga_test_DW_u5_Mode[7:0],p_fpga_test_DW_DelayTs_DSTATE[63:0],p_fpga_test_DW_DelayTs_DSTATE_f[63:0],p_fpga_test_DW_IC_FirstOutputTime[63:0],p_fpga_test_DW_TimeStampA[63:0],p_fpga_test_DW_LastUAtTimeA[63:0],p_fpga_test_DW_TimeStampB[63:0],p_fpga_test_DW_LastUAtTimeB[63:0],p_fpga_test_DW_StateSpace_PWORK[831:0],p_fpga_test_DW_StateSpace_IWORK_address0[3:0],p_fpga_test_DW_StateSpace_IWORK_d0[31:0],p_fpga_test_DW_StateSpace_IWORK_address1[3:0],p_fpga_test_DW_StateSpace_IWORK_d1[31:0],p_fpga_test_DW_u5_Mode[7:0],fpga_test_M_i[519:0],fpga_test_M_o[519:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fpga_test_step,Vivado 2023.1";
begin
end;
