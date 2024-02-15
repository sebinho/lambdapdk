// //#############################################################################
// //# Function: 3-Input Inverting Mux                                           #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_muxi3 #(parameter PROP = "DEFAULT")   (
//     input  d0,
//     input  d1,
//     input  d2,
//     input  s0,
//     input  s1,
//     output z
//     );
// 
//    assign z = ~((d0 & ~s0 & ~s1) |
// 		(d1 & s0  & ~s1) |
// 		(d2 & s1));
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_muxi3(d0, d1, d2, s0, s1, z);
  wire _0_;
  wire _1_;
  wire _2_;
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
  gf180mcu_fd_sc_mcu7t5v0__clkinv_2 _3_ (
    .I(s1),
    .ZN(_0_)
  );
  gf180mcu_fd_sc_mcu7t5v0__mux2_2 _4_ (
    .I0(d0),
    .I1(d1),
    .S(s0),
    .Z(_1_)
  );
  gf180mcu_fd_sc_mcu7t5v0__and2_2 _5_ (
    .A1(s1),
    .A2(d2),
    .Z(_2_)
  );
  gf180mcu_fd_sc_mcu7t5v0__aoi21_2 _6_ (
    .A1(_0_),
    .A2(_1_),
    .B(_2_),
    .ZN(z)
  );
endmodule
