-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Dec 26 23:14:24 2025
-- Host        : Richard running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/liric/Research/rlmalloc/rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_rlmalloc_top_0_1/rlmalloc_rlmalloc_top_0_1_sim_netlist.vhdl
-- Design      : rlmalloc_rlmalloc_top_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rlmalloc_rlmalloc_top_0_1_rlmalloc_top_sv is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    irq : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rlmalloc_rlmalloc_top_0_1_rlmalloc_top_sv : entity is "rlmalloc_top_sv";
end rlmalloc_rlmalloc_top_0_1_rlmalloc_top_sv;

architecture STRUCTURE of rlmalloc_rlmalloc_top_0_1_rlmalloc_top_sv is
  component rlmalloc_rlmalloc_top_0_1_malloc is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    start : in STD_LOGIC;
    op : in STD_LOGIC;
    size_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    busy : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    error : out STD_LOGIC
  );
  end component rlmalloc_rlmalloc_top_0_1_malloc;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \araddr_skid[2]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_skid[3]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_skid[4]_i_1_n_0\ : STD_LOGIC;
  signal arvalid_skid : STD_LOGIC;
  signal arvalid_skid1 : STD_LOGIC;
  signal arvalid_skid_i_1_n_0 : STD_LOGIC;
  signal \awaddr_skid[2]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_skid[3]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_skid[4]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_skid_reg_n_0_[2]\ : STD_LOGIC;
  signal \awaddr_skid_reg_n_0_[3]\ : STD_LOGIC;
  signal \awaddr_skid_reg_n_0_[4]\ : STD_LOGIC;
  signal awvalid_skid : STD_LOGIC;
  signal awvalid_skid1 : STD_LOGIC;
  signal awvalid_skid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid04_out : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid01_out : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal core_busy : STD_LOGIC;
  signal core_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal core_error : STD_LOGIC;
  signal core_op : STD_LOGIC;
  signal \^irq\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg_control : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \slv_reg_control[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_control[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg_control[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg_control[7]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg_control_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_free_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_free_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_free_addr[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_free_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_free_addr[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_free_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_size : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_size[31]_i_2_n_0\ : STD_LOGIC;
  signal wdata_skid : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal write_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wstrb_skid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wstrb_skid[3]_i_1_n_0\ : STD_LOGIC;
  signal wvalid_skid : STD_LOGIC;
  signal wvalid_skid1 : STD_LOGIC;
  signal wvalid_skid_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg_control[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg_control[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg_control[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg_control[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg_control[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg_control[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg_control[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg_control[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg_control[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg_control[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg_control[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg_control[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg_control[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg_control[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg_control[23]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg_control[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg_control[25]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg_control[26]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg_control[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg_control[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg_control[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg_control[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg_control[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg_control[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg_control[31]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg_control[31]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg_control[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg_control[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg_control[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg_control[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg_control[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg_control[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg_control[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg_control[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg_control[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg_free_addr[31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg_size[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg_size[31]_i_2\ : label is "soft_lutpair2";
  attribute C_S_AXI_DATA_WIDTH : string;
  attribute C_S_AXI_DATA_WIDTH of u_malloc_core : label is "32";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  irq <= \^irq\;
\araddr_skid[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => arvalid_skid,
      I2 => S_AXI_ARVALID,
      I3 => \^s_axi_arready\,
      I4 => S_AXI_ARESETN,
      I5 => sel0(0),
      O => \araddr_skid[2]_i_1_n_0\
    );
\araddr_skid[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => arvalid_skid,
      I2 => S_AXI_ARVALID,
      I3 => \^s_axi_arready\,
      I4 => S_AXI_ARESETN,
      I5 => sel0(1),
      O => \araddr_skid[3]_i_1_n_0\
    );
\araddr_skid[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => arvalid_skid,
      I2 => S_AXI_ARVALID,
      I3 => \^s_axi_arready\,
      I4 => S_AXI_ARESETN,
      I5 => sel0(2),
      O => \araddr_skid[4]_i_1_n_0\
    );
\araddr_skid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \araddr_skid[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\araddr_skid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \araddr_skid[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\araddr_skid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \araddr_skid[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
arvalid_skid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7200"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => arvalid_skid,
      I3 => S_AXI_ARESETN,
      O => arvalid_skid_i_1_n_0
    );
arvalid_skid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => arvalid_skid_i_1_n_0,
      Q => arvalid_skid,
      R => '0'
    );
\awaddr_skid[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => awvalid_skid,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_ARESETN,
      I5 => \awaddr_skid_reg_n_0_[2]\,
      O => \awaddr_skid[2]_i_1_n_0\
    );
\awaddr_skid[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => awvalid_skid,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_ARESETN,
      I5 => \awaddr_skid_reg_n_0_[3]\,
      O => \awaddr_skid[3]_i_1_n_0\
    );
\awaddr_skid[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => awvalid_skid,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_ARESETN,
      I5 => \awaddr_skid_reg_n_0_[4]\,
      O => \awaddr_skid[4]_i_1_n_0\
    );
\awaddr_skid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \awaddr_skid[2]_i_1_n_0\,
      Q => \awaddr_skid_reg_n_0_[2]\,
      R => '0'
    );
\awaddr_skid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \awaddr_skid[3]_i_1_n_0\,
      Q => \awaddr_skid_reg_n_0_[3]\,
      R => '0'
    );
\awaddr_skid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \awaddr_skid[4]_i_1_n_0\,
      Q => \awaddr_skid_reg_n_0_[4]\,
      R => '0'
    );
awvalid_skid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A08"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      I3 => awvalid_skid,
      O => awvalid_skid_i_1_n_0
    );
awvalid_skid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => awvalid_skid_i_1_n_0,
      Q => awvalid_skid,
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arvalid_skid,
      O => arvalid_skid1
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => arvalid_skid1,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => awvalid_skid,
      O => awvalid_skid1
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => awvalid_skid1,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7774777477744444"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid\,
      I2 => awvalid_skid,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => wvalid_skid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00AEAEAE00AE00"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      I2 => S_AXI_ARADDR(2),
      I3 => \axi_rdata[0]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[0]_i_5_n_0\,
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABAAABABAAAAAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(1),
      I2 => S_AXI_ARADDR(2),
      I3 => S_AXI_ARADDR(0),
      I4 => core_error,
      I5 => core_data_out(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^irq\,
      I1 => slv_reg_free_addr(0),
      I2 => S_AXI_ARADDR(1),
      I3 => slv_reg_size(0),
      I4 => S_AXI_ARADDR(0),
      I5 => \slv_reg_control_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44044000FFFFFFFF"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => core_error,
      I4 => core_data_out(0),
      I5 => arvalid_skid,
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^irq\,
      I1 => slv_reg_free_addr(0),
      I2 => sel0(1),
      I3 => slv_reg_size(0),
      I4 => sel0(0),
      I5 => \slv_reg_control_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(10),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[10]_i_2_n_0\,
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[10]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(10),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(10),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[10]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(10),
      I5 => sel0(0),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[10]\,
      I2 => sel0(0),
      I3 => slv_reg_size(10),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(10),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(11),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[11]_i_2_n_0\,
      I5 => \axi_rdata[11]_i_3_n_0\,
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[11]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(11),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(11),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[11]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(11),
      I5 => sel0(0),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[11]\,
      I2 => sel0(0),
      I3 => slv_reg_size(11),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(11),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(12),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[12]_i_2_n_0\,
      I5 => \axi_rdata[12]_i_3_n_0\,
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[12]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(12),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(12),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[12]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(12),
      I5 => sel0(0),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[12]\,
      I2 => sel0(0),
      I3 => slv_reg_size(12),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(12),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(13),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[13]_i_2_n_0\,
      I5 => \axi_rdata[13]_i_3_n_0\,
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[13]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(13),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(13),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[13]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(13),
      I5 => sel0(0),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[13]\,
      I2 => sel0(0),
      I3 => slv_reg_size(13),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(14),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[14]_i_2_n_0\,
      I5 => \axi_rdata[14]_i_3_n_0\,
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[14]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(14),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(14),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[14]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(14),
      I5 => sel0(0),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[14]\,
      I2 => sel0(0),
      I3 => slv_reg_size(14),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(14),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(15),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[15]_i_2_n_0\,
      I5 => \axi_rdata[15]_i_3_n_0\,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[15]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(15),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(15),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[15]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(15),
      I5 => sel0(0),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[15]\,
      I2 => sel0(0),
      I3 => slv_reg_size(15),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(15),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(16),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[16]_i_2_n_0\,
      I5 => \axi_rdata[16]_i_3_n_0\,
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[16]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(16),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(16),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[16]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(16),
      I5 => sel0(0),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[16]\,
      I2 => sel0(0),
      I3 => slv_reg_size(16),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(16),
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(17),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[17]_i_2_n_0\,
      I5 => \axi_rdata[17]_i_3_n_0\,
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[17]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(17),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(17),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[17]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(17),
      I5 => sel0(0),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[17]\,
      I2 => sel0(0),
      I3 => slv_reg_size(17),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(17),
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(18),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[18]_i_2_n_0\,
      I5 => \axi_rdata[18]_i_3_n_0\,
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[18]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(18),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(18),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[18]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(18),
      I5 => sel0(0),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[18]\,
      I2 => sel0(0),
      I3 => slv_reg_size(18),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(18),
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(19),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[19]_i_2_n_0\,
      I5 => \axi_rdata[19]_i_3_n_0\,
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[19]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(19),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(19),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[19]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(19),
      I5 => sel0(0),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[19]\,
      I2 => sel0(0),
      I3 => slv_reg_size(19),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(19),
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00AEAEAE00AE00"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      I2 => S_AXI_ARADDR(2),
      I3 => \axi_rdata[1]_i_4_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[1]_i_5_n_0\,
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(1),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => core_busy,
      I1 => slv_reg_free_addr(1),
      I2 => S_AXI_ARADDR(1),
      I3 => slv_reg_size(1),
      I4 => S_AXI_ARADDR(0),
      I5 => core_op,
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0040FFFF"
    )
        port map (
      I0 => sel0(0),
      I1 => core_data_out(1),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => arvalid_skid,
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => core_busy,
      I1 => slv_reg_free_addr(1),
      I2 => sel0(1),
      I3 => slv_reg_size(1),
      I4 => sel0(0),
      I5 => core_op,
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(20),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[20]_i_2_n_0\,
      I5 => \axi_rdata[20]_i_3_n_0\,
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[20]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(20),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(20),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[20]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(20),
      I5 => sel0(0),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[20]\,
      I2 => sel0(0),
      I3 => slv_reg_size(20),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(20),
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(21),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[21]_i_2_n_0\,
      I5 => \axi_rdata[21]_i_3_n_0\,
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[21]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(21),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(21),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[21]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(21),
      I5 => sel0(0),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[21]\,
      I2 => sel0(0),
      I3 => slv_reg_size(21),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(21),
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(22),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[22]_i_2_n_0\,
      I5 => \axi_rdata[22]_i_3_n_0\,
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[22]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(22),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(22),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[22]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(22),
      I5 => sel0(0),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[22]\,
      I2 => sel0(0),
      I3 => slv_reg_size(22),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(22),
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(23),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[23]_i_2_n_0\,
      I5 => \axi_rdata[23]_i_3_n_0\,
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[23]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(23),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(23),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[23]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(23),
      I5 => sel0(0),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[23]\,
      I2 => sel0(0),
      I3 => slv_reg_size(23),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(23),
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(24),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[24]_i_2_n_0\,
      I5 => \axi_rdata[24]_i_3_n_0\,
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[24]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(24),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(24),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[24]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(24),
      I5 => sel0(0),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[24]\,
      I2 => sel0(0),
      I3 => slv_reg_size(24),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(24),
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(25),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[25]_i_2_n_0\,
      I5 => \axi_rdata[25]_i_3_n_0\,
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[25]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(25),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(25),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[25]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(25),
      I5 => sel0(0),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[25]\,
      I2 => sel0(0),
      I3 => slv_reg_size(25),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(25),
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(26),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[26]_i_2_n_0\,
      I5 => \axi_rdata[26]_i_3_n_0\,
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[26]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(26),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(26),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[26]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(26),
      I5 => sel0(0),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[26]\,
      I2 => sel0(0),
      I3 => slv_reg_size(26),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(26),
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(27),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[27]_i_2_n_0\,
      I5 => \axi_rdata[27]_i_3_n_0\,
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[27]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(27),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(27),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[27]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(27),
      I5 => sel0(0),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[27]\,
      I2 => sel0(0),
      I3 => slv_reg_size(27),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(27),
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(28),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[28]_i_2_n_0\,
      I5 => \axi_rdata[28]_i_3_n_0\,
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[28]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(28),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(28),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[28]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(28),
      I5 => sel0(0),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[28]\,
      I2 => sel0(0),
      I3 => slv_reg_size(28),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(28),
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(29),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[29]_i_2_n_0\,
      I5 => \axi_rdata[29]_i_3_n_0\,
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[29]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(29),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(29),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[29]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(29),
      I5 => sel0(0),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[29]\,
      I2 => sel0(0),
      I3 => slv_reg_size(29),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(29),
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(2),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[2]_i_2_n_0\,
      I5 => \axi_rdata[2]_i_3_n_0\,
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[2]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(2),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(2),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[2]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(2),
      I5 => sel0(0),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[2]\,
      I2 => sel0(0),
      I3 => slv_reg_size(2),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(30),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[30]_i_2_n_0\,
      I5 => \axi_rdata[30]_i_3_n_0\,
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[30]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(30),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(30),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[30]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(30),
      I5 => sel0(0),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[30]\,
      I2 => sel0(0),
      I3 => slv_reg_size(30),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(30),
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      O => axi_rvalid01_out
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(31),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[31]_i_4_n_0\,
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARADDR(1),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[31]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(31),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(31),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[31]_i_6_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(31),
      I5 => sel0(0),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[31]\,
      I2 => sel0(0),
      I3 => slv_reg_size(31),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(31),
      O => \axi_rdata[31]_i_6_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(3),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[3]_i_2_n_0\,
      I5 => \axi_rdata[3]_i_3_n_0\,
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[3]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(3),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(3),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[3]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(3),
      I5 => sel0(0),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[3]\,
      I2 => sel0(0),
      I3 => slv_reg_size(3),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(4),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[4]_i_2_n_0\,
      I5 => \axi_rdata[4]_i_3_n_0\,
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[4]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(4),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(4),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[4]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(4),
      I5 => sel0(0),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[4]\,
      I2 => sel0(0),
      I3 => slv_reg_size(4),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(4),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(5),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[5]_i_2_n_0\,
      I5 => \axi_rdata[5]_i_3_n_0\,
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[5]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(5),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(5),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[5]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(5),
      I5 => sel0(0),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[5]\,
      I2 => sel0(0),
      I3 => slv_reg_size(5),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(5),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(6),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[6]_i_2_n_0\,
      I5 => \axi_rdata[6]_i_3_n_0\,
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[6]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(6),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(6),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[6]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(6),
      I5 => sel0(0),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[6]\,
      I2 => sel0(0),
      I3 => slv_reg_size(6),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(6),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(7),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[7]_i_2_n_0\,
      I5 => \axi_rdata[7]_i_3_n_0\,
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[7]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(7),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(7),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[7]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(7),
      I5 => sel0(0),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[7]\,
      I2 => sel0(0),
      I3 => slv_reg_size(7),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(8),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[8]_i_2_n_0\,
      I5 => \axi_rdata[8]_i_3_n_0\,
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[8]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(8),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(8),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[8]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(8),
      I5 => sel0(0),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[8]\,
      I2 => sel0(0),
      I3 => slv_reg_size(8),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(8),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => arvalid_skid,
      I1 => S_AXI_ARADDR(0),
      I2 => core_data_out(9),
      I3 => \axi_rdata[31]_i_3_n_0\,
      I4 => \axi_rdata[9]_i_2_n_0\,
      I5 => \axi_rdata[9]_i_3_n_0\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[9]\,
      I1 => S_AXI_ARADDR(0),
      I2 => slv_reg_size(9),
      I3 => S_AXI_ARADDR(1),
      I4 => slv_reg_free_addr(9),
      I5 => S_AXI_ARADDR(2),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880888888"
    )
        port map (
      I0 => \axi_rdata[9]_i_4_n_0\,
      I1 => arvalid_skid,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => core_data_out(9),
      I5 => sel0(0),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg_control_reg_n_0_[9]\,
      I2 => sel0(0),
      I3 => slv_reg_size(9),
      I4 => sel0(1),
      I5 => slv_reg_free_addr(9),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => S_AXI_RDATA(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => S_AXI_RDATA(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => S_AXI_RDATA(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => S_AXI_RDATA(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => S_AXI_RDATA(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => S_AXI_RDATA(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => S_AXI_RDATA(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => S_AXI_RDATA(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => S_AXI_RDATA(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => S_AXI_RDATA(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => S_AXI_RDATA(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => S_AXI_RDATA(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => S_AXI_RDATA(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => S_AXI_RDATA(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => S_AXI_RDATA(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => S_AXI_RDATA(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => S_AXI_RDATA(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => S_AXI_RDATA(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => S_AXI_RDATA(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => S_AXI_RDATA(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => S_AXI_RDATA(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => S_AXI_RDATA(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => S_AXI_RDATA(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => S_AXI_RDATA(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => S_AXI_RDATA(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => S_AXI_RDATA(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => S_AXI_RDATA(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => S_AXI_RDATA(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => S_AXI_RDATA(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => S_AXI_RDATA(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => S_AXI_RDATA(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rvalid01_out,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => S_AXI_RDATA(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7774"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^s_axi_rvalid\,
      I2 => S_AXI_ARVALID,
      I3 => arvalid_skid,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wvalid_skid,
      O => wvalid_skid1
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => wvalid_skid1,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\slv_reg_control[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \slv_reg_control_reg_n_0_[0]\,
      I1 => slv_reg_control(7),
      I2 => write_data(0),
      I3 => S_AXI_ARESETN,
      I4 => \^irq\,
      O => \slv_reg_control[0]_i_1_n_0\
    );
\slv_reg_control[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(10),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(10),
      O => write_data(10)
    );
\slv_reg_control[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(11),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(11),
      O => write_data(11)
    );
\slv_reg_control[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(12),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(12),
      O => write_data(12)
    );
\slv_reg_control[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(13),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(13),
      O => write_data(13)
    );
\slv_reg_control[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(14),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(14),
      O => write_data(14)
    );
\slv_reg_control[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \slv_reg_control[31]_i_3_n_0\,
      I1 => \slv_reg_control[31]_i_4_n_0\,
      I2 => wstrb_skid(1),
      I3 => wvalid_skid,
      I4 => S_AXI_WSTRB(1),
      O => slv_reg_control(15)
    );
\slv_reg_control[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(15),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(15),
      O => write_data(15)
    );
\slv_reg_control[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(16),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(16),
      O => write_data(16)
    );
\slv_reg_control[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(17),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(17),
      O => write_data(17)
    );
\slv_reg_control[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(18),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(18),
      O => write_data(18)
    );
\slv_reg_control[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(19),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(19),
      O => write_data(19)
    );
\slv_reg_control[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(1),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(1),
      O => write_data(1)
    );
\slv_reg_control[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(20),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(20),
      O => write_data(20)
    );
\slv_reg_control[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(21),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(21),
      O => write_data(21)
    );
\slv_reg_control[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(22),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(22),
      O => write_data(22)
    );
\slv_reg_control[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \slv_reg_control[31]_i_3_n_0\,
      I1 => \slv_reg_control[31]_i_4_n_0\,
      I2 => wstrb_skid(2),
      I3 => wvalid_skid,
      I4 => S_AXI_WSTRB(2),
      O => slv_reg_control(23)
    );
\slv_reg_control[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(23),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(23),
      O => write_data(23)
    );
\slv_reg_control[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(24),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(24),
      O => write_data(24)
    );
\slv_reg_control[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(25),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(25),
      O => write_data(25)
    );
\slv_reg_control[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(26),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(26),
      O => write_data(26)
    );
\slv_reg_control[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(27),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(27),
      O => write_data(27)
    );
\slv_reg_control[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(28),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(28),
      O => write_data(28)
    );
\slv_reg_control[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(29),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(29),
      O => write_data(29)
    );
\slv_reg_control[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(2),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(2),
      O => write_data(2)
    );
\slv_reg_control[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(30),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(30),
      O => write_data(30)
    );
\slv_reg_control[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \slv_reg_control[31]_i_3_n_0\,
      I1 => \slv_reg_control[31]_i_4_n_0\,
      I2 => wstrb_skid(3),
      I3 => wvalid_skid,
      I4 => S_AXI_WSTRB(3),
      O => slv_reg_control(31)
    );
\slv_reg_control[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(31),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(31),
      O => write_data(31)
    );
\slv_reg_control[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => \awaddr_skid_reg_n_0_[2]\,
      I2 => S_AXI_AWADDR(1),
      I3 => awvalid_skid,
      I4 => \awaddr_skid_reg_n_0_[3]\,
      O => \slv_reg_control[31]_i_3_n_0\
    );
\slv_reg_control[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => awvalid_skid,
      I2 => \awaddr_skid_reg_n_0_[4]\,
      I3 => axi_bvalid04_out,
      O => \slv_reg_control[31]_i_4_n_0\
    );
\slv_reg_control[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(3),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(3),
      O => write_data(3)
    );
\slv_reg_control[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(4),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(4),
      O => write_data(4)
    );
\slv_reg_control[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(5),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(5),
      O => write_data(5)
    );
\slv_reg_control[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(6),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(6),
      O => write_data(6)
    );
\slv_reg_control[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000202020000000"
    )
        port map (
      I0 => \slv_reg_control[31]_i_3_n_0\,
      I1 => \slv_reg_control[7]_i_3_n_0\,
      I2 => axi_bvalid04_out,
      I3 => wstrb_skid(0),
      I4 => wvalid_skid,
      I5 => S_AXI_WSTRB(0),
      O => slv_reg_control(7)
    );
\slv_reg_control[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(7),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(7),
      O => write_data(7)
    );
\slv_reg_control[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \awaddr_skid_reg_n_0_[4]\,
      I1 => awvalid_skid,
      I2 => S_AXI_AWADDR(2),
      O => \slv_reg_control[7]_i_3_n_0\
    );
\slv_reg_control[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE0"
    )
        port map (
      I0 => wvalid_skid,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => awvalid_skid,
      I4 => \^s_axi_bvalid\,
      O => axi_bvalid04_out
    );
\slv_reg_control[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(8),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(8),
      O => write_data(8)
    );
\slv_reg_control[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(9),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(9),
      O => write_data(9)
    );
\slv_reg_control_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg_control[0]_i_1_n_0\,
      Q => \slv_reg_control_reg_n_0_[0]\,
      R => '0'
    );
\slv_reg_control_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(10),
      Q => \slv_reg_control_reg_n_0_[10]\,
      R => p_0_in
    );
\slv_reg_control_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(11),
      Q => \slv_reg_control_reg_n_0_[11]\,
      R => p_0_in
    );
\slv_reg_control_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(12),
      Q => \slv_reg_control_reg_n_0_[12]\,
      R => p_0_in
    );
\slv_reg_control_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(13),
      Q => \slv_reg_control_reg_n_0_[13]\,
      R => p_0_in
    );
\slv_reg_control_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(14),
      Q => \slv_reg_control_reg_n_0_[14]\,
      R => p_0_in
    );
\slv_reg_control_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(15),
      Q => \slv_reg_control_reg_n_0_[15]\,
      R => p_0_in
    );
\slv_reg_control_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(16),
      Q => \slv_reg_control_reg_n_0_[16]\,
      R => p_0_in
    );
\slv_reg_control_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(17),
      Q => \slv_reg_control_reg_n_0_[17]\,
      R => p_0_in
    );
\slv_reg_control_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(18),
      Q => \slv_reg_control_reg_n_0_[18]\,
      R => p_0_in
    );
\slv_reg_control_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(19),
      Q => \slv_reg_control_reg_n_0_[19]\,
      R => p_0_in
    );
\slv_reg_control_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(7),
      D => write_data(1),
      Q => core_op,
      R => p_0_in
    );
\slv_reg_control_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(20),
      Q => \slv_reg_control_reg_n_0_[20]\,
      R => p_0_in
    );
\slv_reg_control_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(21),
      Q => \slv_reg_control_reg_n_0_[21]\,
      R => p_0_in
    );
\slv_reg_control_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(22),
      Q => \slv_reg_control_reg_n_0_[22]\,
      R => p_0_in
    );
\slv_reg_control_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(23),
      D => write_data(23),
      Q => \slv_reg_control_reg_n_0_[23]\,
      R => p_0_in
    );
\slv_reg_control_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(24),
      Q => \slv_reg_control_reg_n_0_[24]\,
      R => p_0_in
    );
\slv_reg_control_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(25),
      Q => \slv_reg_control_reg_n_0_[25]\,
      R => p_0_in
    );
\slv_reg_control_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(26),
      Q => \slv_reg_control_reg_n_0_[26]\,
      R => p_0_in
    );
\slv_reg_control_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(27),
      Q => \slv_reg_control_reg_n_0_[27]\,
      R => p_0_in
    );
\slv_reg_control_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(28),
      Q => \slv_reg_control_reg_n_0_[28]\,
      R => p_0_in
    );
\slv_reg_control_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(29),
      Q => \slv_reg_control_reg_n_0_[29]\,
      R => p_0_in
    );
\slv_reg_control_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(7),
      D => write_data(2),
      Q => \slv_reg_control_reg_n_0_[2]\,
      R => p_0_in
    );
\slv_reg_control_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(30),
      Q => \slv_reg_control_reg_n_0_[30]\,
      R => p_0_in
    );
\slv_reg_control_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(31),
      D => write_data(31),
      Q => \slv_reg_control_reg_n_0_[31]\,
      R => p_0_in
    );
\slv_reg_control_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(7),
      D => write_data(3),
      Q => \slv_reg_control_reg_n_0_[3]\,
      R => p_0_in
    );
\slv_reg_control_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(7),
      D => write_data(4),
      Q => \slv_reg_control_reg_n_0_[4]\,
      R => p_0_in
    );
\slv_reg_control_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(7),
      D => write_data(5),
      Q => \slv_reg_control_reg_n_0_[5]\,
      R => p_0_in
    );
\slv_reg_control_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(7),
      D => write_data(6),
      Q => \slv_reg_control_reg_n_0_[6]\,
      R => p_0_in
    );
\slv_reg_control_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(7),
      D => write_data(7),
      Q => \slv_reg_control_reg_n_0_[7]\,
      R => p_0_in
    );
\slv_reg_control_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(8),
      Q => \slv_reg_control_reg_n_0_[8]\,
      R => p_0_in
    );
\slv_reg_control_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_control(15),
      D => write_data(9),
      Q => \slv_reg_control_reg_n_0_[9]\,
      R => p_0_in
    );
\slv_reg_free_addr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(1),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(1),
      I4 => \slv_reg_free_addr[31]_i_2_n_0\,
      O => \slv_reg_free_addr[15]_i_1_n_0\
    );
\slv_reg_free_addr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(2),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(2),
      I4 => \slv_reg_free_addr[31]_i_2_n_0\,
      O => \slv_reg_free_addr[23]_i_1_n_0\
    );
\slv_reg_free_addr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(3),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(3),
      I4 => \slv_reg_free_addr[31]_i_2_n_0\,
      O => \slv_reg_free_addr[31]_i_1_n_0\
    );
\slv_reg_free_addr[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => \awaddr_skid_reg_n_0_[2]\,
      I2 => S_AXI_AWADDR(1),
      I3 => awvalid_skid,
      I4 => \awaddr_skid_reg_n_0_[3]\,
      O => \slv_reg_free_addr[31]_i_2_n_0\
    );
\slv_reg_free_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(0),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(0),
      I4 => \slv_reg_free_addr[31]_i_2_n_0\,
      O => \slv_reg_free_addr[7]_i_1_n_0\
    );
\slv_reg_free_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(0),
      Q => slv_reg_free_addr(0),
      R => p_0_in
    );
\slv_reg_free_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(10),
      Q => slv_reg_free_addr(10),
      R => p_0_in
    );
\slv_reg_free_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(11),
      Q => slv_reg_free_addr(11),
      R => p_0_in
    );
\slv_reg_free_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(12),
      Q => slv_reg_free_addr(12),
      R => p_0_in
    );
\slv_reg_free_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(13),
      Q => slv_reg_free_addr(13),
      R => p_0_in
    );
\slv_reg_free_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(14),
      Q => slv_reg_free_addr(14),
      R => p_0_in
    );
\slv_reg_free_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(15),
      Q => slv_reg_free_addr(15),
      R => p_0_in
    );
\slv_reg_free_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(16),
      Q => slv_reg_free_addr(16),
      R => p_0_in
    );
\slv_reg_free_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(17),
      Q => slv_reg_free_addr(17),
      R => p_0_in
    );
\slv_reg_free_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(18),
      Q => slv_reg_free_addr(18),
      R => p_0_in
    );
\slv_reg_free_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(19),
      Q => slv_reg_free_addr(19),
      R => p_0_in
    );
\slv_reg_free_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(1),
      Q => slv_reg_free_addr(1),
      R => p_0_in
    );
\slv_reg_free_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(20),
      Q => slv_reg_free_addr(20),
      R => p_0_in
    );
\slv_reg_free_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(21),
      Q => slv_reg_free_addr(21),
      R => p_0_in
    );
\slv_reg_free_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(22),
      Q => slv_reg_free_addr(22),
      R => p_0_in
    );
\slv_reg_free_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[23]_i_1_n_0\,
      D => write_data(23),
      Q => slv_reg_free_addr(23),
      R => p_0_in
    );
\slv_reg_free_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(24),
      Q => slv_reg_free_addr(24),
      R => p_0_in
    );
\slv_reg_free_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(25),
      Q => slv_reg_free_addr(25),
      R => p_0_in
    );
\slv_reg_free_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(26),
      Q => slv_reg_free_addr(26),
      R => p_0_in
    );
\slv_reg_free_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(27),
      Q => slv_reg_free_addr(27),
      R => p_0_in
    );
\slv_reg_free_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(28),
      Q => slv_reg_free_addr(28),
      R => p_0_in
    );
\slv_reg_free_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(29),
      Q => slv_reg_free_addr(29),
      R => p_0_in
    );
\slv_reg_free_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(2),
      Q => slv_reg_free_addr(2),
      R => p_0_in
    );
\slv_reg_free_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(30),
      Q => slv_reg_free_addr(30),
      R => p_0_in
    );
\slv_reg_free_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[31]_i_1_n_0\,
      D => write_data(31),
      Q => slv_reg_free_addr(31),
      R => p_0_in
    );
\slv_reg_free_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(3),
      Q => slv_reg_free_addr(3),
      R => p_0_in
    );
\slv_reg_free_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(4),
      Q => slv_reg_free_addr(4),
      R => p_0_in
    );
\slv_reg_free_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(5),
      Q => slv_reg_free_addr(5),
      R => p_0_in
    );
\slv_reg_free_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(6),
      Q => slv_reg_free_addr(6),
      R => p_0_in
    );
\slv_reg_free_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[7]_i_1_n_0\,
      D => write_data(7),
      Q => slv_reg_free_addr(7),
      R => p_0_in
    );
\slv_reg_free_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(8),
      Q => slv_reg_free_addr(8),
      R => p_0_in
    );
