transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/nikgal/Vivado/fpga_in_the_loop/fpga_in_the_loop.cache/compile_simlib/activehdl}
vlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../ipstatic/hdl/verilog/fpga_test_step.v" \
"../../../../fpga_test_step_0_5/sim/fpga_test_step_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

