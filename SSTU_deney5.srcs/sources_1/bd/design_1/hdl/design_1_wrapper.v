//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Nov 24 11:21:24 2022
//Host        : aet-windows running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (addra,
    clka,
    douta,
    wea);
  input [3:0]addra;
  input clka;
  output [7:0]douta;
  input wea;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire wea;

  design_1 design_1_i
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .wea(wea));
endmodule
