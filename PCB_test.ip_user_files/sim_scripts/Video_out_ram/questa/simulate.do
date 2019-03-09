onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Video_out_ram_opt

do {wave.do}

view wave
view structure
view signals

do {Video_out_ram.udo}

run -all

quit -force
