// //#############################################################################
// //# Function:  Positive edge-triggered static inverting D-type flop-flop with #
// //             async active low reset.                                        #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:   MIT (see LICENSE file in Lambda repository)                    #
// //#############################################################################
// 
// module la_dffrqn #(parameter PROP = "DEFAULT")   (
//     input      d,
//     input      clk,
//     input      nreset,
//     output reg qn
//     );
// 
//    always @ (posedge clk or negedge nreset)
//      if(!nreset)
//        qn <= 1'b1;
//      else
//        qn <= ~d;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_dffrqn(d, clk, nreset, qn);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  input clk;
  wire clk;
  input d;
  wire d;
  input nreset;
  wire nreset;
  output qn;
  wire qn;
  INVx2_ASAP7_75t_R _4_ (
    .A(d),
    .Y(_0_)
  );
  INVx2_ASAP7_75t_R _5_ (
    .A(nreset),
    .Y(_2_)
  );
  INVx2_ASAP7_75t_R _6_ (
    .A(_1_),
    .Y(qn)
  );
  ASYNC_DFFHx1_ASAP7_75t_R _7_ (
    .CLK(clk),
    .D(_0_),
    .QN(_1_),
    .RESET(_3_),
    .SET(_2_)
  );
  TIELOx1_ASAP7_75t_R _8_ (
    .L(_3_)
  );
endmodule