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
  input a0;
  wire a0;
  input a1;
  wire a1;
  input b0;
  wire b0;
  output z;
  wire z;
  AO21x1_ASAP7_75t_SL _0_ (
    .A1(a1),
    .A2(a0),
    .B(b0),
    .Y(z)
  );
endmodule
