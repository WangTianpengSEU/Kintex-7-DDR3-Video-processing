onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DDR_out_distribute_ram_opt

do {wave.do}

view wave
view structure
view signals

do {DDR_out_distribute_ram.udo}

run -all

quit -force