\slv_reg_free_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_free_addr[15]_i_1_n_0\,
      D => write_data(9),
      Q => slv_reg_free_addr(9),
      R => p_0_in
    );
\slv_reg_size[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_skid(0),
      I1 => wvalid_skid,
      I2 => S_AXI_WDATA(0),
      O => write_data(0)
    );
\slv_reg_size[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(1),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(1),
      I4 => \slv_reg_size[31]_i_2_n_0\,
      O => p_1_in(15)
    );
\slv_reg_size[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(2),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(2),
      I4 => \slv_reg_size[31]_i_2_n_0\,
      O => p_1_in(23)
    );
\slv_reg_size[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(3),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(3),
      I4 => \slv_reg_size[31]_i_2_n_0\,
      O => p_1_in(31)
    );
\slv_reg_size[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => \awaddr_skid_reg_n_0_[3]\,
      I2 => S_AXI_AWADDR(0),
      I3 => awvalid_skid,
      I4 => \awaddr_skid_reg_n_0_[2]\,
      O => \slv_reg_size[31]_i_2_n_0\
    );
\slv_reg_size[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \slv_reg_control[31]_i_4_n_0\,
      I1 => wstrb_skid(0),
      I2 => wvalid_skid,
      I3 => S_AXI_WSTRB(0),
      I4 => \slv_reg_size[31]_i_2_n_0\,
      O => p_1_in(7)
    );
