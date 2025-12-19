transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_21
vlib activehdl/processing_system7_vip_v1_0_23
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_10
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_35

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 activehdl/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 activehdl/processing_system7_vip_v1_0_23
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_10 activehdl/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 activehdl/axi_register_slice_v2_1_35

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_processing_system7_0_0/sim/rlmalloc_processing_system7_0_0.v" \

vlog -work xlconstant_v1_1_10  -v2k5 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_0/sim/bd_6f37_one_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_1/sim/bd_6f37_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_2/sim/bd_6f37_arinsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_3/sim/bd_6f37_rinsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_4/sim/bd_6f37_awinsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_5/sim/bd_6f37_winsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_6/sim/bd_6f37_binsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_7/sim/bd_6f37_aroutsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_8/sim/bd_6f37_routsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_9/sim/bd_6f37_awoutsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_10/sim/bd_6f37_woutsw_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_11/sim/bd_6f37_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_12/sim/bd_6f37_arni_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_13/sim/bd_6f37_rni_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_14/sim/bd_6f37_awni_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_15/sim/bd_6f37_wni_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_16/sim/bd_6f37_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_17/sim/bd_6f37_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_18/sim/bd_6f37_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_19/sim/bd_6f37_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_20/sim/bd_6f37_s00a2s_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_21/sim/bd_6f37_sarn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_22/sim/bd_6f37_srn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_23/sim/bd_6f37_sawn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_24/sim/bd_6f37_swn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_25/sim/bd_6f37_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_26/sim/bd_6f37_m00s2a_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_27/sim/bd_6f37_m00arn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_28/sim/bd_6f37_m00rn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_29/sim/bd_6f37_m00awn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_30/sim/bd_6f37_m00wn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_31/sim/bd_6f37_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_32/sim/bd_6f37_m00e_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_33/sim/bd_6f37_m01s2a_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_34/sim/bd_6f37_m01arn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_35/sim/bd_6f37_m01rn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_36/sim/bd_6f37_m01awn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_37/sim/bd_6f37_m01wn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_38/sim/bd_6f37_m01bn_0.sv" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/ip/ip_39/sim/bd_6f37_m01e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/bd_0/sim/bd_6f37.v" \

vlog -work axi_register_slice_v2_1_35  -v2k5 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_axi_smc_0/sim/rlmalloc_axi_smc_0.sv" \

vcom -work xil_defaultlib -93  \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_rst_ps7_0_100M_0/sim/rlmalloc_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/ec67/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/6cfa/hdl" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/f0b6/hdl/verilog" "+incdir+../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/d7cf/hdl/rlmalloc_slave_lite_v1_0_S00_AXI.v" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/d7cf/hdl/rlmalloc_slave_lite_inter_v1_0_S_AXI_INTR.v" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ipshared/d7cf/hdl/rlmalloc.v" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_rlmalloc_0_1/sim/rlmalloc_rlmalloc_0_1.v" \
"../../../../rlmalloc_hw.gen/sources_1/bd/rlmalloc/sim/rlmalloc.v" \

vlog -work xil_defaultlib \
"glbl.v"

