// //#############################################################################
// //# Function: And-Or-Inverter (aoi33) Gate                                    #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_aoi33 #(parameter PROP = "DEFAULT")   (
//     input  a0,
//     input  a1,
//     input  a2,
//     input  b0,
//     input  b1,
//     input  b2,
//     output z
//     );
// 
//    assign z = ~((a0 & a1 & a2) | (b0 & b1 & b2));
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_aoi33(a0, a1, a2, b0, b1, b2, z);
  wire _0_;
  input a0;
  wire a0;
  input a1;
  wire a1;
  input a2;
  wire a2;
  input b0;
  wire b0;
  input b1;
  wire b1;
  input b2;
  wire b2;
  output z;
  wire z;
  AO33x2_ASAP7_75t_SL _1_ (
    .A1(a1),
    .A2(a0),
    .A3(a2),
    .B1(b1),
    .B2(b0),
    .B3(b2),
    .Y(_0_)
  );
  INVx2_ASAP7_75t_SL _2_ (
    .A(_0_),
    .Y(z)
  );
endmodule
