// //#############################################################################
// //# Function: And-Or (ao21) Gate                                              #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_ao21 #(parameter PROP = "DEFAULT")  (
//    input  a0,
//    input  a1,
//    input  b0,
//    output z
//    );
// 
//    assign z = (a0 & a1) | b0;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_ao21(a0, a1, b0, z);
  wire _0_;
  input a0;
  wire a0;
  input a1;
  wire a1;
  input b0;
  wire b0;
  output z;
  wire z;
  AOI21_X2 _1_ (
    .A(b0),
    .B1(a0),
    .B2(a1),
    .ZN(_0_)
  );
  INV_X1 _2_ (
    .A(_0_),
    .ZN(z)
  );
endmodule