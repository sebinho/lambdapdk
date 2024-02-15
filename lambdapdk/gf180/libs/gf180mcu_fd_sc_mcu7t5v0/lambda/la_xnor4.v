// //#############################################################################
// //# Function: 4-Input Exclusive-Nor Gate                                      #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_xnor4 #(parameter PROP = "DEFAULT")   (
//     input  a,
//     input  b,
//     input  c,
//     input  d,
//     output z
//     );
// 
//    assign z =  ~(a ^ b ^ c ^ d);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_xnor4(a, b, c, d, z);
  wire _0_;
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
  gf180mcu_fd_sc_mcu7t5v0__xor2_2 _1_ (
    .A1(c),
    .A2(d),
    .Z(_0_)
  );
  gf180mcu_fd_sc_mcu7t5v0__xnor3_2 _2_ (
    .A1(b),
    .A2(a),
    .A3(_0_),
    .ZN(z)
  );
endmodule
