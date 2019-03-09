onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ADV7611_LLC -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ADV7611_LLC xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ADV7611_LLC.udo}

run -all

endsim

quit -force
