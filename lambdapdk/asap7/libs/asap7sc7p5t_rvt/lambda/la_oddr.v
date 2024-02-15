// //#############################################################################
// //# Function: Dual data rate output buffer                                    #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_oddr #(parameter PROP = "DEFAULT")  (
//    input  clk, // clock input
//    input  in0, // data for clk=0
//    input  in1, // data for clk=1
//    output out  // dual data rate output
//    );
// 
//    //Making in1 stable for clk=1
//    reg 	  in1_sh;
//    always @ (clk or in1)
//      if(~clk)
//        in1_sh <= in1;
// 
//    //Using clock as data selctor
//    assign out = clk ? in1_sh : in0;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_oddr(clk, in0, in1, out);
  wire _0_;
  wire _1_;
  input clk;
  wire clk;
  input in0;
  wire in0;
  input in1;
  wire in1;
  wire in1_sh;
  output out;
  wire out;
  INVx2_ASAP7_75t_R _2_ (
    .A(clk),
    .Y(_0_)
  );
  AND2x4_ASAP7_75t_R _3_ (
    .A(in1_sh),
    .B(clk),
    .Y(_1_)
  );
  AO21x1_ASAP7_75t_R _4_ (
    .A1(in0),
    .A2(_0_),
    .B(_1_),
    .Y(out)
  );
  DLLx1_ASAP7_75t_R _5_ (
    .CLK(clk),
    .D(in1),
    .Q(in1_sh)
  );
endmodule
