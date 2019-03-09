vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" \
"E:/VIVADO_17_4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/VIVADO_17_4/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/VIVADO_17_4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" \
"../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC/ADV7611_LLC_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"
