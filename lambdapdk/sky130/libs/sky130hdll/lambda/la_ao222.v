// //#############################################################################
// //# Function: And-Or (ao222) Gate                                             #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_ao222 #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  a0,
//     input  a1,
//     input  b0,
//     input  b1,
//     input  c0,
//     input  c1,
//     output z
// );
// 
//     assign z = (a0 & a1) | (b0 & b1) | (c0 & c1);
// 
// endmodule

/* Generated by Yosys 0.38+92 (git sha1 84116c9a3, x86_64-conda-linux-gnu-cc 11.2.0 -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1708682838165/work=/usr/local/src/conda/yosys-0.38_93_g84116c9a3 -fdebug-prefix-map=/user/projekt_pia/miniconda3/envs/sc=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

module la_ao222(a0, a1, b0, b1, c0, c1, z);
  wire _0_;
  input a0;
  wire a0;
  input a1;
  wire a1;
  input b0;
  wire b0;
  input b1;
  wire b1;
  input c0;
  wire c0;
  input c1;
  wire c1;
  output z;
  wire z;
  sky130_fd_sc_hdll__a222oi_1 _1_ (
    .A1(a1),
    .A2(a0),
    .B1(b1),
    .B2(b0),
    .C1(c1),
    .C2(c0),
    .Y(_0_)
  );
  sky130_fd_sc_hdll__inv_1 _2_ (
    .A(_0_),
    .Y(z)
  );
endmodule
