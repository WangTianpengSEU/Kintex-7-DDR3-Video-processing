onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ADV7611_LLC_opt

do {wave.do}

view wave
view structure
view signals

do {ADV7611_LLC.udo}

run -all

quit -force
