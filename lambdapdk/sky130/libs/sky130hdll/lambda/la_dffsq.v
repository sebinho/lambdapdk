// //#############################################################################
// //# Function:  Positive edge-triggered static D-type flop-flop with async     #
// //#            active low preset.                                             #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:   MIT (see LICENSE file in Lambda repository)                    #
// //#############################################################################
// 
// module la_dffsq #(
//     parameter PROP = "DEFAULT"
// ) (
//     input      d,
//     input      clk,
//     input      nset,
//     output reg q
// );
// 
//     always @(posedge clk or negedge nset)
//         if (!nset) q <= 1'b1;
//         else q <= d;
// 
// endmodule

/* Generated by Yosys 0.38+92 (git sha1 84116c9a3, x86_64-conda-linux-gnu-cc 11.2.0 -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1708682838165/work=/usr/local/src/conda/yosys-0.38_93_g84116c9a3 -fdebug-prefix-map=/user/projekt_pia/miniconda3/envs/sc=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

module la_dffsq(d, clk, nset, q);
  input clk;
  wire clk;
  input d;
  wire d;
  input nset;
  wire nset;
  output q;
  wire q;
  sky130_fd_sc_hdll__dfstp_1 _0_ (
    .CLK(clk),
    .D(d),
    .Q(q),
    .SET_B(nset)
  );
endmodule
