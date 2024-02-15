// //#############################################################################
// //# Function: 4-Input Inverting Mux                                           #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_muxi4 #(parameter PROP = "DEFAULT")   (
//     input  d0,
//     input  d1,
//     input  d2,
//     input  d3,
//     input  s0,
//     input  s1,
//     output z
//     );
// 
//    assign z = ~((d0 & ~s1 & ~s0) |
// 		(d1 & ~s1 &  s0) |
// 		(d2 &  s1 & ~s0) |
// 		(d2 &  s1 &  s0));
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_muxi4(d0, d1, d2, d3, s0, s1, z);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  input d0;
  wire d0;
  input d1;
  wire d1;
  input d2;
  wire d2;
  input d3;
  wire d3;
  input s0;
  wire s0;
  input s1;
  wire s1;
  output z;
  wire z;
  INVx2_ASAP7_75t_L _4_ (
    .A(d0),
    .Y(_1_)
  );
  NAND2x1_ASAP7_75t_L _5_ (
    .A(s0),
    .B(d1),
    .Y(_2_)
  );
  OA21x2_ASAP7_75t_L _6_ (
    .A1(s0),
    .A2(_1_),
    .B(_2_),
    .Y(_3_)
  );
  NAND2x1_ASAP7_75t_L _7_ (
    .A(s1),
    .B(d2),
    .Y(_0_)
  );
  OA21x2_ASAP7_75t_L _8_ (
    .A1(s1),
    .A2(_3_),
    .B(_0_),
    .Y(z)
  );
endmodule
