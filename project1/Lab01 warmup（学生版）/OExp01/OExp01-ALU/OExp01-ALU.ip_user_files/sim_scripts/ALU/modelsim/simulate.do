onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlslice_v1_0_1 -L xlconstant_v1_1_3 -L xlconcat_v2_1_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.ALU xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {ALU.udo}

run -all

quit -force
