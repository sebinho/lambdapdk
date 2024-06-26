// //#############################################################################
// //# Function: 4 Input Nor Gate                                                #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_nor4 #(parameter PROP = "DEFAULT")   (
//     input  a,
//     input  b,
//     input  c,
//     input  d,
//     output z
//     );
// 
//    assign z = ~(a | b | c | d);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_nor4(a, b, c, d, z);
  input a;
  wire a;
  input b;
  wire b;
  input c;
  wire c;
  input d;
  wire d;
  output z;
  wire z;
  NOR4_X1 _0_ (
    .A1(b),
    .A2(a),
    .A3(c),
    .A4(d),
    .ZN(z)
  );
endmodule
