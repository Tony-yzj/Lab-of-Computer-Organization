vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../OExp01-ALU.srcs/sources_1/ip/SignalExt_32_0/SignalExt_32.v" \
"../../../../OExp01-ALU.srcs/sources_1/ip/SignalExt_32_0/sim/SignalExt_32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

