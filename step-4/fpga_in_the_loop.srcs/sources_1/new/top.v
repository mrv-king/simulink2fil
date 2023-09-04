`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 10:24:13 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input CLK100MHZ,
    input switch_ctrl,
    input             cpu_rst_n,
    //input             btnu,
    
    output            eth_mdc,
	inout             eth_mdio,
	output            eth_rstn,
	inout             eth_crsdv,
	inout             eth_rxerr,
	inout  [1:0]      eth_rxd,
	output            eth_txen,
	output [1:0]      eth_txd,
	output            eth_clkin,
	inout             eth_intn,
	
    output reg [15:0] LED
    );
    
    integer i;
    
    reg [7:0] tx_pkt [45:0];
	reg [7:0] tx_idx = 47;
	
	initial begin
		tx_pkt[0]  = 8'h90;
		tx_pkt[1]  = 8'h2e;
		tx_pkt[2]  = 8'h16;
		tx_pkt[3]  = 8'h2e;
		tx_pkt[4]  = 8'h70;
		tx_pkt[5]  = 8'had;
		tx_pkt[6]  = 8'hb8;  
		tx_pkt[7]  = 8'h27;
		tx_pkt[8]  = 8'heb;
		tx_pkt[9]  = 8'h3a;
		tx_pkt[10] = 8'h82;
		tx_pkt[11] = 8'h08;
		tx_pkt[12] = 8'h08;
		tx_pkt[13] = 8'h00;
		
		tx_pkt[14] = 8'h45;
		tx_pkt[15] = 8'h00;
	    tx_pkt[16] = 8'h00;
		tx_pkt[17] = 8'h20;
		tx_pkt[18] = 8'h54;
		tx_pkt[19] = 8'h2d;
	    tx_pkt[20] = 8'h40;
	  	tx_pkt[21] = 8'h00;
		tx_pkt[22] = 8'h40;
	  	tx_pkt[23] = 8'h11;
	    tx_pkt[24] = 8'h50; 
	  	tx_pkt[25] = 8'h96;  
	  	
		tx_pkt[26] = 8'hc0;
	  	tx_pkt[27] = 8'ha8;
		tx_pkt[28] = 8'h0a;
	  	tx_pkt[29] = 8'h5d;
		tx_pkt[30] = 8'hc0;
	  	tx_pkt[31] = 8'ha8;
		tx_pkt[32] = 8'h0a;
	  	tx_pkt[33] = 8'h5c;
	  	
		tx_pkt[34] = 8'hdc;
	  	tx_pkt[35] = 8'hfa;
		tx_pkt[36] = 8'h1f;
	  	tx_pkt[37] = 8'h90;	  	
	    tx_pkt[38] = 8'h00;
        tx_pkt[39] = 8'h0c;      
        tx_pkt[40] = 8'h00;  //3f
        tx_pkt[41] = 8'h00;  //48       
        tx_pkt[42] = 8'h00;
        tx_pkt[43] = 8'h00;       
        tx_pkt[44] = 8'h00;
        tx_pkt[45] = 8'h00;  	
	end

    reg [27:0] counter = 0;
    reg [7:0] state = 0;  
    reg step_start = 0; 
    reg init_start = 0;
    reg CLK10HZ = 0;  
    
    reg update_flag = 0;
    
    wire [63:0] p_fpga_test_B_StateSpace_o1_d0;
    wire [63:0] p_fpga_test_B_StateSpace_o1_d0_step;
    reg  [63:0] p_fpga_test_B_StateSpace_o1_d0_reg;
    
    wire [63:0] p_fpga_test_B_StateSpace_o1_d1;
    wire [63:0] p_fpga_test_B_StateSpace_o1_d1_step;
    reg  [63:0] p_fpga_test_B_StateSpace_o1_d1_reg;
    
    wire [63:0] p_fpga_test_B_LookUpTable;
    wire [63:0] p_fpga_test_B_LookUpTable_step;
    reg  [63:0] p_fpga_test_B_LookUpTable_reg;
    
    wire [63:0] p_fpga_test_B_Derivative;
    wire [63:0] p_fpga_test_B_Derivative_step;
    reg  [63:0] p_fpga_test_B_Derivative_reg;
    
    wire [7:0] p_fpga_test_B_DataTypeConversion1;
    wire [7:0] p_fpga_test_B_DataTypeConversion1_step;
    reg  [7:0] p_fpga_test_B_DataTypeConversion1_reg;
    
    wire [63:0] p_fpga_test_DW_DelayTs_DSTATE;
    wire [63:0] p_fpga_test_DW_DelayTs_DSTATE_step;
    reg  [63:0] p_fpga_test_DW_DelayTs_DSTATE_reg;
    
    wire [63:0] p_fpga_test_DW_DelayTs_DSTATE_f;
    wire [63:0] p_fpga_test_DW_DelayTs_DSTATE_f_step;
    reg  [63:0] p_fpga_test_DW_DelayTs_DSTATE_f_reg;
    
    wire [63:0] p_fpga_test_DW_IC_FirstOutputTime;
    wire [63:0] p_fpga_test_DW_IC_FirstOutputTime_step;
    reg  [63:0] p_fpga_test_DW_IC_FirstOutputTime_reg;
    
    wire [63:0] p_fpga_test_DW_TimeStampA;
    wire [63:0] p_fpga_test_DW_TimeStampA_step;
    reg  [63:0] p_fpga_test_DW_TimeStampA_reg;
    
    wire [63:0] p_fpga_test_DW_LastUAtTimeA;
    wire [63:0] p_fpga_test_DW_LastUAtTimeA_step;
    reg  [63:0] p_fpga_test_DW_LastUAtTimeA_reg;
    
    wire [63:0] p_fpga_test_DW_TimeStampB;
    wire [63:0] p_fpga_test_DW_TimeStampB_step;
    reg  [63:0] p_fpga_test_DW_TimeStampB_reg;
    
    wire [63:0] p_fpga_test_DW_LastUAtTimeB;
    wire [63:0] p_fpga_test_DW_LastUAtTimeB_step;
    reg  [63:0] p_fpga_test_DW_LastUAtTimeB_reg;
    
    wire [831:0] p_fpga_test_DW_StateSpace_PWORK;
    wire [831:0] p_fpga_test_DW_StateSpace_PWORK_step;
    reg  [831:0] p_fpga_test_DW_StateSpace_PWORK_reg;
    
    wire [31:0] p_fpga_test_DW_StateSpace_IWORK_d0;
    wire [31:0] p_fpga_test_DW_StateSpace_IWORK_d0_step;
    reg  [31:0] p_fpga_test_DW_StateSpace_IWORK_d0_reg;
    
    wire [31:0] p_fpga_test_DW_StateSpace_IWORK_d1;
    wire [31:0] p_fpga_test_DW_StateSpace_IWORK_d1_step;
    reg  [31:0] p_fpga_test_DW_StateSpace_IWORK_d1_reg;
    
    wire [7:0] p_fpga_test_DW_u5_Mode;
    wire [7:0] p_fpga_test_DW_u5_Mode_step;
    reg  [7:0] p_fpga_test_DW_u5_Mode_reg;
    
    wire [519:0] p_fpga_test_M;
    wire [519:0] p_fpga_test_M_step;
    reg  [519:0] p_fpga_test_M_reg;
    
    wire [31:0] fpga_test_Y;
    reg  [31:0] fpga_test_Y_reg;
    
    wire [7:0] fpga_test_U;
    
    always @(posedge CLK100MHZ) begin
		//if (counter > 117) begin
		if (counter > 234) begin
            counter <= 0;
            CLK10HZ <= ~CLK10HZ; 	
		end else
		  counter <= counter + 1;
	end
	
	always @(posedge CLK10HZ) begin
	   LED[15] <= ~LED[15];
	
	   case (state)
	       0: begin
	           LED[14:8] = 7'b1111111;  
               step_start = 0; 
               init_start = 1;
               state <= 1;
	       end
	       1: begin
	               LED[14:8] = 7'b0000000; 
	               if (p_fpga_test_B_StateSpace_o1_we0)    
	                   p_fpga_test_B_StateSpace_o1_d0_reg = p_fpga_test_B_StateSpace_o1_d0;
	               if (p_fpga_test_B_StateSpace_o1_we1)
	                   p_fpga_test_B_StateSpace_o1_d1_reg = p_fpga_test_B_StateSpace_o1_d1;
	               if (p_fpga_test_B_LookUpTable_ap_vld)
	                   p_fpga_test_B_LookUpTable_reg = p_fpga_test_B_LookUpTable;
	               if (p_fpga_test_B_Derivative_ap_vld)
	                   p_fpga_test_B_Derivative_reg = p_fpga_test_B_Derivative;    
	               if (p_fpga_test_B_DataTypeConversion1_ap_vld)
	                   p_fpga_test_B_DataTypeConversion1_reg = p_fpga_test_B_DataTypeConversion1;  
	               if (p_fpga_test_DW_DelayTs_DSTATE_ap_vld)
	                   p_fpga_test_DW_DelayTs_DSTATE_reg = p_fpga_test_DW_DelayTs_DSTATE;  
	               if (p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld)
	                   p_fpga_test_DW_DelayTs_DSTATE_f_reg = p_fpga_test_DW_DelayTs_DSTATE_f; 
	               if (p_fpga_test_DW_IC_FirstOutputTime_ap_vld)
	                   p_fpga_test_DW_IC_FirstOutputTime_reg = p_fpga_test_DW_IC_FirstOutputTime;  
	               if (p_fpga_test_DW_TimeStampA_ap_vld)
	                   p_fpga_test_DW_TimeStampA_reg = p_fpga_test_DW_TimeStampA;
	               if (p_fpga_test_DW_LastUAtTimeA_ap_vld)
	                   p_fpga_test_DW_LastUAtTimeA_reg = p_fpga_test_DW_LastUAtTimeA;     
	               if (p_fpga_test_DW_TimeStampB_ap_vld)
	                   p_fpga_test_DW_TimeStampB_reg = p_fpga_test_DW_TimeStampB; 
	               if (p_fpga_test_DW_LastUAtTimeB_ap_vld)
	                   p_fpga_test_DW_LastUAtTimeB_reg = p_fpga_test_DW_LastUAtTimeB; 
	               if (p_fpga_test_DW_StateSpace_PWORK_ap_vld)
	                   p_fpga_test_DW_StateSpace_PWORK_reg = p_fpga_test_DW_StateSpace_PWORK; 
	               if (p_fpga_test_DW_StateSpace_IWORK_we0)
	                   p_fpga_test_DW_StateSpace_IWORK_d0_reg = p_fpga_test_DW_StateSpace_IWORK_d0;
	               if (p_fpga_test_DW_StateSpace_IWORK_we1)
	                   p_fpga_test_DW_StateSpace_IWORK_d1_reg = p_fpga_test_DW_StateSpace_IWORK_d1;
	               if (p_fpga_test_DW_u5_Mode_ap_vld)
	                  p_fpga_test_DW_u5_Mode_reg = p_fpga_test_DW_u5_Mode;  
	               if (p_fpga_test_M_ap_vld)
	                  p_fpga_test_M_reg = p_fpga_test_M;
	                               
	               if (ap_done_init == 1) begin
	                   init_start = 0;
	                   step_start = 1;
	                   LED[14:13] = 2'b01;
	                   state <= 2; 
	               end
	       end
	       2: begin
	               if (p_fpga_test_B_StateSpace_o1_step_we0)   
	                   p_fpga_test_B_StateSpace_o1_d0_reg = p_fpga_test_B_StateSpace_o1_d0_step;
	               if (p_fpga_test_B_StateSpace_o1_step_we1) 
	                   p_fpga_test_B_StateSpace_o1_d1_reg = p_fpga_test_B_StateSpace_o1_d1_step;
	               if (p_fpga_test_B_LookUpTable_ap_step_vld)
	                   p_fpga_test_B_LookUpTable_reg = p_fpga_test_B_LookUpTable_step;
	               if (p_fpga_test_B_Derivative_ap_step_vld)
	                   p_fpga_test_B_Derivative_reg = p_fpga_test_B_Derivative_step;
	               if (p_fpga_test_B_DataTypeConversion1_ap_step_vld)
	                   p_fpga_test_B_DataTypeConversion1_reg = p_fpga_test_B_DataTypeConversion1_step; 
	               if (p_fpga_test_DW_DelayTs_DSTATE_ap_step_vld)
	                   p_fpga_test_DW_DelayTs_DSTATE_reg = p_fpga_test_DW_DelayTs_DSTATE_step;  
	               if (p_fpga_test_DW_DelayTs_DSTATE_f_ap_step_vld)
	                   p_fpga_test_DW_DelayTs_DSTATE_f_reg = p_fpga_test_DW_DelayTs_DSTATE_f_step;
	               if (p_fpga_test_DW_IC_FirstOutputTime_ap_step_vld)
	                   p_fpga_test_DW_IC_FirstOutputTime_reg = p_fpga_test_DW_IC_FirstOutputTime_step;
	               if (p_fpga_test_DW_TimeStampA_ap_step_vld)
	                   p_fpga_test_DW_TimeStampA_reg = p_fpga_test_DW_TimeStampA_step;
	               if (p_fpga_test_DW_LastUAtTimeA_ap_step_vld)
	                   p_fpga_test_DW_LastUAtTimeA_reg = p_fpga_test_DW_LastUAtTimeA_step;    
	               if (p_fpga_test_DW_TimeStampB_ap_step_vld)
	                   p_fpga_test_DW_TimeStampB_reg = p_fpga_test_DW_TimeStampB_step;
	               if (p_fpga_test_DW_LastUAtTimeB_ap_step_vld)
	                   p_fpga_test_DW_LastUAtTimeB_reg = p_fpga_test_DW_LastUAtTimeB_step;
	               if (p_fpga_test_DW_StateSpace_PWORK_ap_step_vld)
	                   p_fpga_test_DW_StateSpace_PWORK_reg = p_fpga_test_DW_StateSpace_PWORK_step;
	               if (p_fpga_test_DW_StateSpace_IWORK_step_we0)
	                   p_fpga_test_DW_StateSpace_IWORK_d0_reg = p_fpga_test_DW_StateSpace_IWORK_d0_step;
	               if (p_fpga_test_DW_StateSpace_IWORK_step_we1)
	                   p_fpga_test_DW_StateSpace_IWORK_d1_reg = p_fpga_test_DW_StateSpace_IWORK_d1_step;
	               if (p_fpga_test_DW_u5_Mode_ap_step_vld)
	                  p_fpga_test_DW_u5_Mode_reg = p_fpga_test_DW_u5_Mode_step;
	               if (fpga_test_M_o_ap_step_vld)
	                  p_fpga_test_M_reg = p_fpga_test_M_step;
	               if (fpga_test_Y_ap_step_vld)
	                  fpga_test_Y_reg = fpga_test_Y;
	                  
	           if (ap_done_step == 1) begin	           
	               LED[14:13] = 2'b10;
	               step_start = 0;
	               LED[7:0] = {fpga_test_Y_reg[31], fpga_test_Y_reg[6:0]};
	               update_flag = 1;
	               state = 3;
	           end
	       end
	       3 : begin
	           update_flag = 0;
	           LED[14:13] = 2'b00;
	           step_start = 1;
	           state = 2;
	       end 
	   endcase    
	end
	
	fpga_test_initialize_0 init (
	.p_fpga_test_B_AC_ap_vld(p_fpga_test_B_AC_ap_vld),
	.p_fpga_test_B_StateSpace_o1_we0(p_fpga_test_B_StateSpace_o1_we0),
	.p_fpga_test_B_StateSpace_o1_we1(p_fpga_test_B_StateSpace_o1_we1),
    .p_fpga_test_B_StateSpace_o2_ap_vld(p_fpga_test_B_StateSpace_o2_ap_vld),
    .p_fpga_test_B_DataTypeConversion2_ap_vld(p_fpga_test_B_DataTypeConversion2_ap_vld),
    .p_fpga_test_B_LookUpTable_ap_vld(p_fpga_test_B_LookUpTable_ap_vld),
    .p_fpga_test_B_IC_ap_vld(p_fpga_test_B_IC_ap_vld),
    .p_fpga_test_B_Derivative_ap_vld(p_fpga_test_B_Derivative_ap_vld),
    .p_fpga_test_B_DataTypeConversion1_ap_vld(p_fpga_test_B_DataTypeConversion1_ap_vld),
    .p_fpga_test_DW_DelayTs_DSTATE_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_ap_vld),
    .p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld),
    .p_fpga_test_DW_IC_FirstOutputTime_ap_vld(p_fpga_test_DW_IC_FirstOutputTime_ap_vld),
    .p_fpga_test_DW_TimeStampA_ap_vld(p_fpga_test_DW_TimeStampA_ap_vld),
    .p_fpga_test_DW_LastUAtTimeA_ap_vld(p_fpga_test_DW_LastUAtTimeA_ap_vld),
    .p_fpga_test_DW_TimeStampB_ap_vld(p_fpga_test_DW_TimeStampB_ap_vld),
    .p_fpga_test_DW_LastUAtTimeB_ap_vld(p_fpga_test_DW_LastUAtTimeB_ap_vld),
    .p_fpga_test_DW_StateSpace_PWORK_ap_vld(p_fpga_test_DW_StateSpace_PWORK_ap_vld),
    .p_fpga_test_DW_StateSpace_IWORK_we0(p_fpga_test_DW_StateSpace_IWORK_we0),
    .p_fpga_test_DW_StateSpace_IWORK_we1(p_fpga_test_DW_StateSpace_IWORK_we1),
    .p_fpga_test_DW_u5_Mode_ap_vld(p_fpga_test_DW_u5_Mode_ap_vld),
    .p_fpga_test_M_ap_vld(p_fpga_test_M_ap_vld),
	
    .ap_clk(ap_clk_init),
    .ap_start(init_start),
    .ap_done(ap_done_init),
    .p_fpga_test_B_StateSpace_o1_d0(p_fpga_test_B_StateSpace_o1_d0),
    .p_fpga_test_B_StateSpace_o1_d1(p_fpga_test_B_StateSpace_o1_d1),
    .p_fpga_test_B_LookUpTable(p_fpga_test_B_LookUpTable),
    .p_fpga_test_B_Derivative(p_fpga_test_B_Derivative),
    .p_fpga_test_B_DataTypeConversion1(p_fpga_test_B_DataTypeConversion1),
    .p_fpga_test_DW_DelayTs_DSTATE(p_fpga_test_DW_DelayTs_DSTATE),
    .p_fpga_test_DW_DelayTs_DSTATE_f(p_fpga_test_DW_DelayTs_DSTATE_f),
    .p_fpga_test_DW_IC_FirstOutputTime(p_fpga_test_DW_IC_FirstOutputTime),
    .p_fpga_test_DW_TimeStampA(p_fpga_test_DW_TimeStampA),
    .p_fpga_test_DW_LastUAtTimeA(p_fpga_test_DW_LastUAtTimeA),
    .p_fpga_test_DW_TimeStampB(p_fpga_test_DW_TimeStampB),
    .p_fpga_test_DW_LastUAtTimeB(p_fpga_test_DW_LastUAtTimeB),
    .p_fpga_test_DW_StateSpace_PWORK(p_fpga_test_DW_StateSpace_PWORK),
    .p_fpga_test_DW_StateSpace_IWORK_d0(p_fpga_test_DW_StateSpace_IWORK_d0),
    .p_fpga_test_DW_StateSpace_IWORK_d1(p_fpga_test_DW_StateSpace_IWORK_d1),
    .p_fpga_test_DW_u5_Mode(p_fpga_test_DW_u5_Mode),
    .p_fpga_test_M(p_fpga_test_M)
  );
 
  fpga_test_step_0 step (
    .fpga_test_Y_ap_vld(fpga_test_Y_ap_step_vld),
    .p_fpga_test_B_AC_ap_vld(p_fpga_test_B_AC_ap_step_vld),
    .p_fpga_test_B_StateSpace_o1_we0(p_fpga_test_B_StateSpace_o1_step_we0),
    .p_fpga_test_B_StateSpace_o1_we1(p_fpga_test_B_StateSpace_o1_step_we1),
    .p_fpga_test_B_StateSpace_o2_ap_vld(p_fpga_test_B_StateSpace_o2_ap_step_vld),
    .p_fpga_test_B_DataTypeConversion2_ap_vld(p_fpga_test_B_DataTypeConversion2_ap_step_vld),
    .p_fpga_test_B_LookUpTable_ap_vld(p_fpga_test_B_LookUpTable_ap_step_vld),
    .p_fpga_test_B_IC_ap_vld(p_fpga_test_B_IC_ap_step_vld),
    .p_fpga_test_B_Derivative_ap_vld(p_fpga_test_B_Derivative_ap_step_vld),
    .p_fpga_test_B_DataTypeConversion1_ap_vld(p_fpga_test_B_DataTypeConversion1_ap_step_vld),
    .p_fpga_test_DW_DelayTs_DSTATE_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_ap_step_vld),
    .p_fpga_test_DW_DelayTs_DSTATE_f_ap_vld(p_fpga_test_DW_DelayTs_DSTATE_f_ap_step_vld),
    .p_fpga_test_DW_IC_FirstOutputTime_ap_vld(p_fpga_test_DW_IC_FirstOutputTime_ap_step_vld),
    .p_fpga_test_DW_TimeStampA_ap_vld(p_fpga_test_DW_TimeStampA_ap_step_vld),
    .p_fpga_test_DW_LastUAtTimeA_ap_vld(p_fpga_test_DW_LastUAtTimeA_ap_step_vld),
    .p_fpga_test_DW_TimeStampB_ap_vld(p_fpga_test_DW_TimeStampB_ap_step_vld),
    .p_fpga_test_DW_LastUAtTimeB_ap_vld(p_fpga_test_DW_LastUAtTimeB_ap_step_vld),
    .p_fpga_test_DW_StateSpace_PWORK_ap_vld(p_fpga_test_DW_StateSpace_PWORK_ap_step_vld),
    .p_fpga_test_DW_StateSpace_IWORK_we0(p_fpga_test_DW_StateSpace_IWORK_step_we0),
    .p_fpga_test_DW_StateSpace_IWORK_we1(p_fpga_test_DW_StateSpace_IWORK_step_we1),
    .p_fpga_test_DW_u5_Mode_ap_vld(p_fpga_test_DW_u5_Mode_ap_step_vld),
    .fpga_test_M_o_ap_vld(fpga_test_M_o_ap_step_vld),
  
    .ap_clk(ap_clk_step),
    .ap_start(step_start),
    .ap_done(ap_done_step),
    .ap_ready(ap_ready),
    .fpga_test_U(fpga_test_U),
    .fpga_test_Y(fpga_test_Y),
    .fpga_test_B_StateSpace_o1_q0(p_fpga_test_B_StateSpace_o1_d0_reg),
    .fpga_test_B_LookUpTable(p_fpga_test_B_LookUpTable_reg),
    .fpga_test_B_Derivative(p_fpga_test_B_Derivative_reg),
    .fpga_test_B_DataTypeConversion1(p_fpga_test_B_DataTypeConversion1_reg),
    .p_fpga_test_B_AC(p_fpga_test_B_AC_step),
    .p_fpga_test_B_StateSpace_o1_d0(p_fpga_test_B_StateSpace_o1_d0_step),
    .p_fpga_test_B_StateSpace_o1_d1(p_fpga_test_B_StateSpace_o1_d1_step),
    .p_fpga_test_B_StateSpace_o2(p_fpga_test_B_StateSpace_o2_step),
    .p_fpga_test_B_DataTypeConversion2(p_fpga_test_B_DataTypeConversion2_step),
    .p_fpga_test_B_LookUpTable(p_fpga_test_B_LookUpTable_step),
    .p_fpga_test_B_IC(p_fpga_test_B_IC_step),
    .p_fpga_test_B_Derivative(p_fpga_test_B_Derivative_step),
    .p_fpga_test_B_DataTypeConversion1(p_fpga_test_B_DataTypeConversion1_step),
    .fpga_test_DW_DelayTs_DSTATE(p_fpga_test_DW_DelayTs_DSTATE_reg),
    .fpga_test_DW_DelayTs_DSTATE_f(p_fpga_test_DW_DelayTs_DSTATE_f_reg),
    .fpga_test_DW_IC_FirstOutputTime(p_fpga_test_DW_IC_FirstOutputTime_reg),
    .fpga_test_DW_TimeStampA(p_fpga_test_DW_TimeStampA_reg),
    .fpga_test_DW_LastUAtTimeA(p_fpga_test_DW_LastUAtTimeA_reg),
    .fpga_test_DW_TimeStampB(p_fpga_test_DW_TimeStampB_reg),
    .fpga_test_DW_LastUAtTimeB(p_fpga_test_DW_LastUAtTimeB_reg),
    .fpga_test_DW_StateSpace_PWORK(p_fpga_test_DW_StateSpace_PWORK_reg),
    .fpga_test_DW_StateSpace_IWORK_q0(p_fpga_test_DW_StateSpace_IWORK_d0_reg),
    .fpga_test_DW_StateSpace_IWORK_q1(p_fpga_test_DW_StateSpace_IWORK_d1_reg),
    .fpga_test_DW_u5_Mode(p_fpga_test_DW_u5_Mode_reg),
    .p_fpga_test_DW_DelayTs_DSTATE(p_fpga_test_DW_DelayTs_DSTATE_step),
    .p_fpga_test_DW_DelayTs_DSTATE_f(p_fpga_test_DW_DelayTs_DSTATE_f_step),
    .p_fpga_test_DW_IC_FirstOutputTime(p_fpga_test_DW_IC_FirstOutputTime_step),
    .p_fpga_test_DW_TimeStampA(p_fpga_test_DW_TimeStampA_step),
    .p_fpga_test_DW_LastUAtTimeA(p_fpga_test_DW_LastUAtTimeA_step),
    .p_fpga_test_DW_TimeStampB(p_fpga_test_DW_TimeStampB_step),
    .p_fpga_test_DW_LastUAtTimeB(p_fpga_test_DW_LastUAtTimeB_step),
    .p_fpga_test_DW_StateSpace_PWORK(p_fpga_test_DW_StateSpace_PWORK_step),
    .p_fpga_test_DW_StateSpace_IWORK_d0(p_fpga_test_DW_StateSpace_IWORK_d0_step),
    .p_fpga_test_DW_StateSpace_IWORK_d1(p_fpga_test_DW_StateSpace_IWORK_d1_step),
    .p_fpga_test_DW_u5_Mode(p_fpga_test_DW_u5_Mode_step),
    .fpga_test_M_i(p_fpga_test_M_reg),
    .fpga_test_M_o(p_fpga_test_M_step)
  );
  
  	assign ap_clk_init = (state == 1) ? CLK10HZ : 0;
	assign ap_clk_step = (state == 2) ? CLK10HZ : 0;  
    assign fpga_test_U = {switch_ctrl, 7'b0000000};
  
  wire clk_mac;
  wire clk_phy;
  wire clk_fb;
  wire pll_locked;
  
  PLLE2_BASE#
  (
	.CLKFBOUT_MULT (10),
	.CLKOUT0_DIVIDE(20),
	.CLKOUT1_DIVIDE(20),
	.CLKOUT1_PHASE (45.0),
	.CLKIN1_PERIOD (10.0)
  )
  clk_gen 
  (
	.CLKOUT0 (clk_mac),
	.CLKOUT1 (clk_phy),
	.CLKFBOUT(clk_fb),
	.LOCKED  (pll_locked),
	.CLKIN1  (CLK100MHZ),
	.RST     (1'b0),
	.CLKFBIN (clk_fb)
  );
  
  	reg rst_n = 0;
	reg [15:0] rst_n_counter = 0;
	always @(posedge clk_mac) begin
		rst_n         <= (rst_n || &rst_n_counter) && pll_locked && cpu_rst_n;
		rst_n_counter <= rst_n ? 0 : rst_n_counter + 1;
	end
    
	wire [7:0]  rx_axis_mac_tdata;
	wire        rx_axis_mac_tvalid;
	wire        rx_axis_mac_tlast;
	wire        rx_axis_mac_tuser;
	reg [7:0]   tx_axis_mac_tdata;
	reg         tx_axis_mac_tvalid;
	reg         tx_axis_mac_tlast;
	wire        tx_axis_mac_tready;
	reg         reg_vld = 0;
	reg  [4:0]  reg_addr;
	reg         reg_write;
	reg  [15:0] reg_wval;
	wire [15:0] reg_rval;
	wire        reg_ack;
	
  eth_mac#(1) mac_inst
	(
		.clk_mac    (clk_mac),
		.clk_phy    (clk_phy),
		.rst_n      (rst_n),
		.mode_straps(3'b111),
	
		.eth_mdc  (eth_mdc),
		.eth_mdio (eth_mdio),
		.eth_rstn (eth_rstn),
		.eth_crsdv(eth_crsdv),
		.eth_rxerr(eth_rxerr),
		.eth_rxd  (eth_rxd),
		.eth_txen (eth_txen),
		.eth_txd  (eth_txd),
		.eth_clkin(eth_clkin),
		.eth_intn (eth_intn),
		
		.rx_axis_mac_tdata (rx_axis_mac_tdata),
		.rx_axis_mac_tvalid(rx_axis_mac_tvalid),
		.rx_axis_mac_tlast (rx_axis_mac_tlast),
		.rx_axis_mac_tuser (rx_axis_mac_tuser),
		.tx_axis_mac_tdata (tx_axis_mac_tdata),
		.tx_axis_mac_tvalid(tx_axis_mac_tvalid),
		.tx_axis_mac_tlast (tx_axis_mac_tlast),
		.tx_axis_mac_tready(tx_axis_mac_tready),
		
		.reg_vld  (reg_vld),
		.reg_addr (reg_addr),
		.reg_write(reg_write),
		.reg_wval (reg_wval),
		.reg_rval (reg_rval),
		.reg_ack  (reg_ack)
	);

	reg one_shot = 0;
	reg[31:0] checksum = 0;
	
	always @(posedge clk_mac) begin
		if((update_flag == 1) && (one_shot == 0)) begin
		//if (btnu_d) begin
			tx_idx             <= 0;
			tx_axis_mac_tdata  <= tx_pkt[0];
			tx_axis_mac_tvalid <= 1;
			tx_axis_mac_tlast  <= 0;
			tx_pkt[40] = 0;
			tx_pkt[41] = 0;
	  	    tx_pkt[45] = {fpga_test_Y_reg[31], fpga_test_Y_reg[6:0]};
	  	    checksum = checksum + {8'h00, tx_pkt[23]};
	  	    checksum = checksum + {tx_pkt[38], tx_pkt[39]};
	  	    for (i = 26; i < 46; i = i + 2) begin
	  	        checksum = checksum + {tx_pkt[i], tx_pkt[i+1]};
	  	    end
	  	    checksum = checksum[31:16] + checksum[15:0];
	  	    checksum = ~checksum;
	  	    tx_pkt[40] = checksum[15:8];
			tx_pkt[41] = checksum[7:0];
			checksum = 0;
			one_shot = 1;
		end else if(tx_idx < 46) begin
			tx_axis_mac_tvalid <= 1;
			tx_axis_mac_tdata  <= tx_pkt[tx_idx + tx_axis_mac_tready];
			tx_axis_mac_tlast  <= (tx_idx + tx_axis_mac_tready) == 45;
			tx_idx             <= tx_idx + tx_axis_mac_tready;
		end else begin
			tx_axis_mac_tvalid <= 0;		
	    end
	    
	    if (update_flag == 0)
	       one_shot = 0;  
	end
	
	localparam STATE_RST       = 0;
	localparam STATE_IDLE      = 1;
	localparam STATE_CHECK_REG = 2;
	
	reg [2:0]  state_eth, next_state;
	reg [20:0] count = 0;
	
	always @(posedge clk_mac) begin
		state_eth <= rst_n ? next_state : STATE_RST;
		count <= count + 1;
	end
	
	always @* begin
		next_state = state_eth;
		reg_vld    = 0;
		reg_write  = 0;
		reg_addr   = 0;
		reg_wval   = 0;
		
		case(state_eth)
			STATE_RST: begin
				next_state = STATE_IDLE;
			end STATE_IDLE: begin
				if(&count)
					next_state = STATE_CHECK_REG;
			end STATE_CHECK_REG: begin
				reg_vld  = 1;
				if(reg_ack) begin
					next_state = STATE_IDLE;
				end
			end
		endcase
	end
endmodule
