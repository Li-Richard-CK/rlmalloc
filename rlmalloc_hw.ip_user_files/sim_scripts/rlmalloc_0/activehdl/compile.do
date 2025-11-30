transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc_slave_lite_v1_0_S00_AXI.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc_slave_lite_inter_v1_0_S_AXI_INTR.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/hdl/rlmalloc.v" \
"../../../../rlmalloc_hw.gen/sources_1/ip/rlmalloc_0/sim/rlmalloc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

