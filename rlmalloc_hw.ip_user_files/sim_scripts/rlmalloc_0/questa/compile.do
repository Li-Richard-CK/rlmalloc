vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc_slave_lite_v1_0_S00_AXI.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc_slave_lite_inter_v1_0_S_AXI_INTR.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/sim/rlmalloc_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

