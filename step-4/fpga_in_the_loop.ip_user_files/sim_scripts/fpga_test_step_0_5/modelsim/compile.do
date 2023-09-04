vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../ipstatic/hdl/verilog/fpga_test_step.v" \
"../../../../fpga_test_step_0_5/sim/fpga_test_step_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