\slv_reg_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(0),
      Q => slv_reg_size(0),
      R => p_0_in
    );
\slv_reg_size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(10),
      Q => slv_reg_size(10),
      R => p_0_in
    );
\slv_reg_size_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(11),
      Q => slv_reg_size(11),
      R => p_0_in
    );
\slv_reg_size_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(12),
      Q => slv_reg_size(12),
      R => p_0_in
    );
\slv_reg_size_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(13),
      Q => slv_reg_size(13),
      R => p_0_in
    );
\slv_reg_size_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(14),
      Q => slv_reg_size(14),
      R => p_0_in
    );
\slv_reg_size_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(15),
      Q => slv_reg_size(15),
      R => p_0_in
    );
\slv_reg_size_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(16),
      Q => slv_reg_size(16),
      R => p_0_in
    );
\slv_reg_size_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(17),
      Q => slv_reg_size(17),
      R => p_0_in
    );
\slv_reg_size_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(18),
      Q => slv_reg_size(18),
      R => p_0_in
    );
\slv_reg_size_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(19),
      Q => slv_reg_size(19),
      R => p_0_in
    );
\slv_reg_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(1),
      Q => slv_reg_size(1),
      R => p_0_in
    );
\slv_reg_size_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(20),
      Q => slv_reg_size(20),
      R => p_0_in
    );
