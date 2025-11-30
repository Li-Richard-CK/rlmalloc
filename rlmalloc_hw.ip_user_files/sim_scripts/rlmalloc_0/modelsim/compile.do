vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc_slave_lite_v1_0_S00_AXI.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc_slave_lite_inter_v1_0_S_AXI_INTR.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/sim/rlmalloc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

