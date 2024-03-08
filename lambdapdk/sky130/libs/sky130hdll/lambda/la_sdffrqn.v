// //#############################################################################
// //# Function:  Positive edge-triggered static inverting D-type flop-flop with #
// //             async active low reset and scan input                          #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:   MIT (see LICENSE file in Lambda repository)                    #
// //#############################################################################
// 
// module la_sdffrqn #(
//     parameter PROP = "DEFAULT"
// ) (
//     input      d,
//     input      si,
//     input      se,
//     input      clk,
//     input      nreset,
//     output reg qn
// );
// 
//     always @(posedge clk or negedge nreset)
//         if (!nreset) qn <= 1'b1;
//         else qn <= se ? ~si : ~d;
// 
// endmodule

/* Generated by Yosys 0.38+92 (git sha1 84116c9a3, x86_64-conda-linux-gnu-cc 11.2.0 -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1708682838165/work=/usr/local/src/conda/yosys-0.38_93_g84116c9a3 -fdebug-prefix-map=/user/projekt_pia/miniconda3/envs/sc=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

module la_sdffrqn(d, si, se, clk, nreset, qn);
  wire _0_;
  input clk;
  wire clk;
  input d;
  wire d;
  input nreset;
  wire nreset;
  output qn;
  wire qn;
  input se;
  wire se;
  input si;
  wire si;
  sky130_fd_sc_hdll__mux2i_1 _1_ (
    .A0(d),
    .A1(si),
    .S(se),
    .Y(_0_)
  );
  sky130_fd_sc_hdll__dfstp_1 _2_ (
    .CLK(clk),
    .D(_0_),
    .Q(qn),
    .SET_B(nreset)
  );
endmodule
