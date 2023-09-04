// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module fpga_test_step_sin_or_cos_float_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        t_in,
        ap_return
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] t_in;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] ap_return;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] ref_4oPi_table_100_address0;
reg    ref_4oPi_table_100_ce0;
wire   [99:0] ref_4oPi_table_100_q0;
wire   [7:0] second_order_float_sin_cos_K0_address0;
reg    second_order_float_sin_cos_K0_ce0;
wire   [29:0] second_order_float_sin_cos_K0_q0;
wire   [7:0] second_order_float_sin_cos_K1_address0;
reg    second_order_float_sin_cos_K1_ce0;
wire  signed [22:0] second_order_float_sin_cos_K1_q0;
wire   [7:0] second_order_float_sin_cos_K2_address0;
reg    second_order_float_sin_cos_K2_ce0;
wire  signed [14:0] second_order_float_sin_cos_K2_q0;
reg   [0:0] din_sign_reg_1335;
wire   [7:0] din_exp_fu_312_p4;
reg   [7:0] din_exp_reg_1341;
wire   [22:0] din_sig_fu_322_p1;
reg   [22:0] din_sig_reg_1348;
wire   [0:0] closepath_fu_326_p2;
reg   [0:0] closepath_reg_1353;
wire   [22:0] trunc_ln494_fu_332_p1;
reg   [22:0] trunc_ln494_reg_1360;
wire   [3:0] trunc_ln408_fu_365_p1;
reg   [3:0] trunc_ln408_reg_1370;
wire   [2:0] k_1_fu_446_p3;
reg   [2:0] k_1_reg_1375;
wire    ap_CS_fsm_state2;
wire   [28:0] Mx_fu_544_p4;
reg   [28:0] Mx_reg_1380;
wire  signed [7:0] Ex_1_fu_554_p2;
reg  signed [7:0] Ex_1_reg_1385;
wire   [21:0] B_fu_614_p1;
reg   [21:0] B_reg_1390;
wire   [0:0] cos_basis_fu_618_p10;
reg   [0:0] cos_basis_reg_1395;
reg   [14:0] B_trunc_reg_1402;
reg   [28:0] result_reg_1422;
wire    ap_CS_fsm_state3;
wire   [31:0] out_bits_0_fu_813_p3;
reg   [31:0] out_bits_0_reg_1428;
wire   [31:0] out_bits_1_fu_831_p3;
reg   [31:0] out_bits_1_reg_1433;
wire  signed [8:0] sext_ln281_fu_919_p1;
reg  signed [8:0] sext_ln281_reg_1462;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln311_fu_842_p2;
reg   [31:0] ap_phi_mux_add_i166_lcssa_phi_fu_267_p4;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln318_fu_952_p2;
wire   [31:0] shift_3_fu_976_p2;
wire   [0:0] icmp_ln321_fu_1038_p2;
wire   [27:0] trunc_ln318_fu_947_p1;
reg   [27:0] ap_phi_mux_result_mantissa_phi_fu_276_p4;
wire   [27:0] trunc_ln321_fu_1033_p1;
wire   [63:0] zext_ln407_fu_360_p1;
wire   [63:0] zext_ln28_fu_674_p1;
reg   [1:0] i_fu_182;
wire   [1:0] add_ln311_fu_848_p2;
reg   [31:0] c_1_fu_186;
wire   [31:0] c_1_6_fu_890_p3;
reg   [31:0] c_1_3_fu_190;
wire   [31:0] c_1_5_fu_882_p3;
reg   [28:0] in_shift_fu_194;
wire   [28:0] in_shift_3_fu_1029_p1;
reg   [1:0] i_1_fu_198;
wire   [1:0] add_ln318_fu_958_p2;
reg   [31:0] shift_fu_202;
wire   [21:0] mul_ln29_fu_282_p1;
wire   [28:0] mul_ln32_fu_286_p1;
wire  signed [79:0] h_fu_290_p0;
wire   [23:0] h_fu_290_p1;
wire   [31:0] data_fu_300_p1;
wire   [7:0] add_ln405_fu_336_p2;
wire   [7:0] addr_fu_342_p3;
wire   [3:0] lshr_ln_fu_350_p4;
wire   [7:0] Ex_fu_374_p2;
wire   [99:0] zext_ln408_fu_393_p1;
wire   [99:0] shl_ln408_fu_396_p2;
wire   [23:0] X_fu_386_p3;
wire   [79:0] h_fu_290_p2;
wire   [2:0] k_fu_428_p4;
wire   [0:0] tmp_fu_438_p3;
wire   [0:0] xor_ln480_fu_453_p2;
wire   [57:0] Mx_bits_fu_418_p4;
wire   [0:0] and_ln480_fu_458_p2;
wire   [57:0] Mx_bits_1_fu_464_p2;
wire   [57:0] Mx_bits_3_fu_470_p3;
wire   [28:0] tmp_2_fu_478_p4;
wire   [29:0] t_fu_488_p3;
reg   [29:0] tmp_8_fu_496_p4;
wire   [30:0] tmp_9_fu_506_p3;
wire  signed [31:0] sext_ln104_fu_514_p1;
reg   [31:0] tmp_s_fu_518_p3;
wire   [5:0] Mx_zeros_fu_526_p1;
wire   [57:0] zext_ln533_fu_534_p1;
wire   [57:0] shl_ln533_fu_538_p2;
wire   [7:0] select_ln482_fu_379_p3;
wire   [7:0] zext_ln534_fu_530_p1;
wire  signed [8:0] sext_ln535_fu_560_p1;
wire   [0:0] tmp_6_fu_564_p3;
wire   [8:0] sub_ln535_fu_572_p2;
wire   [8:0] select_ln535_fu_578_p3;
wire   [31:0] zext_ln535_fu_590_p1;
wire  signed [31:0] sext_ln535_1_fu_586_p1;
wire   [31:0] lshr_ln535_fu_594_p2;
wire   [31:0] shl_ln535_fu_600_p2;
wire   [31:0] select_ln535_1_fu_606_p3;
wire   [2:0] cos_basis_fu_618_p9;
wire   [0:0] sin_basis_fu_660_p2;
wire   [6:0] tmp_1_fu_640_p4;
wire   [7:0] A_fu_666_p3;
wire   [14:0] mul_ln23_fu_690_p0;
wire   [29:0] zext_ln23_fu_687_p1;
wire   [14:0] mul_ln23_fu_690_p1;
wire   [29:0] mul_ln23_fu_690_p2;
wire   [14:0] B_squared_fu_696_p4;
wire   [44:0] mul_ln29_fu_282_p2;
wire   [14:0] mul_ln30_fu_743_p0;
wire   [29:0] mul_ln30_fu_743_p2;
wire   [28:0] t1_fu_710_p4;
wire   [21:0] trunc_ln_fu_729_p4;
wire  signed [29:0] sext_ln32_fu_759_p1;
wire  signed [29:0] sext_ln32_1_fu_763_p1;
wire   [13:0] trunc_ln1_fu_749_p4;
wire   [29:0] add_ln32_fu_767_p2;
wire  signed [29:0] sext_ln32_2_fu_773_p1;
wire  signed [29:0] add_ln32_1_fu_777_p2;
wire   [28:0] Mx_1_fu_681_p3;
wire   [57:0] mul_ln32_fu_286_p2;
wire   [15:0] tmp_3_fu_803_p4;
wire   [12:0] tmp_4_fu_821_p4;
wire   [0:0] trunc_ln312_fu_854_p1;
wire   [31:0] x_1_fu_858_p3;
reg   [31:0] tmp_5_fu_864_p4;
reg   [31:0] c_0_fu_874_p3;
wire   [7:0] Ex_3_fu_913_p3;
wire   [0:0] trunc_ln319_fu_964_p1;
wire   [31:0] select_ln319_fu_968_p3;
wire   [0:0] tmp_11_fu_983_p3;
wire   [31:0] sub_ln320_fu_991_p2;
wire   [31:0] zext_ln320_fu_1005_p1;
wire   [31:0] select_ln320_fu_997_p3;
wire   [31:0] lshr_ln320_fu_1009_p2;
wire   [31:0] shl_ln320_fu_1015_p2;
wire   [31:0] select_ln320_1_fu_1021_p3;
wire   [8:0] add_ln329_fu_1059_p2;
wire  signed [31:0] sext_ln329_fu_1064_p1;
wire   [31:0] newexp_fu_1068_p2;
wire   [0:0] tmp_12_fu_1074_p3;
wire   [0:0] icmp_ln335_fu_1082_p2;
wire   [3:0] index_fu_1107_p3;
wire   [0:0] tmp_7_fu_1113_p18;
wire   [0:0] tmp_10_fu_1151_p18;
wire   [0:0] icmp_ln300_fu_1196_p2;
wire   [0:0] icmp_ln300_1_fu_1201_p2;
wire   [0:0] icmp_ln311_1_fu_1212_p2;
wire   [0:0] results_sign_fu_1189_p3;
wire   [0:0] xor_ln311_fu_1217_p2;
wire   [0:0] and_ln300_fu_1206_p2;
wire   [0:0] results_sign_1_fu_1223_p2;
wire   [0:0] and_ln300_1_fu_1236_p2;
wire   [0:0] xor_ln300_fu_1242_p2;
wire   [0:0] or_ln335_fu_1087_p2;
wire   [7:0] empty_fu_1103_p1;
wire   [0:0] or_ln300_fu_1256_p2;
wire   [7:0] select_ln300_2_fu_1248_p3;
wire   [7:0] select_ln300_1_fu_1262_p3;
wire   [22:0] phitmp_fu_1093_p4;
wire   [22:0] select_ln300_5_fu_1278_p3;
wire   [22:0] select_ln300_3_fu_1286_p3;
wire   [0:0] results_sign_2_fu_1229_p3;
wire   [7:0] results_exp_fu_1270_p3;
wire   [22:0] results_sig_fu_1294_p3;
wire   [31:0] t_2_fu_1302_p4;
wire   [31:0] bitcast_ln356_fu_1312_p1;
reg   [31:0] ap_return_preg;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire   [79:0] h_fu_290_p10;
wire   [44:0] mul_ln29_fu_282_p10;
wire   [29:0] mul_ln30_fu_743_p00;
wire   [57:0] mul_ln32_fu_286_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_return_preg = 32'd0;
end

