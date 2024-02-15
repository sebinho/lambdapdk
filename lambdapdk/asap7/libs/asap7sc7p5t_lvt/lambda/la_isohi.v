// //#############################################################################
// //# Function: Power isolation circuit                                         #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_isohi
//   #(parameter PROP = "DEFAULT")
//    (
//     input  iso, // isolation signal
//     input  in, // input
//     output out  // out = iso | in
//     );
// 
//    assign out = iso | in;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_isohi(iso, in, out);
  input in;
  wire in;
  input iso;
  wire iso;
  output out;
  wire out;
  OR2x2_ASAP7_75t_L _0_ (
    .A(in),
    .B(iso),
    .Y(out)
  );
endmodule