\slv_reg_size_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(21),
      Q => slv_reg_size(21),
      R => p_0_in
    );
\slv_reg_size_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(22),
      Q => slv_reg_size(22),
      R => p_0_in
    );
\slv_reg_size_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => write_data(23),
      Q => slv_reg_size(23),
      R => p_0_in
    );
\slv_reg_size_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(24),
      Q => slv_reg_size(24),
      R => p_0_in
    );
\slv_reg_size_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(25),
      Q => slv_reg_size(25),
      R => p_0_in
    );
\slv_reg_size_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(26),
      Q => slv_reg_size(26),
      R => p_0_in
    );
\slv_reg_size_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(27),
      Q => slv_reg_size(27),
      R => p_0_in
    );
\slv_reg_size_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(28),
      Q => slv_reg_size(28),
      R => p_0_in
    );
\slv_reg_size_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(29),
      Q => slv_reg_size(29),
      R => p_0_in
    );
\slv_reg_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(2),
      Q => slv_reg_size(2),
      R => p_0_in
    );
\slv_reg_size_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(30),
      Q => slv_reg_size(30),
      R => p_0_in
    );
\slv_reg_size_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => write_data(31),
      Q => slv_reg_size(31),
      R => p_0_in
    );
\slv_reg_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(3),
      Q => slv_reg_size(3),
      R => p_0_in
    );
