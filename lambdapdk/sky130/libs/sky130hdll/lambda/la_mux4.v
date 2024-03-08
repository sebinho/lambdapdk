// //#############################################################################
// //# Function: 4-Input Mux                                                     #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_mux4 #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  d0,
//     input  d1,
//     input  d2,
//     input  d3,
//     input  s0,
//     input  s1,
//     output z
// );
// 
//     assign z = (d0 & ~s1 & ~s0) | (d1 & ~s1 & s0) | (d2 & s1 & ~s0) | (d3 & s1 & s0);
// 
// endmodule

/* Generated by Yosys 0.38+92 (git sha1 84116c9a3, x86_64-conda-linux-gnu-cc 11.2.0 -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1708682838165/work=/usr/local/src/conda/yosys-0.38_93_g84116c9a3 -fdebug-prefix-map=/user/projekt_pia/miniconda3/envs/sc=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

module la_mux4(d0, d1, d2, d3, s0, s1, z);
  wire _0_;
  wire _1_;
  input d0;
  wire d0;
  input d1;
  wire d1;
  input d2;
  wire d2;
  input d3;
  wire d3;
  input s0;
  wire s0;
  input s1;
  wire s1;
  output z;
  wire z;
  sky130_fd_sc_hdll__mux2_1 _2_ (
    .A0(d0),
    .A1(d2),
    .S(s1),
    .X(_0_)
  );
  sky130_fd_sc_hdll__mux2_1 _3_ (
    .A0(d1),
    .A1(d3),
    .S(s1),
    .X(_1_)
  );
  sky130_fd_sc_hdll__clkmux2_1 _4_ (
    .A0(_0_),
    .A1(_1_),
    .S(s0),
    .X(z)
  );
endmodule
