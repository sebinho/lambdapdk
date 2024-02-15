// //#############################################################################
// //# Function: Dual data rate input buffer                                     #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_iddr #(parameter PROP = "DEFAULT")   (
//     input      clk,     // clock
//     input      in,      // data input sampled on both edges of clock
//     output reg outrise, // rising edge sample
//     output reg outfall  // falling edge sample
//     );
// 
//    // Negedge Sample
//    always @ (negedge clk)
//      outfall <= in;
// 
//    // Posedge Sample
//    reg 	       inrise;
//    always @ (posedge clk)
//      inrise <= in;
// 
//    // Posedge Latch (for hold)
//    always @ (clk or inrise)
//      if(~clk)
//        outrise <= inrise;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_iddr(clk, in, outrise, outfall);
  wire _0_;
  wire _1_;
  wire _2_;
  input clk;
  wire clk;
  input in;
  wire in;
  wire inrise;
  output outfall;
  wire outfall;
  output outrise;
  wire outrise;
  INVx2_ASAP7_75t_L _3_ (
    .A(clk),
    .Y(_2_)
  );
  INVx2_ASAP7_75t_L _4_ (
    .A(_0_),
    .Y(outfall)
  );
  INVx2_ASAP7_75t_L _5_ (
    .A(_1_),
    .Y(inrise)
  );
  DLLx1_ASAP7_75t_L _6_ (
    .CLK(clk),
    .D(inrise),
    .Q(outrise)
  );
  DFFLQNx2_ASAP7_75t_L _7_ (
    .CLK(_2_),
    .D(in),
    .QN(_1_)
  );
  DFFLQNx2_ASAP7_75t_L _8_ (
    .CLK(clk),
    .D(in),
    .QN(_0_)
  );
endmodule
