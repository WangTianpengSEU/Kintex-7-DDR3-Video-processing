vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" \
"E:/VIVADO_17_4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/VIVADO_17_4/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/VIVADO_17_4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" "+incdir+../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC" \
"../../../../PCB_test.srcs/sources_1/ip/ADV7611_LLC/ADV7611_LLC_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"

