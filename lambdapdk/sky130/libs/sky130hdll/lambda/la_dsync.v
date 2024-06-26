// //#############################################################################
// //# Function: Synchronizer                                                    #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_dsync #(
//     parameter PROP = "DEFAULT"
// ) (
//     input  clk,  // clock
//     input  in,   // input data
//     output out   // synchronized data
// );
// 
//     localparam STAGES = 2;
//     localparam RND = 1;
// 
//     reg     [STAGES:0] shiftreg;
//     integer            sync_delay;
// 
//     always @(posedge clk) begin
//         shiftreg[STAGES:0] <= {shiftreg[STAGES-1:0], in};
// `ifndef SYNTHESIS
//         sync_delay <= {$random} % 2;
// `endif
//     end
// 
// `ifdef SYNTHESIS
//     assign out = shiftreg[STAGES-1];
// `else
//     assign out = (|sync_delay & (|RND)) ? shiftreg[STAGES] : shiftreg[STAGES-1];
// `endif
// 
// endmodule

/* Generated by Yosys 0.38+92 (git sha1 84116c9a3, x86_64-conda-linux-gnu-cc 11.2.0 -fvisibility-inlines-hidden -fmessage-length=0 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -fdebug-prefix-map=/root/conda-eda/conda-eda/workdir/conda-env/conda-bld/yosys_1708682838165/work=/usr/local/src/conda/yosys-0.38_93_g84116c9a3 -fdebug-prefix-map=/user/projekt_pia/miniconda3/envs/sc=/usr/local/src/conda-prefix -fPIC -Os -fno-merge-constants) */

module la_dsync(clk, in, out);
  wire _0_;
  input clk;
  wire clk;
  input in;
  wire in;
  output out;
  wire out;
  wire \shiftreg[0] ;
  sky130_fd_sc_hdll__dfrtp_1 _1_ (
    .CLK(clk),
    .D(in),
    .Q(\shiftreg[0] ),
    .RESET_B(_0_)
  );
  sky130_fd_sc_hdll__dfrtp_1 _2_ (
    .CLK(clk),
    .D(\shiftreg[0] ),
    .Q(out),
    .RESET_B(_0_)
  );
  sky130_fd_sc_hdll__conb_1 _3_ (
    .HI(_0_)
  );
endmodule
