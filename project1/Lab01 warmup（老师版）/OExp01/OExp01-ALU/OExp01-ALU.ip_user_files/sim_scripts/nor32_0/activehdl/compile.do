vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../OExp01-ALU.srcs/sources_1/ip/nor32_0/nor32.v" \
"../../../../OExp01-ALU.srcs/sources_1/ip/nor32_0/sim/nor32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

