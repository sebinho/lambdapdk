// //#############################################################################
// //# Function: And-Or (ao31) Gate                                              #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_ao31 #(parameter PROP = "DEFAULT")  (
//    input  a0,
//    input  a1,
//    input  a2,
//    input  b0,
//    output z
//    );
// 
//    assign z = (a0 & a1 & a2) | b0;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_ao31(a0, a1, a2, b0, z);
  input a0;
  wire a0;
  input a1;
  wire a1;
  input a2;
  wire a2;
  input b0;
  wire b0;
  output z;
  wire z;
  AO31x2_ASAP7_75t_L _0_ (
    .A1(a1),
    .A2(a0),
    .A3(a2),
    .B(b0),
    .Y(z)
  );
endmodule