fpga_test_step_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R #(
    .DataWidth( 100 ),
    .AddressRange( 13 ),
    .AddressWidth( 4 ))
ref_4oPi_table_100_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ref_4oPi_table_100_address0),
    .ce0(ref_4oPi_table_100_ce0),
    .q0(ref_4oPi_table_100_q0)
);

fpga_test_step_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R #(
    .DataWidth( 30 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
second_order_float_sin_cos_K0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(second_order_float_sin_cos_K0_address0),
    .ce0(second_order_float_sin_cos_K0_ce0),
    .q0(second_order_float_sin_cos_K0_q0)
);

fpga_test_step_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R #(
    .DataWidth( 23 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
second_order_float_sin_cos_K1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(second_order_float_sin_cos_K1_address0),
    .ce0(second_order_float_sin_cos_K1_ce0),
    .q0(second_order_float_sin_cos_K1_q0)
);

fpga_test_step_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R #(
    .DataWidth( 15 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
second_order_float_sin_cos_K2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(second_order_float_sin_cos_K2_address0),
    .ce0(second_order_float_sin_cos_K2_ce0),
    .q0(second_order_float_sin_cos_K2_q0)
);

fpga_test_step_mul_23s_22ns_45_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 23 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 45 ))
mul_23s_22ns_45_1_1_U1(
    .din0(second_order_float_sin_cos_K1_q0),
    .din1(mul_ln29_fu_282_p1),
    .dout(mul_ln29_fu_282_p2)
);

