// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Nov  1 20:41:34 2018
// Host        : DESKTOP-AI64EI3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               h:/Desktop/PCB_test_DDR3_30fps_1/PCB_test_DDR3_ok1/PCB_test/PCB_test.srcs/sources_1/ip/Video_in_distribute_ram/Video_in_distribute_ram_stub.v
// Design      : Video_in_distribute_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2017.4" *)
module Video_in_distribute_ram(a, d, dpra, clk, we, dpo)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],d[511:0],dpra[7:0],clk,we,dpo[511:0]" */;
  input [7:0]a;
  input [511:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  output [511:0]dpo;
endmodule
