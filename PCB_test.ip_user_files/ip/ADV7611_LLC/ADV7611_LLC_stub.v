// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Oct 29 18:35:33 2018
// Host        : DESKTOP-AI64EI3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               h:/Desktop/Video_new_PCB/PCB_test_project/PCB_test_DDR3_ok1/PCB_test/PCB_test.srcs/sources_1/ip/ADV7611_LLC/ADV7611_LLC_stub.v
// Design      : ADV7611_LLC
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ADV7611_LLC(clk_out1, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_in1" */;
  output clk_out1;
  input clk_in1;
endmodule
