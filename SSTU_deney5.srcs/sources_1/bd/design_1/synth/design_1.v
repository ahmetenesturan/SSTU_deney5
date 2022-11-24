//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Nov 24 11:21:24 2022
//Host        : aet-windows running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (addra,
    clka,
    douta,
    wea);
  input [3:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA, CLK_DOMAIN design_1_clka, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clka;
  output [7:0]douta;
  input wea;

  wire [3:0]addra_1;
  wire [7:0]blk_mem_gen_0_douta;
  wire clka_1;
  wire wea_1;

  assign addra_1 = addra[3:0];
  assign clka_1 = clka;
  assign douta[7:0] = blk_mem_gen_0_douta;
  assign wea_1 = wea;
  design_1_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(addra_1),
        .clka(clka_1),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .douta(blk_mem_gen_0_douta),
        .wea(wea_1));
endmodule
