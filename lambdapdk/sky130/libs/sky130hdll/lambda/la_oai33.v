// //#############################################################################
// //# Function: Or-And-Inverter (oai33) Gate                                    #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_oai33 #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  a0,
//     input  a1,
//     input  a2,
//     input  b0,
//     input  b1,
//     input  b2,
//     output z
// );
// 
//     assign z = ~((a0 | a1 | a2) & (b0 | b1 | b2));
// 
// endmodule

/* Generated by Yosys 0.38+92 (git sha1 84116c9a3, x86_64-conda-linux-gnu-cc 11.2.0 -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1708682838165/work=/usr/local/src/conda/yosys-0.38_93_g84116c9a3 -fdebug-prefix-map=/user/projekt_pia/miniconda3/envs/sc=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

module la_oai33(a0, a1, a2, b0, b1, b2, z);
  wire _0_;
  input a0;
  wire a0;
  input a1;
  wire a1;
  input a2;
  wire a2;
  input b0;
  wire b0;
  input b1;
  wire b1;
  input b2;
  wire b2;
  output z;
  wire z;
  sky130_fd_sc_hdll__or3_1 _1_ (
    .A(b1),
    .B(b0),
    .C(b2),
    .X(_0_)
  );
  sky130_fd_sc_hdll__o31ai_1 _2_ (
    .A1(a1),
    .A2(a0),
    .A3(a2),
    .B1(_0_),
    .Y(z)
  );
endmodule
