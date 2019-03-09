// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Nov  5 18:20:38 2018
// Host        : DESKTOP-AI64EI3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               H:/Desktop/Code_copy/PCB_test_60fps_1/PCB_test.srcs/sources_1/ip/Video_out_ram/Video_out_ram_stub.v
// Design      : Video_out_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module Video_out_ram(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[7:0],dina[511:0],clkb,addrb[10:0],doutb[63:0]" */;
  input clka;
  input [0:0]wea;
  input [7:0]addra;
  input [511:0]dina;
  input clkb;
  input [10:0]addrb;
  output [63:0]doutb;
endmodule