fpga_test_step_mul_30s_29ns_58_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 30 ),
    .din1_WIDTH( 29 ),
    .dout_WIDTH( 58 ))
mul_30s_29ns_58_1_1_U2(
    .din0(add_ln32_1_fu_777_p2),
    .din1(mul_ln32_fu_286_p1),
    .dout(mul_ln32_fu_286_p2)
);

fpga_test_step_mul_80s_24ns_80_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 80 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 80 ))
mul_80s_24ns_80_1_1_U3(
    .din0(h_fu_290_p0),
    .din1(h_fu_290_p1),
    .dout(h_fu_290_p2)
);

fpga_test_step_mux_8_3_1_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 1 ),
    .din5_WIDTH( 1 ),
    .din6_WIDTH( 1 ),
    .din7_WIDTH( 1 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 1 ))
mux_8_3_1_1_1_U4(
    .din0(1'd0),
    .din1(1'd1),
    .din2(1'd1),
    .din3(1'd0),
    .din4(1'd0),
    .din5(1'd1),
    .din6(1'd1),
    .din7(1'd0),
    .din8(cos_basis_fu_618_p9),
    .dout(cos_basis_fu_618_p10)
);

fpga_test_step_mul_15ns_15ns_30_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 30 ))
mul_15ns_15ns_30_1_1_U5(
    .din0(mul_ln23_fu_690_p0),
    .din1(mul_ln23_fu_690_p1),
    .dout(mul_ln23_fu_690_p2)
);

fpga_test_step_mul_15ns_15s_30_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 30 ))
mul_15ns_15s_30_1_1_U6(
    .din0(mul_ln30_fu_743_p0),
    .din1(second_order_float_sin_cos_K2_q0),
    .dout(mul_ln30_fu_743_p2)
);

fpga_test_step_mux_16_4_1_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 1 ),
    .din5_WIDTH( 1 ),
    .din6_WIDTH( 1 ),
    .din7_WIDTH( 1 ),
    .din8_WIDTH( 1 ),
    .din9_WIDTH( 1 ),
    .din10_WIDTH( 1 ),
    .din11_WIDTH( 1 ),
    .din12_WIDTH( 1 ),
    .din13_WIDTH( 1 ),
    .din14_WIDTH( 1 ),
    .din15_WIDTH( 1 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 1 ))
mux_16_4_1_1_1_U7(
    .din0(1'd0),
    .din1(1'd0),
    .din2(1'd0),
    .din3(1'd1),
    .din4(1'd1),
    .din5(1'd1),
    .din6(1'd1),
    .din7(1'd0),
    .din8(1'd0),
    .din9(1'd1),
    .din10(1'd1),
    .din11(1'd1),
    .din12(1'd1),
    .din13(1'd0),
    .din14(1'd0),
    .din15(1'd0),
    .din16(index_fu_1107_p3),
    .dout(tmp_7_fu_1113_p18)
);

fpga_test_step_mux_16_4_1_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 1 ),
    .din5_WIDTH( 1 ),
    .din6_WIDTH( 1 ),
    .din7_WIDTH( 1 ),
    .din8_WIDTH( 1 ),
    .din9_WIDTH( 1 ),
    .din10_WIDTH( 1 ),
    .din11_WIDTH( 1 ),
    .din12_WIDTH( 1 ),
    .din13_WIDTH( 1 ),
    .din14_WIDTH( 1 ),
    .din15_WIDTH( 1 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 1 ))
mux_16_4_1_1_1_U8(
    .din0(1'd0),
    .din1(1'd0),
    .din2(1'd1),
    .din3(1'd0),
    .din4(1'd1),
    .din5(1'd1),
    .din6(1'd0),
    .din7(1'd1),
    .din8(1'd1),
    .din9(1'd0),
    .din10(1'd1),
    .din11(1'd1),
    .din12(1'd0),
    .din13(1'd1),
    .din14(1'd0),
    .din15(1'd0),
    .din16(index_fu_1107_p3),
    .dout(tmp_10_fu_1151_p18)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln321_fu_1038_p2 == 1'd0) | (icmp_ln318_fu_952_p2 == 1'd1)))) begin
            ap_return_preg <= bitcast_ln356_fu_1312_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln311_fu_842_p2 == 1'd1))) begin
        i_1_fu_198 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln321_fu_1038_p2 == 1'd1) & (icmp_ln318_fu_952_p2 == 1'd0))) begin
        i_1_fu_198 <= add_ln318_fu_958_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_182 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln311_fu_842_p2 == 1'd0))) begin
        i_fu_182 <= add_ln311_fu_848_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln311_fu_842_p2 == 1'd1))) begin
        in_shift_fu_194 <= result_reg_1422;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln321_fu_1038_p2 == 1'd1) & (icmp_ln318_fu_952_p2 == 1'd0))) begin
        in_shift_fu_194 <= in_shift_3_fu_1029_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln311_fu_842_p2 == 1'd1))) begin
        shift_fu_202 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln321_fu_1038_p2 == 1'd1) & (icmp_ln318_fu_952_p2 == 1'd0))) begin
        shift_fu_202 <= shift_3_fu_976_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        B_reg_1390 <= B_fu_614_p1;
        B_trunc_reg_1402 <= {{select_ln535_1_fu_606_p3[21:7]}};
        Ex_1_reg_1385 <= Ex_1_fu_554_p2;
        Mx_reg_1380 <= {{shl_ln533_fu_538_p2[57:29]}};
        cos_basis_reg_1395 <= cos_basis_fu_618_p10;
        k_1_reg_1375 <= k_1_fu_446_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln311_fu_842_p2 == 1'd0))) begin
        c_1_3_fu_190 <= c_1_5_fu_882_p3;
        c_1_fu_186 <= c_1_6_fu_890_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        closepath_reg_1353 <= closepath_fu_326_p2;
        din_exp_reg_1341 <= {{data_fu_300_p1[30:23]}};
        din_sig_reg_1348 <= din_sig_fu_322_p1;
        din_sign_reg_1335 <= data_fu_300_p1[32'd31];
        trunc_ln408_reg_1370 <= trunc_ln408_fu_365_p1;
        trunc_ln494_reg_1360 <= trunc_ln494_fu_332_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        out_bits_0_reg_1428[31 : 16] <= out_bits_0_fu_813_p3[31 : 16];
        out_bits_1_reg_1433[31 : 19] <= out_bits_1_fu_831_p3[31 : 19];
        result_reg_1422 <= {{mul_ln32_fu_286_p2[57:29]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln311_fu_842_p2 == 1'd1))) begin
        sext_ln281_reg_1462 <= sext_ln281_fu_919_p1;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state5) & ((icmp_ln321_fu_1038_p2 == 1'd0) | (icmp_ln318_fu_952_p2 == 1'd1))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if (((icmp_ln321_fu_1038_p2 == 1'd0) & (icmp_ln318_fu_952_p2 == 1'd0))) begin
            ap_phi_mux_add_i166_lcssa_phi_fu_267_p4 = shift_3_fu_976_p2;
        end else if ((icmp_ln318_fu_952_p2 == 1'd1)) begin
            ap_phi_mux_add_i166_lcssa_phi_fu_267_p4 = shift_fu_202;
        end else begin
            ap_phi_mux_add_i166_lcssa_phi_fu_267_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_add_i166_lcssa_phi_fu_267_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if (((icmp_ln321_fu_1038_p2 == 1'd0) & (icmp_ln318_fu_952_p2 == 1'd0))) begin
            ap_phi_mux_result_mantissa_phi_fu_276_p4 = trunc_ln321_fu_1033_p1;
        end else if ((icmp_ln318_fu_952_p2 == 1'd1)) begin
            ap_phi_mux_result_mantissa_phi_fu_276_p4 = trunc_ln318_fu_947_p1;
        end else begin
            ap_phi_mux_result_mantissa_phi_fu_276_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_result_mantissa_phi_fu_276_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln321_fu_1038_p2 == 1'd0) | (icmp_ln318_fu_952_p2 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln321_fu_1038_p2 == 1'd0) | (icmp_ln318_fu_952_p2 == 1'd1)))) begin
        ap_return = bitcast_ln356_fu_1312_p1;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ref_4oPi_table_100_ce0 = 1'b1;
    end else begin
        ref_4oPi_table_100_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        second_order_float_sin_cos_K0_ce0 = 1'b1;
    end else begin
        second_order_float_sin_cos_K0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        second_order_float_sin_cos_K1_ce0 = 1'b1;
    end else begin
        second_order_float_sin_cos_K1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        second_order_float_sin_cos_K2_ce0 = 1'b1;
    end else begin
        second_order_float_sin_cos_K2_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln311_fu_842_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln321_fu_1038_p2 == 1'd0) | (icmp_ln318_fu_952_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_fu_666_p3 = {{sin_basis_fu_660_p2}, {tmp_1_fu_640_p4}};

assign B_fu_614_p1 = select_ln535_1_fu_606_p3[21:0];

assign B_squared_fu_696_p4 = {{mul_ln23_fu_690_p2[29:15]}};

assign Ex_1_fu_554_p2 = (select_ln482_fu_379_p3 - zext_ln534_fu_530_p1);

assign Ex_3_fu_913_p3 = ((cos_basis_reg_1395[0:0] == 1'b1) ? 8'd0 : Ex_1_reg_1385);

assign Ex_fu_374_p2 = ($signed(din_exp_reg_1341) + $signed(8'd131));

assign Mx_1_fu_681_p3 = ((cos_basis_reg_1395[0:0] == 1'b1) ? 29'd536870911 : Mx_reg_1380);

assign Mx_bits_1_fu_464_p2 = (58'd0 - Mx_bits_fu_418_p4);

assign Mx_bits_3_fu_470_p3 = ((and_ln480_fu_458_p2[0:0] == 1'b1) ? Mx_bits_1_fu_464_p2 : Mx_bits_fu_418_p4);

assign Mx_bits_fu_418_p4 = {{h_fu_290_p2[76:19]}};

assign Mx_fu_544_p4 = {{shl_ln533_fu_538_p2[57:29]}};

assign Mx_zeros_fu_526_p1 = tmp_s_fu_518_p3[5:0];

assign X_fu_386_p3 = {{1'd1}, {trunc_ln494_reg_1360}};

assign add_ln311_fu_848_p2 = (i_fu_182 + 2'd1);

assign add_ln318_fu_958_p2 = (i_1_fu_198 + 2'd1);

assign add_ln329_fu_1059_p2 = ($signed(sext_ln281_reg_1462) + $signed(9'd127));

assign add_ln32_1_fu_777_p2 = ($signed(add_ln32_fu_767_p2) + $signed(sext_ln32_2_fu_773_p1));

assign add_ln32_fu_767_p2 = ($signed(sext_ln32_fu_759_p1) + $signed(sext_ln32_1_fu_763_p1));

assign add_ln405_fu_336_p2 = ($signed(din_exp_fu_312_p4) + $signed(8'd194));

assign addr_fu_342_p3 = ((closepath_fu_326_p2[0:0] == 1'b1) ? 8'd63 : add_ln405_fu_336_p2);

assign and_ln300_1_fu_1236_p2 = (icmp_ln300_fu_1196_p2 & icmp_ln300_1_fu_1201_p2);

assign and_ln300_fu_1206_p2 = (icmp_ln300_fu_1196_p2 & icmp_ln300_1_fu_1201_p2);

assign and_ln480_fu_458_p2 = (xor_ln480_fu_453_p2 & tmp_fu_438_p3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign bitcast_ln356_fu_1312_p1 = t_2_fu_1302_p4;


always @ (tmp_5_fu_864_p4) begin
    if (tmp_5_fu_864_p4[0] == 1'b1) begin
        c_0_fu_874_p3 = 32'd0;
    end else if (tmp_5_fu_864_p4[1] == 1'b1) begin
        c_0_fu_874_p3 = 32'd1;
    end else if (tmp_5_fu_864_p4[2] == 1'b1) begin
        c_0_fu_874_p3 = 32'd2;
    end else if (tmp_5_fu_864_p4[3] == 1'b1) begin
        c_0_fu_874_p3 = 32'd3;
    end else if (tmp_5_fu_864_p4[4] == 1'b1) begin
        c_0_fu_874_p3 = 32'd4;
    end else if (tmp_5_fu_864_p4[5] == 1'b1) begin
        c_0_fu_874_p3 = 32'd5;
    end else if (tmp_5_fu_864_p4[6] == 1'b1) begin
        c_0_fu_874_p3 = 32'd6;
    end else if (tmp_5_fu_864_p4[7] == 1'b1) begin
        c_0_fu_874_p3 = 32'd7;
    end else if (tmp_5_fu_864_p4[8] == 1'b1) begin
        c_0_fu_874_p3 = 32'd8;
    end else if (tmp_5_fu_864_p4[9] == 1'b1) begin
        c_0_fu_874_p3 = 32'd9;
    end else if (tmp_5_fu_864_p4[10] == 1'b1) begin
        c_0_fu_874_p3 = 32'd10;
    end else if (tmp_5_fu_864_p4[11] == 1'b1) begin
        c_0_fu_874_p3 = 32'd11;
    end else if (tmp_5_fu_864_p4[12] == 1'b1) begin
        c_0_fu_874_p3 = 32'd12;
    end else if (tmp_5_fu_864_p4[13] == 1'b1) begin
        c_0_fu_874_p3 = 32'd13;
    end else if (tmp_5_fu_864_p4[14] == 1'b1) begin
        c_0_fu_874_p3 = 32'd14;
    end else if (tmp_5_fu_864_p4[15] == 1'b1) begin
        c_0_fu_874_p3 = 32'd15;
    end else if (tmp_5_fu_864_p4[16] == 1'b1) begin
        c_0_fu_874_p3 = 32'd16;
    end else if (tmp_5_fu_864_p4[17] == 1'b1) begin
        c_0_fu_874_p3 = 32'd17;
    end else if (tmp_5_fu_864_p4[18] == 1'b1) begin
        c_0_fu_874_p3 = 32'd18;
    end else if (tmp_5_fu_864_p4[19] == 1'b1) begin
        c_0_fu_874_p3 = 32'd19;
    end else if (tmp_5_fu_864_p4[20] == 1'b1) begin
        c_0_fu_874_p3 = 32'd20;
    end else if (tmp_5_fu_864_p4[21] == 1'b1) begin
        c_0_fu_874_p3 = 32'd21;
    end else if (tmp_5_fu_864_p4[22] == 1'b1) begin
        c_0_fu_874_p3 = 32'd22;
    end else if (tmp_5_fu_864_p4[23] == 1'b1) begin
        c_0_fu_874_p3 = 32'd23;
    end else if (tmp_5_fu_864_p4[24] == 1'b1) begin
        c_0_fu_874_p3 = 32'd24;
    end else if (tmp_5_fu_864_p4[25] == 1'b1) begin
        c_0_fu_874_p3 = 32'd25;
    end else if (tmp_5_fu_864_p4[26] == 1'b1) begin
        c_0_fu_874_p3 = 32'd26;
    end else if (tmp_5_fu_864_p4[27] == 1'b1) begin
        c_0_fu_874_p3 = 32'd27;
    end else if (tmp_5_fu_864_p4[28] == 1'b1) begin
        c_0_fu_874_p3 = 32'd28;
    end else if (tmp_5_fu_864_p4[29] == 1'b1) begin
        c_0_fu_874_p3 = 32'd29;
    end else if (tmp_5_fu_864_p4[30] == 1'b1) begin
        c_0_fu_874_p3 = 32'd30;
    end else if (tmp_5_fu_864_p4[31] == 1'b1) begin
        c_0_fu_874_p3 = 32'd31;
    end else begin
        c_0_fu_874_p3 = 32'd32;
    end
end

assign c_1_5_fu_882_p3 = ((trunc_ln312_fu_854_p1[0:0] == 1'b1) ? c_1_3_fu_190 : c_0_fu_874_p3);

assign c_1_6_fu_890_p3 = ((trunc_ln312_fu_854_p1[0:0] == 1'b1) ? c_0_fu_874_p3 : c_1_fu_186);

assign closepath_fu_326_p2 = ((din_exp_fu_312_p4 < 8'd126) ? 1'b1 : 1'b0);

assign cos_basis_fu_618_p9 = ((closepath_reg_1353[0:0] == 1'b1) ? 3'd0 : k_fu_428_p4);

assign data_fu_300_p1 = t_in;

assign din_exp_fu_312_p4 = {{data_fu_300_p1[30:23]}};

assign din_sig_fu_322_p1 = data_fu_300_p1[22:0];

assign empty_fu_1103_p1 = newexp_fu_1068_p2[7:0];

assign h_fu_290_p0 = {{shl_ln408_fu_396_p2[99:20]}};

assign h_fu_290_p1 = h_fu_290_p10;

assign h_fu_290_p10 = X_fu_386_p3;

assign icmp_ln300_1_fu_1201_p2 = ((din_sig_reg_1348 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln300_fu_1196_p2 = ((din_exp_reg_1341 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln311_1_fu_1212_p2 = ((din_exp_reg_1341 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln311_fu_842_p2 = ((i_fu_182 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln318_fu_952_p2 = ((i_1_fu_198 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln321_fu_1038_p2 = ((select_ln319_fu_968_p3 == 32'd16) ? 1'b1 : 1'b0);

assign icmp_ln335_fu_1082_p2 = ((result_reg_1422 == 29'd0) ? 1'b1 : 1'b0);

assign in_shift_3_fu_1029_p1 = select_ln320_1_fu_1021_p3[28:0];

assign index_fu_1107_p3 = {{din_sign_reg_1335}, {k_1_reg_1375}};

assign k_1_fu_446_p3 = ((closepath_reg_1353[0:0] == 1'b1) ? 3'd0 : k_fu_428_p4);

assign k_fu_428_p4 = {{h_fu_290_p2[79:77]}};

assign lshr_ln320_fu_1009_p2 = zext_ln320_fu_1005_p1 >> select_ln320_fu_997_p3;

assign lshr_ln535_fu_594_p2 = zext_ln535_fu_590_p1 >> sext_ln535_1_fu_586_p1;

assign lshr_ln_fu_350_p4 = {{addr_fu_342_p3[7:4]}};

assign mul_ln23_fu_690_p0 = zext_ln23_fu_687_p1;

assign mul_ln23_fu_690_p1 = zext_ln23_fu_687_p1;

assign mul_ln29_fu_282_p1 = mul_ln29_fu_282_p10;

assign mul_ln29_fu_282_p10 = B_reg_1390;

assign mul_ln30_fu_743_p0 = mul_ln30_fu_743_p00;

assign mul_ln30_fu_743_p00 = B_squared_fu_696_p4;

assign mul_ln32_fu_286_p1 = mul_ln32_fu_286_p10;

assign mul_ln32_fu_286_p10 = Mx_1_fu_681_p3;

assign newexp_fu_1068_p2 = ($signed(sext_ln329_fu_1064_p1) - $signed(ap_phi_mux_add_i166_lcssa_phi_fu_267_p4));

assign or_ln300_fu_1256_p2 = (icmp_ln311_1_fu_1212_p2 | and_ln300_fu_1206_p2);

assign or_ln335_fu_1087_p2 = (tmp_12_fu_1074_p3 | icmp_ln335_fu_1082_p2);

assign out_bits_0_fu_813_p3 = {{tmp_3_fu_803_p4}, {16'd32768}};

assign out_bits_1_fu_831_p3 = {{tmp_4_fu_821_p4}, {19'd262144}};

assign phitmp_fu_1093_p4 = {{ap_phi_mux_result_mantissa_phi_fu_276_p4[27:5]}};

assign ref_4oPi_table_100_address0 = zext_ln407_fu_360_p1;

assign results_exp_fu_1270_p3 = ((or_ln300_fu_1256_p2[0:0] == 1'b1) ? select_ln300_2_fu_1248_p3 : select_ln300_1_fu_1262_p3);

assign results_sig_fu_1294_p3 = ((or_ln300_fu_1256_p2[0:0] == 1'b1) ? select_ln300_5_fu_1278_p3 : select_ln300_3_fu_1286_p3);

assign results_sign_1_fu_1223_p2 = (xor_ln311_fu_1217_p2 & results_sign_fu_1189_p3);

assign results_sign_2_fu_1229_p3 = ((and_ln300_fu_1206_p2[0:0] == 1'b1) ? din_sign_reg_1335 : results_sign_1_fu_1223_p2);

assign results_sign_fu_1189_p3 = ((cos_basis_reg_1395[0:0] == 1'b1) ? tmp_7_fu_1113_p18 : tmp_10_fu_1151_p18);

assign second_order_float_sin_cos_K0_address0 = zext_ln28_fu_674_p1;

assign second_order_float_sin_cos_K1_address0 = zext_ln28_fu_674_p1;

assign second_order_float_sin_cos_K2_address0 = zext_ln28_fu_674_p1;

assign select_ln300_1_fu_1262_p3 = ((or_ln335_fu_1087_p2[0:0] == 1'b1) ? 8'd0 : empty_fu_1103_p1);

assign select_ln300_2_fu_1248_p3 = ((xor_ln300_fu_1242_p2[0:0] == 1'b1) ? 8'd255 : 8'd0);

assign select_ln300_3_fu_1286_p3 = ((or_ln335_fu_1087_p2[0:0] == 1'b1) ? 23'd0 : phitmp_fu_1093_p4);

assign select_ln300_5_fu_1278_p3 = ((xor_ln300_fu_1242_p2[0:0] == 1'b1) ? 23'd8388607 : 23'd0);

assign select_ln319_fu_968_p3 = ((trunc_ln319_fu_964_p1[0:0] == 1'b1) ? c_1_fu_186 : c_1_3_fu_190);

assign select_ln320_1_fu_1021_p3 = ((tmp_11_fu_983_p3[0:0] == 1'b1) ? lshr_ln320_fu_1009_p2 : shl_ln320_fu_1015_p2);

assign select_ln320_fu_997_p3 = ((tmp_11_fu_983_p3[0:0] == 1'b1) ? sub_ln320_fu_991_p2 : select_ln319_fu_968_p3);

assign select_ln482_fu_379_p3 = ((closepath_reg_1353[0:0] == 1'b1) ? Ex_fu_374_p2 : 8'd0);

assign select_ln535_1_fu_606_p3 = ((tmp_6_fu_564_p3[0:0] == 1'b1) ? lshr_ln535_fu_594_p2 : shl_ln535_fu_600_p2);

assign select_ln535_fu_578_p3 = ((tmp_6_fu_564_p3[0:0] == 1'b1) ? sub_ln535_fu_572_p2 : sext_ln535_fu_560_p1);

assign sext_ln104_fu_514_p1 = $signed(tmp_9_fu_506_p3);

assign sext_ln281_fu_919_p1 = $signed(Ex_3_fu_913_p3);

assign sext_ln329_fu_1064_p1 = $signed(add_ln329_fu_1059_p2);

assign sext_ln32_1_fu_763_p1 = $signed(trunc_ln_fu_729_p4);

assign sext_ln32_2_fu_773_p1 = $signed(trunc_ln1_fu_749_p4);

assign sext_ln32_fu_759_p1 = $signed(t1_fu_710_p4);

assign sext_ln535_1_fu_586_p1 = $signed(select_ln535_fu_578_p3);

assign sext_ln535_fu_560_p1 = Ex_1_fu_554_p2;

assign shift_3_fu_976_p2 = (select_ln319_fu_968_p3 + shift_fu_202);

assign shl_ln320_fu_1015_p2 = zext_ln320_fu_1005_p1 << select_ln320_fu_997_p3;

assign shl_ln408_fu_396_p2 = ref_4oPi_table_100_q0 << zext_ln408_fu_393_p1;

assign shl_ln533_fu_538_p2 = Mx_bits_3_fu_470_p3 << zext_ln533_fu_534_p1;

assign shl_ln535_fu_600_p2 = zext_ln535_fu_590_p1 << sext_ln535_1_fu_586_p1;

assign sin_basis_fu_660_p2 = (cos_basis_fu_618_p10 ^ 1'd1);

assign sub_ln320_fu_991_p2 = (32'd0 - select_ln319_fu_968_p3);

assign sub_ln535_fu_572_p2 = ($signed(9'd0) - $signed(sext_ln535_fu_560_p1));

assign t1_fu_710_p4 = {{second_order_float_sin_cos_K0_q0[29:1]}};

assign t_2_fu_1302_p4 = {{{results_sign_2_fu_1229_p3}, {results_exp_fu_1270_p3}}, {results_sig_fu_1294_p3}};

assign t_fu_488_p3 = {{tmp_2_fu_478_p4}, {1'd1}};

assign tmp_11_fu_983_p3 = select_ln319_fu_968_p3[32'd31];

assign tmp_12_fu_1074_p3 = newexp_fu_1068_p2[32'd31];

assign tmp_1_fu_640_p4 = {{select_ln535_1_fu_606_p3[28:22]}};

assign tmp_2_fu_478_p4 = {{Mx_bits_3_fu_470_p3[57:29]}};

assign tmp_3_fu_803_p4 = {{mul_ln32_fu_286_p2[57:42]}};

assign tmp_4_fu_821_p4 = {{mul_ln32_fu_286_p2[41:29]}};

integer ap_tvar_int_0;

always @ (x_1_fu_858_p3) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            tmp_5_fu_864_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_5_fu_864_p4[ap_tvar_int_0] = x_1_fu_858_p3[31 - ap_tvar_int_0];
        end
    end
end

assign tmp_6_fu_564_p3 = Ex_1_fu_554_p2[32'd7];

integer ap_tvar_int_1;

always @ (t_fu_488_p3) begin
    for (ap_tvar_int_1 = 30 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 29 - 0) begin
            tmp_8_fu_496_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_8_fu_496_p4[ap_tvar_int_1] = t_fu_488_p3[29 - ap_tvar_int_1];
        end
    end
end

assign tmp_9_fu_506_p3 = {{1'd1}, {tmp_8_fu_496_p4}};

assign tmp_fu_438_p3 = h_fu_290_p2[32'd77];


always @ (sext_ln104_fu_514_p1) begin
    if (sext_ln104_fu_514_p1[0] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd0;
    end else if (sext_ln104_fu_514_p1[1] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd1;
    end else if (sext_ln104_fu_514_p1[2] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd2;
    end else if (sext_ln104_fu_514_p1[3] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd3;
    end else if (sext_ln104_fu_514_p1[4] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd4;
    end else if (sext_ln104_fu_514_p1[5] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd5;
    end else if (sext_ln104_fu_514_p1[6] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd6;
    end else if (sext_ln104_fu_514_p1[7] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd7;
    end else if (sext_ln104_fu_514_p1[8] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd8;
    end else if (sext_ln104_fu_514_p1[9] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd9;
    end else if (sext_ln104_fu_514_p1[10] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd10;
    end else if (sext_ln104_fu_514_p1[11] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd11;
    end else if (sext_ln104_fu_514_p1[12] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd12;
    end else if (sext_ln104_fu_514_p1[13] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd13;
    end else if (sext_ln104_fu_514_p1[14] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd14;
    end else if (sext_ln104_fu_514_p1[15] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd15;
    end else if (sext_ln104_fu_514_p1[16] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd16;
    end else if (sext_ln104_fu_514_p1[17] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd17;
    end else if (sext_ln104_fu_514_p1[18] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd18;
    end else if (sext_ln104_fu_514_p1[19] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd19;
    end else if (sext_ln104_fu_514_p1[20] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd20;
    end else if (sext_ln104_fu_514_p1[21] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd21;
    end else if (sext_ln104_fu_514_p1[22] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd22;
    end else if (sext_ln104_fu_514_p1[23] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd23;
    end else if (sext_ln104_fu_514_p1[24] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd24;
    end else if (sext_ln104_fu_514_p1[25] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd25;
    end else if (sext_ln104_fu_514_p1[26] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd26;
    end else if (sext_ln104_fu_514_p1[27] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd27;
    end else if (sext_ln104_fu_514_p1[28] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd28;
    end else if (sext_ln104_fu_514_p1[29] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd29;
    end else if (sext_ln104_fu_514_p1[30] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd30;
    end else if (sext_ln104_fu_514_p1[31] == 1'b1) begin
        tmp_s_fu_518_p3 = 32'd31;
    end else begin
        tmp_s_fu_518_p3 = 32'd32;
    end
end

assign trunc_ln1_fu_749_p4 = {{mul_ln30_fu_743_p2[29:16]}};

assign trunc_ln312_fu_854_p1 = i_fu_182[0:0];

assign trunc_ln318_fu_947_p1 = in_shift_fu_194[27:0];

assign trunc_ln319_fu_964_p1 = i_1_fu_198[0:0];

assign trunc_ln321_fu_1033_p1 = select_ln320_1_fu_1021_p3[27:0];

assign trunc_ln408_fu_365_p1 = addr_fu_342_p3[3:0];

assign trunc_ln494_fu_332_p1 = data_fu_300_p1[22:0];

assign trunc_ln_fu_729_p4 = {{mul_ln29_fu_282_p2[44:23]}};

assign x_1_fu_858_p3 = ((trunc_ln312_fu_854_p1[0:0] == 1'b1) ? out_bits_1_reg_1433 : out_bits_0_reg_1428);

assign xor_ln300_fu_1242_p2 = (1'd1 ^ and_ln300_1_fu_1236_p2);

assign xor_ln311_fu_1217_p2 = (icmp_ln311_1_fu_1212_p2 ^ 1'd1);

assign xor_ln480_fu_453_p2 = (closepath_reg_1353 ^ 1'd1);

assign zext_ln23_fu_687_p1 = B_trunc_reg_1402;

assign zext_ln28_fu_674_p1 = A_fu_666_p3;

assign zext_ln320_fu_1005_p1 = in_shift_fu_194;

assign zext_ln407_fu_360_p1 = lshr_ln_fu_350_p4;

assign zext_ln408_fu_393_p1 = trunc_ln408_reg_1370;

assign zext_ln533_fu_534_p1 = Mx_zeros_fu_526_p1;

assign zext_ln534_fu_530_p1 = Mx_zeros_fu_526_p1;

assign zext_ln535_fu_590_p1 = Mx_fu_544_p4;

always @ (posedge ap_clk) begin
    out_bits_0_reg_1428[15:0] <= 16'b1000000000000000;
    out_bits_1_reg_1433[18:0] <= 19'b1000000000000000000;
end

endmodule //fpga_test_step_sin_or_cos_float_s