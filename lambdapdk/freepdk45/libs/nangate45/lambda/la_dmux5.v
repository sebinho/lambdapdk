// //#############################################################################
// //# Function: 5-Input one-hot mux                                             #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_dmux5
//   #(
//     parameter PROP = "DEFAULT"  // cell property
//     )
//    (
//     input  sel4,
//     input  sel3,
//     input  sel2,
//     input  sel1,
//     input  sel0,
//     input  in4,
//     input  in3,
//     input  in2,
//     input  in1,
//     input  in0,
//     output out
//     );
// 
//    assign out = (sel0 & in0) |
// 		(sel1 & in1) |
// 		(sel2 & in2) |
// 		(sel3 & in3) |
// 		(sel4 & in4);
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_dmux5(sel4, sel3, sel2, sel1, sel0, in4, in3, in2, in1, in0, out);
  wire _0_;
  wire _1_;
  input in0;
  wire in0;
  input in1;
  wire in1;
  input in2;
  wire in2;
  input in3;
  wire in3;
  input in4;
  wire in4;
  output out;
  wire out;
  input sel0;
  wire sel0;
  input sel1;
  wire sel1;
  input sel2;
  wire sel2;
  input sel3;
  wire sel3;
  input sel4;
  wire sel4;
  AOI22_X1 _2_ (
    .A1(in4),
    .A2(sel4),
    .B1(in0),
    .B2(sel0),
    .ZN(_0_)
  );
  AOI222_X2 _3_ (
    .A1(in2),
    .A2(sel2),
    .B1(in3),
    .B2(sel3),
    .C1(in1),
    .C2(sel1),
    .ZN(_1_)
  );
  NAND2_X1 _4_ (
    .A1(_0_),
    .A2(_1_),
    .ZN(out)
  );
endmodule
