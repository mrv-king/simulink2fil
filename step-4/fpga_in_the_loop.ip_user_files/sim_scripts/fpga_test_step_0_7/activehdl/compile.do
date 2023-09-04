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
"../../../ipstatic/hdl/verilog/fpga_test_step_dadd_64ns_64ns_64_8_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_dmul_64ns_64ns_64_7_max_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_fpext_32ns_64_2_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_fptrunc_64ns_32_2_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_15ns_15ns_30_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_15ns_15s_30_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_23s_22ns_45_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_30s_29ns_58_2_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mul_80s_24ns_80_5_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mux_8_3_1_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_mux_16_4_1_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_float_s.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_test_step.v" \
"../../../ipstatic/hdl/ip/fpga_test_step_dadd_64ns_64ns_64_8_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_test_step_dmul_64ns_64ns_64_7_max_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_test_step_fpext_32ns_64_2_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_test_step_fptrunc_64ns_32_2_no_dsp_1_ip.v" \
"../../../../fpga_test_step_0_7/sim/fpga_test_step_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

