// //#############################################################################
// //# Function: 2-Input Mux                                                     #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_mux2 #(parameter PROP = "DEFAULT")   (
//     input  d0,
//     input  d1,
//     input  s,
//     output z
//     );
// 
//    assign z = (d0 & ~s) | (d1 & s);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_mux2(d0, d1, s, z);
  wire _0_;
  wire _1_;
  input d0;
  wire d0;
  input d1;
  wire d1;
  input s;
  wire s;
  output z;
  wire z;
  INVx2_ASAP7_75t_SL _2_ (
    .A(s),
    .Y(_0_)
  );
  AND2x4_ASAP7_75t_SL _3_ (
    .A(d1),
    .B(s),
    .Y(_1_)
  );
  AO21x1_ASAP7_75t_SL _4_ (
    .A1(d0),
    .A2(_0_),
    .B(_1_),
    .Y(z)
  );
endmodule
