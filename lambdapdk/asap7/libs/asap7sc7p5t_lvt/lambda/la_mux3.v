// //#############################################################################
// //# Function: 3-Input Mux                                                     #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_mux3 #(parameter PROP = "DEFAULT")   (
//     input  d0,
//     input  d1,
//     input  d2,
//     input  s0,
//     input  s1,
//     output z
//     );
// 
//    assign z = (d0 & ~s0 & ~s1) |
// 	      (d1 & s0  & ~s1) |
// 	      (d2 & s1);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_mux3(d0, d1, d2, s0, s1, z);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  input d0;
  wire d0;
  input d1;
  wire d1;
  input d2;
  wire d2;
  input s0;
  wire s0;
  input s1;
  wire s1;
  output z;
  wire z;
  INVx2_ASAP7_75t_L _05_ (
    .A(s1),
    .Y(_02_)
  );
  INVx2_ASAP7_75t_L _06_ (
    .A(s0),
    .Y(_03_)
  );
  AND2x4_ASAP7_75t_L _07_ (
    .A(d1),
    .B(s0),
    .Y(_04_)
  );
  AO21x1_ASAP7_75t_L _08_ (
    .A1(_03_),
    .A2(d0),
    .B(_04_),
    .Y(_00_)
  );
  AND2x2_ASAP7_75t_L _09_ (
    .A(s1),
    .B(d2),
    .Y(_01_)
  );
  AO21x1_ASAP7_75t_L _10_ (
    .A1(_02_),
    .A2(_00_),
    .B(_01_),
    .Y(z)
  );
endmodule