\slv_reg_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(4),
      Q => slv_reg_size(4),
      R => p_0_in
    );
\slv_reg_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(5),
      Q => slv_reg_size(5),
      R => p_0_in
    );
\slv_reg_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(6),
      Q => slv_reg_size(6),
      R => p_0_in
    );
\slv_reg_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => write_data(7),
      Q => slv_reg_size(7),
      R => p_0_in
    );
\slv_reg_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(8),
      Q => slv_reg_size(8),
      R => p_0_in
    );
\slv_reg_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => write_data(9),
      Q => slv_reg_size(9),
      R => p_0_in
    );
u_malloc_core: component rlmalloc_rlmalloc_top_0_1_malloc
     port map (
      busy => core_busy,
      clk => S_AXI_ACLK,
      data_in(31 downto 0) => slv_reg_free_addr(31 downto 0),
      data_out(31 downto 0) => core_data_out(31 downto 0),
      done => \^irq\,
      error => core_error,
      op => core_op,
      reset_n => S_AXI_ARESETN,
      size_in(31 downto 0) => slv_reg_size(31 downto 0),
      start => \slv_reg_control_reg_n_0_[0]\
    );
\wdata_skid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => wdata_skid(0),
      R => '0'
    );
\wdata_skid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => wdata_skid(10),
      R => '0'
    );
