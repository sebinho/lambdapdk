// //#############################################################################
// //# Function: 3 Input Nor Gate                                                #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_nor3 #(parameter PROP = "DEFAULT")   (
//     input  a,
//     input  b,
//     input  c,
//     output z
//     );
// 
//    assign z = ~(a | b | c);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_nor3(a, b, c, z);
  input a;
  wire a;
  input b;
  wire b;
  input c;
  wire c;
  output z;
  wire z;
  NOR3x1_ASAP7_75t_R _0_ (
    .A(b),
    .B(a),
    .C(c),
    .Y(z)
  );
endmodule
