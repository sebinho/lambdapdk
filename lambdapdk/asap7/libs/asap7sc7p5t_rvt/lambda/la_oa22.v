// //#############################################################################
// //# Function: Or-And (oa22) Gate                                              #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_oa22 #(parameter PROP = "DEFAULT")   (
//     input  a0,
//     input  a1,
//     input  b0,
//     input  b1,
//     output z
//     );
// 
//    assign z = (a0 | a1) & (b0 | b1);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_oa22(a0, a1, b0, b1, z);
  input a0;
  wire a0;
  input a1;
  wire a1;
  input b0;
  wire b0;
  input b1;
  wire b1;
  output z;
  wire z;
  OA22x2_ASAP7_75t_R _0_ (
    .A1(a1),
    .A2(a0),
    .B1(b1),
    .B2(b0),
    .Y(z)
  );
endmodule