\wdata_skid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => wdata_skid(11),
      R => '0'
    );
\wdata_skid_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => wdata_skid(12),
      R => '0'
    );
\wdata_skid_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => wdata_skid(13),
      R => '0'
    );
\wdata_skid_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => wdata_skid(14),
      R => '0'
    );
\wdata_skid_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => wdata_skid(15),
      R => '0'
    );
\wdata_skid_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => wdata_skid(16),
      R => '0'
    );
\wdata_skid_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => wdata_skid(17),
      R => '0'
    );
\wdata_skid_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => wdata_skid(18),
      R => '0'
    );
\wdata_skid_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => wdata_skid(19),
      R => '0'
    );
\wdata_skid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => wdata_skid(1),
      R => '0'
    );
\wdata_skid_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => wdata_skid(20),
      R => '0'
    );
\wdata_skid_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => wdata_skid(21),
      R => '0'
    );
\wdata_skid_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => wdata_skid(22),
      R => '0'
    );
\wdata_skid_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => wdata_skid(23),
      R => '0'
    );
\wdata_skid_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => wdata_skid(24),
      R => '0'
    );
\wdata_skid_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => wdata_skid(25),
      R => '0'
    );
\wdata_skid_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => wdata_skid(26),
      R => '0'
    );
