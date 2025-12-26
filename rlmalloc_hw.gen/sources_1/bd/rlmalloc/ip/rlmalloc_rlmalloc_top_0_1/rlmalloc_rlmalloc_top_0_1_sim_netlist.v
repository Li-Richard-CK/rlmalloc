// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Dec 26 23:14:24 2025
// Host        : Richard running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/liric/Research/rlmalloc/rlmalloc_hw.gen/sources_1/bd/rlmalloc/ip/rlmalloc_rlmalloc_top_0_1/rlmalloc_rlmalloc_top_0_1_sim_netlist.v
// Design      : rlmalloc_rlmalloc_top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rlmalloc_rlmalloc_top_0_1,rlmalloc_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rlmalloc_top,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module rlmalloc_rlmalloc_top_0_1
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    irq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rlmalloc_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rlmalloc_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [7:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [7:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [7:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire irq;
  wire [1:0]NLW_inst_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_INTR_N = "4" *) 
  (* C_S_AXI_ADDR_WIDTH = "8" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  rlmalloc_rlmalloc_top_0_1_rlmalloc_top inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({1'b0,1'b0,1'b0,S_AXI_ARADDR[4:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,S_AXI_AWADDR[4:2],1'b0,1'b0}),
        .S_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_inst_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_inst_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .irq(irq));
endmodule

(* C_S_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "malloc" *) 
module rlmalloc_rlmalloc_top_0_1_malloc
   (clk,
    reset_n,
    start,
    op,
    size_in,
    data_in,
    done,
    busy,
    data_out,
    error);
  input clk;
  input reset_n;
  input start;
  input op;
  input [31:0]size_in;
  input [31:0]data_in;
  output done;
  output busy;
  output [31:0]data_out;
  output error;


endmodule

(* C_INTR_N = "4" *) (* C_S_AXI_ADDR_WIDTH = "8" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* ORIG_REF_NAME = "rlmalloc_top" *) 
module rlmalloc_rlmalloc_top_0_1_rlmalloc_top
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    irq);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [7:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [7:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output irq;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [7:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [7:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire irq;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  rlmalloc_rlmalloc_top_0_1_rlmalloc_top_sv rlmalloc_core
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .irq(irq));
endmodule

(* ORIG_REF_NAME = "rlmalloc_top_sv" *) 
module rlmalloc_rlmalloc_top_0_1_rlmalloc_top_sv
   (S_AXI_WREADY,
    irq,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_WVALID,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WSTRB,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_WREADY;
  output irq;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input S_AXI_WVALID;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [2:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input [3:0]S_AXI_WSTRB;
  input [31:0]S_AXI_WDATA;
  input [2:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire \araddr_skid[2]_i_1_n_0 ;
  wire \araddr_skid[3]_i_1_n_0 ;
  wire \araddr_skid[4]_i_1_n_0 ;
  wire arvalid_skid;
  wire arvalid_skid1;
  wire arvalid_skid_i_1_n_0;
  wire \awaddr_skid[2]_i_1_n_0 ;
  wire \awaddr_skid[3]_i_1_n_0 ;
  wire \awaddr_skid[4]_i_1_n_0 ;
  wire \awaddr_skid_reg_n_0_[2] ;
  wire \awaddr_skid_reg_n_0_[3] ;
  wire \awaddr_skid_reg_n_0_[4] ;
  wire awvalid_skid;
  wire awvalid_skid1;
  wire awvalid_skid_i_1_n_0;
  wire axi_bvalid04_out;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire axi_rvalid01_out;
  wire axi_rvalid_i_1_n_0;
  wire core_busy;
  wire [31:0]core_data_out;
  wire core_error;
  wire core_op;
  wire irq;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire [2:0]sel0;
  wire [31:7]slv_reg_control;
  wire \slv_reg_control[0]_i_1_n_0 ;
  wire \slv_reg_control[31]_i_3_n_0 ;
  wire \slv_reg_control[31]_i_4_n_0 ;
  wire \slv_reg_control[7]_i_3_n_0 ;
  wire \slv_reg_control_reg_n_0_[0] ;
  wire \slv_reg_control_reg_n_0_[10] ;
  wire \slv_reg_control_reg_n_0_[11] ;
  wire \slv_reg_control_reg_n_0_[12] ;
  wire \slv_reg_control_reg_n_0_[13] ;
  wire \slv_reg_control_reg_n_0_[14] ;
  wire \slv_reg_control_reg_n_0_[15] ;
  wire \slv_reg_control_reg_n_0_[16] ;
  wire \slv_reg_control_reg_n_0_[17] ;
  wire \slv_reg_control_reg_n_0_[18] ;
  wire \slv_reg_control_reg_n_0_[19] ;
  wire \slv_reg_control_reg_n_0_[20] ;
  wire \slv_reg_control_reg_n_0_[21] ;
  wire \slv_reg_control_reg_n_0_[22] ;
  wire \slv_reg_control_reg_n_0_[23] ;
  wire \slv_reg_control_reg_n_0_[24] ;
  wire \slv_reg_control_reg_n_0_[25] ;
  wire \slv_reg_control_reg_n_0_[26] ;
  wire \slv_reg_control_reg_n_0_[27] ;
  wire \slv_reg_control_reg_n_0_[28] ;
  wire \slv_reg_control_reg_n_0_[29] ;
  wire \slv_reg_control_reg_n_0_[2] ;
  wire \slv_reg_control_reg_n_0_[30] ;
  wire \slv_reg_control_reg_n_0_[31] ;
  wire \slv_reg_control_reg_n_0_[3] ;
  wire \slv_reg_control_reg_n_0_[4] ;
  wire \slv_reg_control_reg_n_0_[5] ;
  wire \slv_reg_control_reg_n_0_[6] ;
  wire \slv_reg_control_reg_n_0_[7] ;
  wire \slv_reg_control_reg_n_0_[8] ;
  wire \slv_reg_control_reg_n_0_[9] ;
  wire [31:0]slv_reg_free_addr;
  wire \slv_reg_free_addr[15]_i_1_n_0 ;
  wire \slv_reg_free_addr[23]_i_1_n_0 ;
  wire \slv_reg_free_addr[31]_i_1_n_0 ;
  wire \slv_reg_free_addr[31]_i_2_n_0 ;
  wire \slv_reg_free_addr[7]_i_1_n_0 ;
  wire [31:0]slv_reg_size;
  wire \slv_reg_size[31]_i_2_n_0 ;
  wire [31:0]wdata_skid;
  wire [31:0]write_data;
  wire [3:0]wstrb_skid;
  wire \wstrb_skid[3]_i_1_n_0 ;
  wire wvalid_skid;
  wire wvalid_skid1;
  wire wvalid_skid_i_1_n_0;

  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \araddr_skid[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(arvalid_skid),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARREADY),
        .I4(S_AXI_ARESETN),
        .I5(sel0[0]),
        .O(\araddr_skid[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \araddr_skid[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(arvalid_skid),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARREADY),
        .I4(S_AXI_ARESETN),
        .I5(sel0[1]),
        .O(\araddr_skid[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \araddr_skid[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(arvalid_skid),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARREADY),
        .I4(S_AXI_ARESETN),
        .I5(sel0[2]),
        .O(\araddr_skid[4]_i_1_n_0 ));
  FDRE \araddr_skid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\araddr_skid[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \araddr_skid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\araddr_skid[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \araddr_skid_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\araddr_skid[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7200)) 
    arvalid_skid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(arvalid_skid),
        .I3(S_AXI_ARESETN),
        .O(arvalid_skid_i_1_n_0));
  FDRE arvalid_skid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(arvalid_skid_i_1_n_0),
        .Q(arvalid_skid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \awaddr_skid[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(awvalid_skid),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_ARESETN),
        .I5(\awaddr_skid_reg_n_0_[2] ),
        .O(\awaddr_skid[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \awaddr_skid[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(awvalid_skid),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_ARESETN),
        .I5(\awaddr_skid_reg_n_0_[3] ),
        .O(\awaddr_skid[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \awaddr_skid[4]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(awvalid_skid),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_ARESETN),
        .I5(\awaddr_skid_reg_n_0_[4] ),
        .O(\awaddr_skid[4]_i_1_n_0 ));
  FDRE \awaddr_skid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\awaddr_skid[2]_i_1_n_0 ),
        .Q(\awaddr_skid_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \awaddr_skid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\awaddr_skid[3]_i_1_n_0 ),
        .Q(\awaddr_skid_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \awaddr_skid_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\awaddr_skid[4]_i_1_n_0 ),
        .Q(\awaddr_skid_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2A08)) 
    awvalid_skid_i_1
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(awvalid_skid),
        .O(awvalid_skid_i_1_n_0));
  FDRE awvalid_skid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(awvalid_skid_i_1_n_0),
        .Q(awvalid_skid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    axi_arready_i_1
       (.I0(arvalid_skid),
        .O(arvalid_skid1));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(arvalid_skid1),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_2
       (.I0(awvalid_skid),
        .O(awvalid_skid1));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(awvalid_skid1),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h7774777477744444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(awvalid_skid),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(wvalid_skid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAE00AEAEAE00AE00)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(S_AXI_ARADDR[2]),
        .I3(\axi_rdata[0]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABAAABABAAAAAAA)) 
    \axi_rdata[0]_i_2 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[1]),
        .I2(S_AXI_ARADDR[2]),
        .I3(S_AXI_ARADDR[0]),
        .I4(core_error),
        .I5(core_data_out[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(irq),
        .I1(slv_reg_free_addr[0]),
        .I2(S_AXI_ARADDR[1]),
        .I3(slv_reg_size[0]),
        .I4(S_AXI_ARADDR[0]),
        .I5(\slv_reg_control_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44044000FFFFFFFF)) 
    \axi_rdata[0]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(core_error),
        .I4(core_data_out[0]),
        .I5(arvalid_skid),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(irq),
        .I1(slv_reg_free_addr[0]),
        .I2(sel0[1]),
        .I3(slv_reg_size[0]),
        .I4(sel0[0]),
        .I5(\slv_reg_control_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[10]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[10]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .I5(\axi_rdata[10]_i_3_n_0 ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[10]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[10] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[10]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[10]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[10]_i_3 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[10]),
        .I5(sel0[0]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[10]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[10] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[10]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[11]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[11]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .I5(\axi_rdata[11]_i_3_n_0 ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[11]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[11] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[11]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[11]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[11]_i_3 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[11]),
        .I5(sel0[0]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[11]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[11] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[11]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[12]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[12]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .I5(\axi_rdata[12]_i_3_n_0 ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[12]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[12] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[12]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[12]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[12]_i_3 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[12]),
        .I5(sel0[0]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[12]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[12] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[12]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[13]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[13]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[13]_i_2_n_0 ),
        .I5(\axi_rdata[13]_i_3_n_0 ),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[13]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[13] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[13]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[13]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[13]_i_3 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[13]),
        .I5(sel0[0]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[13]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[13] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[13]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[14]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[14]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[14]_i_2_n_0 ),
        .I5(\axi_rdata[14]_i_3_n_0 ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[14]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[14] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[14]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[14]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[14]_i_3 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[14]),
        .I5(sel0[0]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[14]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[14] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[14]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[15]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[15]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[15]_i_2_n_0 ),
        .I5(\axi_rdata[15]_i_3_n_0 ),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[15]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[15] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[15]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[15]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[15]_i_3 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[15]),
        .I5(sel0[0]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[15]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[15] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[15]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[16]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[16]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[16]_i_2_n_0 ),
        .I5(\axi_rdata[16]_i_3_n_0 ),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[16]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[16] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[16]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[16]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[16]_i_3 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[16]),
        .I5(sel0[0]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[16]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[16] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[16]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[17]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[17]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .I5(\axi_rdata[17]_i_3_n_0 ),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[17]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[17] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[17]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[17]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[17]_i_3 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[17]),
        .I5(sel0[0]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[17]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[17] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[17]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[18]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[18]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[18]_i_2_n_0 ),
        .I5(\axi_rdata[18]_i_3_n_0 ),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[18]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[18] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[18]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[18]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[18]_i_3 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[18]),
        .I5(sel0[0]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[18]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[18] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[18]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[19]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[19]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[19]_i_2_n_0 ),
        .I5(\axi_rdata[19]_i_3_n_0 ),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[19]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[19] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[19]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[19]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[19]_i_3 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[19]),
        .I5(sel0[0]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[19]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[19] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[19]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AEAEAE00AE00)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .I2(S_AXI_ARADDR[2]),
        .I3(\axi_rdata[1]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    \axi_rdata[1]_i_2 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[1]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(core_busy),
        .I1(slv_reg_free_addr[1]),
        .I2(S_AXI_ARADDR[1]),
        .I3(slv_reg_size[1]),
        .I4(S_AXI_ARADDR[0]),
        .I5(core_op),
        .O(\axi_rdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    \axi_rdata[1]_i_4 
       (.I0(sel0[0]),
        .I1(core_data_out[1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(arvalid_skid),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(core_busy),
        .I1(slv_reg_free_addr[1]),
        .I2(sel0[1]),
        .I3(slv_reg_size[1]),
        .I4(sel0[0]),
        .I5(core_op),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[20]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[20]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[20]_i_2_n_0 ),
        .I5(\axi_rdata[20]_i_3_n_0 ),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[20]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[20] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[20]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[20]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[20]_i_3 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[20]),
        .I5(sel0[0]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[20]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[20] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[20]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[21]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[21]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[21]_i_2_n_0 ),
        .I5(\axi_rdata[21]_i_3_n_0 ),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[21]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[21] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[21]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[21]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[21]_i_3 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[21]),
        .I5(sel0[0]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[21]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[21] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[21]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[22]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[22]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .I5(\axi_rdata[22]_i_3_n_0 ),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[22]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[22] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[22]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[22]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[22]_i_3 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[22]),
        .I5(sel0[0]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[22]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[22] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[22]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[23]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[23]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[23]_i_2_n_0 ),
        .I5(\axi_rdata[23]_i_3_n_0 ),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[23]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[23] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[23]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[23]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[23]_i_3 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[23]),
        .I5(sel0[0]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[23]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[23] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[23]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[24]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[24]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[24]_i_2_n_0 ),
        .I5(\axi_rdata[24]_i_3_n_0 ),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[24]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[24] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[24]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[24]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[24]_i_3 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[24]),
        .I5(sel0[0]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[24]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[24] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[24]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[25]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[25]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[25]_i_2_n_0 ),
        .I5(\axi_rdata[25]_i_3_n_0 ),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[25]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[25] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[25]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[25]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[25]_i_3 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[25]),
        .I5(sel0[0]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[25]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[25] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[25]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[26]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[26]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[26]_i_2_n_0 ),
        .I5(\axi_rdata[26]_i_3_n_0 ),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[26]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[26] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[26]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[26]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[26]_i_3 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[26]),
        .I5(sel0[0]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[26]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[26] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[26]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[27]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[27]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[27]_i_2_n_0 ),
        .I5(\axi_rdata[27]_i_3_n_0 ),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[27]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[27] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[27]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[27]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[27]_i_3 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[27]),
        .I5(sel0[0]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[27]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[27] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[27]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[28]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[28]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[28]_i_3_n_0 ),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[28]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[28] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[28]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[28]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[28]_i_3 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[28]),
        .I5(sel0[0]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[28]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[28] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[28]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[29]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[29]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[29]_i_2_n_0 ),
        .I5(\axi_rdata[29]_i_3_n_0 ),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[29]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[29] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[29]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[29]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[29]_i_3 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[29]),
        .I5(sel0[0]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[29]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[29] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[29]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[2]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[2]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[2]_i_2_n_0 ),
        .I5(\axi_rdata[2]_i_3_n_0 ),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[2]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[2] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[2]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[2]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[2]),
        .I5(sel0[0]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[2]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[2] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[2]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[30]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[30]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[30]_i_2_n_0 ),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[30]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[30] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[30]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[30]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[30]_i_3 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[30]),
        .I5(sel0[0]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[30]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[30] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[30]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \axi_rdata[31]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .O(axi_rvalid01_out));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[31]_i_2 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[31]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[31]_i_4_n_0 ),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[31]_i_3 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARADDR[1]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[31]_i_4 
       (.I0(\slv_reg_control_reg_n_0_[31] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[31]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[31]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[31]_i_5 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[31]),
        .I5(sel0[0]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[31]_i_6 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[31] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[31]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[3]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[3]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[3]_i_2_n_0 ),
        .I5(\axi_rdata[3]_i_3_n_0 ),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[3]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[3] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[3]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[3]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[3]),
        .I5(sel0[0]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[3]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[3] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[3]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[4]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[4]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[4]_i_2_n_0 ),
        .I5(\axi_rdata[4]_i_3_n_0 ),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[4]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[4] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[4]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[4]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[4]),
        .I5(sel0[0]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[4]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[4] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[4]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[5]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[5]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[5]_i_2_n_0 ),
        .I5(\axi_rdata[5]_i_3_n_0 ),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[5]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[5] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[5]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[5]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[5]),
        .I5(sel0[0]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[5]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[5] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[5]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[6]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[6]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[6]_i_2_n_0 ),
        .I5(\axi_rdata[6]_i_3_n_0 ),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[6]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[6] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[6]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[6]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[6]),
        .I5(sel0[0]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[6]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[6] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[6]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[7]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[7]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[7]_i_2_n_0 ),
        .I5(\axi_rdata[7]_i_3_n_0 ),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[7]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[7] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[7]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[7]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[7]),
        .I5(sel0[0]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[7]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[7] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[7]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[8]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[8]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .I5(\axi_rdata[8]_i_3_n_0 ),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[8]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[8] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[8]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[8]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[8]),
        .I5(sel0[0]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[8]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[8] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[8]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \axi_rdata[9]_i_1 
       (.I0(arvalid_skid),
        .I1(S_AXI_ARADDR[0]),
        .I2(core_data_out[9]),
        .I3(\axi_rdata[31]_i_3_n_0 ),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[9]_i_2 
       (.I0(\slv_reg_control_reg_n_0_[9] ),
        .I1(S_AXI_ARADDR[0]),
        .I2(slv_reg_size[9]),
        .I3(S_AXI_ARADDR[1]),
        .I4(slv_reg_free_addr[9]),
        .I5(S_AXI_ARADDR[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880888888)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(arvalid_skid),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(core_data_out[9]),
        .I5(sel0[0]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \axi_rdata[9]_i_4 
       (.I0(sel0[2]),
        .I1(\slv_reg_control_reg_n_0_[9] ),
        .I2(sel0[0]),
        .I3(slv_reg_size[9]),
        .I4(sel0[1]),
        .I5(slv_reg_free_addr[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(S_AXI_RDATA[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(S_AXI_RDATA[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(S_AXI_RDATA[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(S_AXI_RDATA[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(S_AXI_RDATA[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(S_AXI_RDATA[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(S_AXI_RDATA[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(S_AXI_RDATA[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(S_AXI_RDATA[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(S_AXI_RDATA[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(S_AXI_RDATA[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(S_AXI_RDATA[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(S_AXI_RDATA[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(S_AXI_RDATA[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(S_AXI_RDATA[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(S_AXI_RDATA[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(S_AXI_RDATA[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(S_AXI_RDATA[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(S_AXI_RDATA[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(S_AXI_RDATA[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(S_AXI_RDATA[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(S_AXI_RDATA[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(S_AXI_RDATA[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(S_AXI_RDATA[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(S_AXI_RDATA[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(S_AXI_RDATA[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(S_AXI_RDATA[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(S_AXI_RDATA[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(S_AXI_RDATA[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(S_AXI_RDATA[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(S_AXI_RDATA[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid01_out),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(S_AXI_RDATA[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h7774)) 
    axi_rvalid_i_1
       (.I0(S_AXI_RREADY),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARVALID),
        .I3(arvalid_skid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    axi_wready_i_1
       (.I0(wvalid_skid),
        .O(wvalid_skid1));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(wvalid_skid1),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \slv_reg_control[0]_i_1 
       (.I0(\slv_reg_control_reg_n_0_[0] ),
        .I1(slv_reg_control[7]),
        .I2(write_data[0]),
        .I3(S_AXI_ARESETN),
        .I4(irq),
        .O(\slv_reg_control[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[10]_i_1 
       (.I0(wdata_skid[10]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[10]),
        .O(write_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[11]_i_1 
       (.I0(wdata_skid[11]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[11]),
        .O(write_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[12]_i_1 
       (.I0(wdata_skid[12]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[12]),
        .O(write_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[13]_i_1 
       (.I0(wdata_skid[13]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[13]),
        .O(write_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[14]_i_1 
       (.I0(wdata_skid[14]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[14]),
        .O(write_data[14]));
  LUT5 #(
    .INIT(32'h20222000)) 
    \slv_reg_control[15]_i_1 
       (.I0(\slv_reg_control[31]_i_3_n_0 ),
        .I1(\slv_reg_control[31]_i_4_n_0 ),
        .I2(wstrb_skid[1]),
        .I3(wvalid_skid),
        .I4(S_AXI_WSTRB[1]),
        .O(slv_reg_control[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[15]_i_2 
       (.I0(wdata_skid[15]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[15]),
        .O(write_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[16]_i_1 
       (.I0(wdata_skid[16]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[16]),
        .O(write_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[17]_i_1 
       (.I0(wdata_skid[17]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[17]),
        .O(write_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[18]_i_1 
       (.I0(wdata_skid[18]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[18]),
        .O(write_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[19]_i_1 
       (.I0(wdata_skid[19]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[19]),
        .O(write_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[1]_i_1 
       (.I0(wdata_skid[1]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[1]),
        .O(write_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[20]_i_1 
       (.I0(wdata_skid[20]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[20]),
        .O(write_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[21]_i_1 
       (.I0(wdata_skid[21]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[21]),
        .O(write_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[22]_i_1 
       (.I0(wdata_skid[22]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[22]),
        .O(write_data[22]));
  LUT5 #(
    .INIT(32'h20222000)) 
    \slv_reg_control[23]_i_1 
       (.I0(\slv_reg_control[31]_i_3_n_0 ),
        .I1(\slv_reg_control[31]_i_4_n_0 ),
        .I2(wstrb_skid[2]),
        .I3(wvalid_skid),
        .I4(S_AXI_WSTRB[2]),
        .O(slv_reg_control[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[23]_i_2 
       (.I0(wdata_skid[23]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[23]),
        .O(write_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[24]_i_1 
       (.I0(wdata_skid[24]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[24]),
        .O(write_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[25]_i_1 
       (.I0(wdata_skid[25]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[25]),
        .O(write_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[26]_i_1 
       (.I0(wdata_skid[26]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[26]),
        .O(write_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[27]_i_1 
       (.I0(wdata_skid[27]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[27]),
        .O(write_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[28]_i_1 
       (.I0(wdata_skid[28]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[28]),
        .O(write_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[29]_i_1 
       (.I0(wdata_skid[29]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[29]),
        .O(write_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[2]_i_1 
       (.I0(wdata_skid[2]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[2]),
        .O(write_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[30]_i_1 
       (.I0(wdata_skid[30]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[30]),
        .O(write_data[30]));
  LUT5 #(
    .INIT(32'h20222000)) 
    \slv_reg_control[31]_i_1 
       (.I0(\slv_reg_control[31]_i_3_n_0 ),
        .I1(\slv_reg_control[31]_i_4_n_0 ),
        .I2(wstrb_skid[3]),
        .I3(wvalid_skid),
        .I4(S_AXI_WSTRB[3]),
        .O(slv_reg_control[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[31]_i_2 
       (.I0(wdata_skid[31]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[31]),
        .O(write_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \slv_reg_control[31]_i_3 
       (.I0(S_AXI_AWADDR[0]),
        .I1(\awaddr_skid_reg_n_0_[2] ),
        .I2(S_AXI_AWADDR[1]),
        .I3(awvalid_skid),
        .I4(\awaddr_skid_reg_n_0_[3] ),
        .O(\slv_reg_control[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_reg_control[31]_i_4 
       (.I0(S_AXI_AWADDR[2]),
        .I1(awvalid_skid),
        .I2(\awaddr_skid_reg_n_0_[4] ),
        .I3(axi_bvalid04_out),
        .O(\slv_reg_control[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[3]_i_1 
       (.I0(wdata_skid[3]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[3]),
        .O(write_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[4]_i_1 
       (.I0(wdata_skid[4]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[4]),
        .O(write_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[5]_i_1 
       (.I0(wdata_skid[5]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[5]),
        .O(write_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[6]_i_1 
       (.I0(wdata_skid[6]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[6]),
        .O(write_data[6]));
  LUT6 #(
    .INIT(64'h2000202020000000)) 
    \slv_reg_control[7]_i_1 
       (.I0(\slv_reg_control[31]_i_3_n_0 ),
        .I1(\slv_reg_control[7]_i_3_n_0 ),
        .I2(axi_bvalid04_out),
        .I3(wstrb_skid[0]),
        .I4(wvalid_skid),
        .I5(S_AXI_WSTRB[0]),
        .O(slv_reg_control[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[7]_i_2 
       (.I0(wdata_skid[7]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[7]),
        .O(write_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[7]_i_3 
       (.I0(\awaddr_skid_reg_n_0_[4] ),
        .I1(awvalid_skid),
        .I2(S_AXI_AWADDR[2]),
        .O(\slv_reg_control[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000EEE0)) 
    \slv_reg_control[7]_i_4 
       (.I0(wvalid_skid),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(awvalid_skid),
        .I4(S_AXI_BVALID),
        .O(axi_bvalid04_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[8]_i_1 
       (.I0(wdata_skid[8]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[8]),
        .O(write_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_control[9]_i_1 
       (.I0(wdata_skid[9]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[9]),
        .O(write_data[9]));
  FDRE \slv_reg_control_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg_control[0]_i_1_n_0 ),
        .Q(\slv_reg_control_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \slv_reg_control_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[10]),
        .Q(\slv_reg_control_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[11]),
        .Q(\slv_reg_control_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[12]),
        .Q(\slv_reg_control_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[13]),
        .Q(\slv_reg_control_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[14]),
        .Q(\slv_reg_control_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[15]),
        .Q(\slv_reg_control_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[16]),
        .Q(\slv_reg_control_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[17]),
        .Q(\slv_reg_control_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[18]),
        .Q(\slv_reg_control_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[19]),
        .Q(\slv_reg_control_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[7]),
        .D(write_data[1]),
        .Q(core_op),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[20]),
        .Q(\slv_reg_control_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[21]),
        .Q(\slv_reg_control_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[22]),
        .Q(\slv_reg_control_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[23]),
        .D(write_data[23]),
        .Q(\slv_reg_control_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[24]),
        .Q(\slv_reg_control_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[25]),
        .Q(\slv_reg_control_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[26]),
        .Q(\slv_reg_control_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[27]),
        .Q(\slv_reg_control_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[28]),
        .Q(\slv_reg_control_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[29]),
        .Q(\slv_reg_control_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[7]),
        .D(write_data[2]),
        .Q(\slv_reg_control_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[30]),
        .Q(\slv_reg_control_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[31]),
        .D(write_data[31]),
        .Q(\slv_reg_control_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[7]),
        .D(write_data[3]),
        .Q(\slv_reg_control_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[7]),
        .D(write_data[4]),
        .Q(\slv_reg_control_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[7]),
        .D(write_data[5]),
        .Q(\slv_reg_control_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[7]),
        .D(write_data[6]),
        .Q(\slv_reg_control_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[7]),
        .D(write_data[7]),
        .Q(\slv_reg_control_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[8]),
        .Q(\slv_reg_control_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg_control_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_control[15]),
        .D(write_data[9]),
        .Q(\slv_reg_control_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_free_addr[15]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[1]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[1]),
        .I4(\slv_reg_free_addr[31]_i_2_n_0 ),
        .O(\slv_reg_free_addr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_free_addr[23]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[2]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[2]),
        .I4(\slv_reg_free_addr[31]_i_2_n_0 ),
        .O(\slv_reg_free_addr[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_free_addr[31]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[3]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[3]),
        .I4(\slv_reg_free_addr[31]_i_2_n_0 ),
        .O(\slv_reg_free_addr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \slv_reg_free_addr[31]_i_2 
       (.I0(S_AXI_AWADDR[0]),
        .I1(\awaddr_skid_reg_n_0_[2] ),
        .I2(S_AXI_AWADDR[1]),
        .I3(awvalid_skid),
        .I4(\awaddr_skid_reg_n_0_[3] ),
        .O(\slv_reg_free_addr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_free_addr[7]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[0]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[0]),
        .I4(\slv_reg_free_addr[31]_i_2_n_0 ),
        .O(\slv_reg_free_addr[7]_i_1_n_0 ));
  FDRE \slv_reg_free_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[0]),
        .Q(slv_reg_free_addr[0]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[10]),
        .Q(slv_reg_free_addr[10]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[11]),
        .Q(slv_reg_free_addr[11]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[12]),
        .Q(slv_reg_free_addr[12]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[13]),
        .Q(slv_reg_free_addr[13]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[14]),
        .Q(slv_reg_free_addr[14]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[15]),
        .Q(slv_reg_free_addr[15]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[16]),
        .Q(slv_reg_free_addr[16]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[17]),
        .Q(slv_reg_free_addr[17]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[18]),
        .Q(slv_reg_free_addr[18]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[19]),
        .Q(slv_reg_free_addr[19]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[1]),
        .Q(slv_reg_free_addr[1]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[20]),
        .Q(slv_reg_free_addr[20]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[21]),
        .Q(slv_reg_free_addr[21]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[22]),
        .Q(slv_reg_free_addr[22]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[23]_i_1_n_0 ),
        .D(write_data[23]),
        .Q(slv_reg_free_addr[23]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[24]),
        .Q(slv_reg_free_addr[24]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[25]),
        .Q(slv_reg_free_addr[25]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[26]),
        .Q(slv_reg_free_addr[26]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[27]),
        .Q(slv_reg_free_addr[27]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[28]),
        .Q(slv_reg_free_addr[28]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[29]),
        .Q(slv_reg_free_addr[29]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[2]),
        .Q(slv_reg_free_addr[2]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[30]),
        .Q(slv_reg_free_addr[30]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[31]_i_1_n_0 ),
        .D(write_data[31]),
        .Q(slv_reg_free_addr[31]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[3]),
        .Q(slv_reg_free_addr[3]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[4]),
        .Q(slv_reg_free_addr[4]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[5]),
        .Q(slv_reg_free_addr[5]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[6]),
        .Q(slv_reg_free_addr[6]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[7]_i_1_n_0 ),
        .D(write_data[7]),
        .Q(slv_reg_free_addr[7]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[8]),
        .Q(slv_reg_free_addr[8]),
        .R(p_0_in));
  FDRE \slv_reg_free_addr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg_free_addr[15]_i_1_n_0 ),
        .D(write_data[9]),
        .Q(slv_reg_free_addr[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg_size[0]_i_1 
       (.I0(wdata_skid[0]),
        .I1(wvalid_skid),
        .I2(S_AXI_WDATA[0]),
        .O(write_data[0]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_size[15]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[1]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[1]),
        .I4(\slv_reg_size[31]_i_2_n_0 ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_size[23]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[2]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[2]),
        .I4(\slv_reg_size[31]_i_2_n_0 ),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_size[31]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[3]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[3]),
        .I4(\slv_reg_size[31]_i_2_n_0 ),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCCAFFFAF)) 
    \slv_reg_size[31]_i_2 
       (.I0(S_AXI_AWADDR[1]),
        .I1(\awaddr_skid_reg_n_0_[3] ),
        .I2(S_AXI_AWADDR[0]),
        .I3(awvalid_skid),
        .I4(\awaddr_skid_reg_n_0_[2] ),
        .O(\slv_reg_size[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \slv_reg_size[7]_i_1 
       (.I0(\slv_reg_control[31]_i_4_n_0 ),
        .I1(wstrb_skid[0]),
        .I2(wvalid_skid),
        .I3(S_AXI_WSTRB[0]),
        .I4(\slv_reg_size[31]_i_2_n_0 ),
        .O(p_1_in[7]));
  FDRE \slv_reg_size_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[0]),
        .Q(slv_reg_size[0]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[10]),
        .Q(slv_reg_size[10]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[11]),
        .Q(slv_reg_size[11]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[12]),
        .Q(slv_reg_size[12]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[13]),
        .Q(slv_reg_size[13]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[14]),
        .Q(slv_reg_size[14]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[15]),
        .Q(slv_reg_size[15]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[16]),
        .Q(slv_reg_size[16]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[17]),
        .Q(slv_reg_size[17]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[18]),
        .Q(slv_reg_size[18]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[19]),
        .Q(slv_reg_size[19]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[1]),
        .Q(slv_reg_size[1]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[20]),
        .Q(slv_reg_size[20]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[21]),
        .Q(slv_reg_size[21]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[22]),
        .Q(slv_reg_size[22]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(write_data[23]),
        .Q(slv_reg_size[23]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[24]),
        .Q(slv_reg_size[24]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[25]),
        .Q(slv_reg_size[25]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[26]),
        .Q(slv_reg_size[26]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[27]),
        .Q(slv_reg_size[27]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[28]),
        .Q(slv_reg_size[28]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[29]),
        .Q(slv_reg_size[29]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[2]),
        .Q(slv_reg_size[2]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[30]),
        .Q(slv_reg_size[30]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(write_data[31]),
        .Q(slv_reg_size[31]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[3]),
        .Q(slv_reg_size[3]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[4]),
        .Q(slv_reg_size[4]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[5]),
        .Q(slv_reg_size[5]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[6]),
        .Q(slv_reg_size[6]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(write_data[7]),
        .Q(slv_reg_size[7]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[8]),
        .Q(slv_reg_size[8]),
        .R(p_0_in));
  FDRE \slv_reg_size_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(write_data[9]),
        .Q(slv_reg_size[9]),
        .R(p_0_in));
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  rlmalloc_rlmalloc_top_0_1_malloc u_malloc_core
       (.busy(core_busy),
        .clk(S_AXI_ACLK),
        .data_in(slv_reg_free_addr),
        .data_out(core_data_out),
        .done(irq),
        .error(core_error),
        .op(core_op),
        .reset_n(S_AXI_ARESETN),
        .size_in(slv_reg_size),
        .start(\slv_reg_control_reg_n_0_[0] ));
  FDRE \wdata_skid_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(wdata_skid[0]),
        .R(1'b0));
  FDRE \wdata_skid_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(wdata_skid[10]),
        .R(1'b0));
  FDRE \wdata_skid_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(wdata_skid[11]),
        .R(1'b0));
  FDRE \wdata_skid_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(wdata_skid[12]),
        .R(1'b0));
  FDRE \wdata_skid_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(wdata_skid[13]),
        .R(1'b0));
  FDRE \wdata_skid_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(wdata_skid[14]),
        .R(1'b0));
  FDRE \wdata_skid_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(wdata_skid[15]),
        .R(1'b0));
  FDRE \wdata_skid_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(wdata_skid[16]),
        .R(1'b0));
  FDRE \wdata_skid_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(wdata_skid[17]),
        .R(1'b0));
  FDRE \wdata_skid_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(wdata_skid[18]),
        .R(1'b0));
  FDRE \wdata_skid_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(wdata_skid[19]),
        .R(1'b0));
  FDRE \wdata_skid_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(wdata_skid[1]),
        .R(1'b0));
  FDRE \wdata_skid_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(wdata_skid[20]),
        .R(1'b0));
  FDRE \wdata_skid_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(wdata_skid[21]),
        .R(1'b0));
  FDRE \wdata_skid_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(wdata_skid[22]),
        .R(1'b0));
  FDRE \wdata_skid_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(wdata_skid[23]),
        .R(1'b0));
  FDRE \wdata_skid_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(wdata_skid[24]),
        .R(1'b0));
  FDRE \wdata_skid_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(wdata_skid[25]),
        .R(1'b0));
  FDRE \wdata_skid_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(wdata_skid[26]),
        .R(1'b0));
  FDRE \wdata_skid_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(wdata_skid[27]),
        .R(1'b0));
  FDRE \wdata_skid_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(wdata_skid[28]),
        .R(1'b0));
  FDRE \wdata_skid_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(wdata_skid[29]),
        .R(1'b0));
  FDRE \wdata_skid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(wdata_skid[2]),
        .R(1'b0));
  FDRE \wdata_skid_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(wdata_skid[30]),
        .R(1'b0));
  FDRE \wdata_skid_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(wdata_skid[31]),
        .R(1'b0));
  FDRE \wdata_skid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(wdata_skid[3]),
        .R(1'b0));
  FDRE \wdata_skid_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(wdata_skid[4]),
        .R(1'b0));
  FDRE \wdata_skid_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(wdata_skid[5]),
        .R(1'b0));
  FDRE \wdata_skid_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(wdata_skid[6]),
        .R(1'b0));
  FDRE \wdata_skid_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(wdata_skid[7]),
        .R(1'b0));
  FDRE \wdata_skid_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(wdata_skid[8]),
        .R(1'b0));
  FDRE \wdata_skid_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(wdata_skid[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \wstrb_skid[3]_i_1 
       (.I0(wvalid_skid),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_ARESETN),
        .O(\wstrb_skid[3]_i_1_n_0 ));
  FDRE \wstrb_skid_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WSTRB[0]),
        .Q(wstrb_skid[0]),
        .R(1'b0));
  FDRE \wstrb_skid_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WSTRB[1]),
        .Q(wstrb_skid[1]),
        .R(1'b0));
  FDRE \wstrb_skid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WSTRB[2]),
        .Q(wstrb_skid[2]),
        .R(1'b0));
  FDRE \wstrb_skid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\wstrb_skid[3]_i_1_n_0 ),
        .D(S_AXI_WSTRB[3]),
        .Q(wstrb_skid[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7200)) 
    wvalid_skid_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_WREADY),
        .I2(wvalid_skid),
        .I3(S_AXI_ARESETN),
        .O(wvalid_skid_i_1_n_0));
  FDRE wvalid_skid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(wvalid_skid_i_1_n_0),
        .Q(wvalid_skid),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
