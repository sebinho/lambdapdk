// //#############################################################################
// //# Function: Or-And-Inverter (oai311) Gate                                   #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_oai311 #(parameter PROP = "DEFAULT")  (
//    input  a0,
//    input  a1,
//    input  a2,
//    input  b0,
//    input  c0,
//    output z
//    );
// 
//    assign z = ~((a0 | a1 | a2) & b0 & c0);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_oai311(a0, a1, a2, b0, c0, z);
  wire _0_;
  input a0;
  wire a0;
  input a1;
  wire a1;
  input a2;
  wire a2;
  input b0;
  wire b0;
  input c0;
  wire c0;
  output z;
  wire z;
  OR3x2_ASAP7_75t_R _1_ (
    .A(a1),
    .B(a0),
    .C(a2),
    .Y(_0_)
  );
  NAND3x1_ASAP7_75t_R _2_ (
    .A(b0),
    .B(c0),
    .C(_0_),
    .Y(z)
  );
endmodule
