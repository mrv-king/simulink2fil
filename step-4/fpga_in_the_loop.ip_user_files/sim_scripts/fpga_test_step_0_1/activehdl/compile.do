transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/nikgal/Vivado/fpga_in_the_loop/fpga_in_the_loop.cache/compile_simlib/activehdl}
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_18
vlib activehdl/floating_point_v7_1_15
vlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"../../../ipstatic/hdl/verilog/fpga_test_step_dadd_64ns_64ns_64_1_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_dmul_64ns_64ns_64_1_max_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_35ns_25ns_60_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_42ns_33ns_75_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_49ns_44s_93_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_49ns_49ns_98_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_56ns_52s_108_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_64s_63ns_126_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_170s_53ns_170_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mux_4_2_32_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mux_8_3_1_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mux_16_4_1_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_double_s.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_double_s_ref_4oPi_table_256_ROM_AUTO_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step.v" \
"../../../ipstatic/hdl/ip/fpga_test_step_dadd_64ns_64ns_64_1_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_test_step_dmul_64ns_64ns_64_1_max_dsp_1_ip.v" \
"../../../../fpga_test_step_0_1/sim/fpga_test_step_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