\wdata_skid_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => wdata_skid(27),
      R => '0'
    );
\wdata_skid_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => wdata_skid(28),
      R => '0'
    );
\wdata_skid_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => wdata_skid(29),
      R => '0'
    );
\wdata_skid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => wdata_skid(2),
      R => '0'
    );
\wdata_skid_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => wdata_skid(30),
      R => '0'
    );
\wdata_skid_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => wdata_skid(31),
      R => '0'
    );
\wdata_skid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => wdata_skid(3),
      R => '0'
    );
\wdata_skid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => wdata_skid(4),
      R => '0'
    );
\wdata_skid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => wdata_skid(5),
      R => '0'
    );
\wdata_skid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => wdata_skid(6),
      R => '0'
    );
\wdata_skid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => wdata_skid(7),
      R => '0'
    );
\wdata_skid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => wdata_skid(8),
      R => '0'
    );
\wdata_skid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => wdata_skid(9),
      R => '0'
    );
\wstrb_skid[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => wvalid_skid,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_ARESETN,
      O => \wstrb_skid[3]_i_1_n_0\
    );
\wstrb_skid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WSTRB(0),
      Q => wstrb_skid(0),
      R => '0'
    );
\wstrb_skid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WSTRB(1),
      Q => wstrb_skid(1),
      R => '0'
    );
