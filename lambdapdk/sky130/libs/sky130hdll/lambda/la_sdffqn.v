// //#############################################################################
// //# Function: Positive edge-triggered inverting static D-type flop-flop       #
// //#           with scan input.                                                #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_sdffqn #(
//     parameter PROP = "DEFAULT"
// ) (
//     input      d,
//     input      si,
//     input      se,
//     input      clk,
//     output reg qn
// );
// 
//     always @(posedge clk) qn <= se ? ~si : ~d;
// 
// endmodule

/* Generated by Yosys 0.38+92 (git sha1 84116c9a3, x86_64-conda-linux-gnu-cc 11.2.0 -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1708682838165/work=/usr/local/src/conda/yosys-0.38_93_g84116c9a3 -fdebug-prefix-map=/user/projekt_pia/miniconda3/envs/sc=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

module la_sdffqn(d, si, se, clk, qn);
  wire _0_;
  wire _1_;
  input clk;
  wire clk;
  input d;
  wire d;
  output qn;
  wire qn;
  input se;
  wire se;
  input si;
  wire si;
  sky130_fd_sc_hdll__mux2i_1 _2_ (
    .A0(d),
    .A1(si),
    .S(se),
    .Y(_0_)
  );
  sky130_fd_sc_hdll__dfrtp_1 _3_ (
    .CLK(clk),
    .D(_0_),
    .Q(qn),
    .RESET_B(_1_)
  );
  sky130_fd_sc_hdll__conb_1 _4_ (
    .HI(_1_)
  );
endmodule
