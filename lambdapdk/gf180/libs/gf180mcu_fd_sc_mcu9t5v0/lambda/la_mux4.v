// //#############################################################################
// //# Function: 4-Input Mux                                                     #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_mux4 #(parameter PROP = "DEFAULT")  (
//    input  d0,
//    input  d1,
//    input  d2,
//    input  d3,
//    input  s0,
//    input  s1,
//    output z
//    );
// 
//    assign z = (d0 & ~s1 & ~s0) |
// 	      (d1 & ~s1 &  s0) |
// 	      (d2 &  s1 & ~s0) |
// 	      (d3 &  s1 &  s0);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_mux4(d0, d1, d2, d3, s0, s1, z);
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
  gf180mcu_fd_sc_mcu9t5v0__mux4_2 _0_ (
    .I0(d0),
    .I1(d1),
    .I2(d2),
    .I3(d3),
    .S0(s0),
    .S1(s1),
    .Z(z)
  );
endmodule
