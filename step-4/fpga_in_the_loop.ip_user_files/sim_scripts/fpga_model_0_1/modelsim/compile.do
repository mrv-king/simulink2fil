vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_18
vlib modelsim_lib/msim/floating_point_v7_1_15
vlib modelsim_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 modelsim_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 modelsim_lib/msim/floating_point_v7_1_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_10  -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15  -93  \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -incr -mfcu  \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../ipstatic/hdl/verilog/fpga_model_dadd_64ns_64ns_64_8_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_dadddsub_64ns_64ns_64_8_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_dcmp_64ns_64ns_1_2_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_ddiv_64ns_64ns_64_59_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_dmul_64ns_64ns_64_7_max_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_flow_control_loop_pipe_sequential_init.v" \
"../../../ipstatic/hdl/verilog/fpga_model_fpga_model_Pipeline_init_1_init_2.v" \
"../../../ipstatic/hdl/verilog/fpga_model_fpga_test_step_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_fpga_test_step_108_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mul_35ns_25ns_60_2_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mul_42ns_33ns_75_2_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mul_49ns_44s_93_5_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mul_49ns_49ns_98_5_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mul_56ns_52s_108_5_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mul_64s_63ns_126_5_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mul_170s_53ns_170_5_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mux_4_2_32_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mux_8_3_1_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_mux_16_4_1_1_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_Pipeline_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_Pipeline_2.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_Pipeline_3.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_s.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_ROM_1P_LUTRAM_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sin_or_cos_double_s_ref_4oPi_table_256_ROM_AUTO_1R.v" \
"../../../ipstatic/hdl/verilog/fpga_model_sitodp_32ns_64_6_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model_uitodp_32ns_64_6_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/fpga_model.v" \
"../../../ipstatic/hdl/ip/fpga_model_dadddsub_64ns_64ns_64_8_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_model_dadd_64ns_64ns_64_8_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_model_dcmp_64ns_64ns_1_2_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_model_ddiv_64ns_64ns_64_59_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_model_dmul_64ns_64ns_64_7_max_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_model_sitodp_32ns_64_6_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/fpga_model_uitodp_32ns_64_6_no_dsp_1_ip.v" \
"../../../../fpga_model_0_1/sim/fpga_model_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

