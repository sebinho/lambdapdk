// //#############################################################################
// //# Function: Negative edge-triggered static D-type flop-flop                 #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_dffnq #(parameter PROP = "DEFAULT")   (
//     input      d,
//     input      clk,
//     output reg q
//     );
// 
//    always @ (negedge clk)
//      q <= d;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_dffnq(d, clk, q);
  wire _0_;
  input clk;
  wire clk;
  input d;
  wire d;
  output q;
  wire q;
  INVx2_ASAP7_75t_L _1_ (
    .A(_0_),
    .Y(q)
  );
  DFFLQNx2_ASAP7_75t_L _2_ (
    .CLK(clk),
    .D(d),
    .QN(_0_)
  );
endmodule
