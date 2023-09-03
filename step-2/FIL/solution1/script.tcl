############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project FIL
set_top fpga_test_initialize
add_files fpga_test_grt_rtw/fpga_test.c -cflags "-IC:/Xilinx/Vitis_HLS/2023.1/simulink_include"
add_files fpga_test_grt_rtw/fpga_test.h
add_files fpga_test_grt_rtw/fpga_test_data.c -cflags "-IC:/Xilinx/Vitis_HLS/2023.1/simulink_include"
add_files fpga_test_grt_rtw/fpga_test_types.h
add_files ../../../../Xilinx/Vitis_HLS/2023.1/simulink_include/rtGetInf.c -cflags "-IC:/Xilinx/Vitis_HLS/2023.1/simulink_include"
add_files ../../../../Xilinx/Vitis_HLS/2023.1/simulink_include/rtGetNaN.c -cflags "-IC:/Xilinx/Vitis_HLS/2023.1/simulink_include"
add_files fpga_test_grt_rtw/rt_look.c -cflags "-IC:/Xilinx/Vitis_HLS/2023.1/simulink_include"
add_files fpga_test_grt_rtw/rt_look1d.c -cflags "-IC:/Xilinx/Vitis_HLS/2023.1/simulink_include"
add_files ../../../../Xilinx/Vitis_HLS/2023.1/simulink_include/rt_nonfinite.c -cflags "-IC:/Xilinx/Vitis_HLS/2023.1/simulink_include"
open_solution "solution1" -flow_target vivado
set_part {xc7a100t-csg324-1}
create_clock -period 50000 -name default
config_export -format ip_catalog -output C:/Users/nikgal/Vivado/fpga_model/fil_init -rtl verilog
source "./FIL/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Users/nikgal/Vivado/fpga_model/fil_init