\wstrb_skid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WSTRB(2),
      Q => wstrb_skid(2),
      R => '0'
    );
\wstrb_skid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \wstrb_skid[3]_i_1_n_0\,
      D => S_AXI_WSTRB(3),
      Q => wstrb_skid(3),
      R => '0'
    );
wvalid_skid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7200"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
      I2 => wvalid_skid,
      I3 => S_AXI_ARESETN,
      O => wvalid_skid_i_1_n_0
    );
wvalid_skid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => wvalid_skid_i_1_n_0,
      Q => wvalid_skid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rlmalloc_rlmalloc_top_0_1_rlmalloc_top is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    irq : out STD_LOGIC
  );
  attribute C_INTR_N : integer;
  attribute C_INTR_N of rlmalloc_rlmalloc_top_0_1_rlmalloc_top : entity is 4;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of rlmalloc_rlmalloc_top_0_1_rlmalloc_top : entity is 8;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of rlmalloc_rlmalloc_top_0_1_rlmalloc_top : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rlmalloc_rlmalloc_top_0_1_rlmalloc_top : entity is "rlmalloc_top";
end rlmalloc_rlmalloc_top_0_1_rlmalloc_top;

architecture STRUCTURE of rlmalloc_rlmalloc_top_0_1_rlmalloc_top is
  signal \<const0>\ : STD_LOGIC;
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
rlmalloc_core: entity work.rlmalloc_rlmalloc_top_0_1_rlmalloc_top_sv
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      irq => irq
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rlmalloc_rlmalloc_top_0_1 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rlmalloc_rlmalloc_top_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rlmalloc_rlmalloc_top_0_1 : entity is "rlmalloc_rlmalloc_top_0_1,rlmalloc_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rlmalloc_rlmalloc_top_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rlmalloc_rlmalloc_top_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rlmalloc_rlmalloc_top_0_1 : entity is "rlmalloc_top,Vivado 2025.1";
end rlmalloc_rlmalloc_top_0_1;

architecture STRUCTURE of rlmalloc_rlmalloc_top_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_INTR_N : integer;
  attribute C_INTR_N of inst : label is 4;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 8;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXI_ACLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rlmalloc_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_MODE of S_AXI_ARESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_MODE of irq : signal is "master";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_AWADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rlmalloc_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.rlmalloc_rlmalloc_top_0_1_rlmalloc_top
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(7 downto 5) => B"000",
      S_AXI_ARADDR(4 downto 2) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARADDR(1 downto 0) => B"00",
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARPROT(2 downto 0) => B"000",
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(7 downto 5) => B"000",
      S_AXI_AWADDR(4 downto 2) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWADDR(1 downto 0) => B"00",
      S_AXI_AWPROT(2 downto 0) => B"000",
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => NLW_inst_S_AXI_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_inst_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      irq => irq
    );
end STRUCTURE;
