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
  input clk;
  wire clk;
  input in0;
  wire in0;
  input in1;
  wire in1;
  wire in1_sh;
  output out;
  wire out;
  gf180mcu_fd_sc_mcu7t5v0__mux2_2 _1_ (
    .I0(in0),
    .I1(in1_sh),
    .S(clk),
    .Z(out)
  );
  gf180mcu_fd_sc_mcu7t5v0__clkinv_2 _2_ (
    .I(clk),
    .ZN(_0_)
  );
  gf180mcu_fd_sc_mcu7t5v0__latq_1 _3_ (
    .D(in1),
    .E(_0_),
    .Q(in1_sh)
  );
endmodule
