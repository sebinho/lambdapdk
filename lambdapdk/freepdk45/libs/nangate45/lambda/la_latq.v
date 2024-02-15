// //#############################################################################
// //# Function:  D-type active-high transparent latch                           #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:   MIT (see LICENSE file in Lambda repository)                    #
// //#############################################################################
// 
// module la_latq #(parameter PROP = "DEFAULT")   (
//     input      d,
//     input      clk,
//     output reg q
//     );
// 
//    always @ (clk or d)
//      if(clk)
//        q <= d;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_latq(d, clk, q);
  input clk;
  wire clk;
  input d;
  wire d;
  output q;
  wire q;
  DLH_X1 _0_ (
    .D(d),
    .G(clk),
    .Q(q)
  );
endmodule
