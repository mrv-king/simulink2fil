// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module fpga_test_step_dadd_64ns_64ns_64_1_full_dsp_1
#(parameter
    ID         = 1,
    NUM_STAGE  = 1,
    din0_WIDTH = 32,
    din1_WIDTH = 32,
    dout_WIDTH = 32
)(
    input  wire [din0_WIDTH-1:0] din0,
    input  wire [din1_WIDTH-1:0] din1,
    output wire [dout_WIDTH-1:0] dout
);
//------------------------Local signal-------------------
wire        a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire        b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire        r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
//------------------------Instantiation------------------
fpga_test_step_dadd_64ns_64ns_64_1_full_dsp_1_ip fpga_test_step_dadd_64ns_64ns_64_1_full_dsp_1_ip_u (
    .s_axis_a_tvalid      ( a_tvalid ),
    .s_axis_a_tdata       ( a_tdata ),
    .s_axis_b_tvalid      ( b_tvalid ),
    .s_axis_b_tdata       ( b_tdata ),
    .m_axis_result_tvalid ( r_tvalid ),
    .m_axis_result_tdata  ( r_tdata )
);
//------------------------Body---------------------------
assign a_tvalid = 1'b1;
assign a_tdata  = din0;
assign b_tvalid = 1'b1;
assign b_tdata  = din1;
assign dout     = r_tdata;

endmodule
