vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../ipstatic/hdl/verilog/fpga_test_initialize.v" \
"../../../../fpga_test_initialize_0/sim/fpga_test_initialize_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

