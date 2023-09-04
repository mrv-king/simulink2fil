transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/nikgal/Vivado/fpga_in_the_loop/fpga_in_the_loop.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../ipstatic/hdl/verilog/fpga_test_initialize.v" \
"../../../../fpga_test_initialize_0/sim/fpga_test_initialize_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

