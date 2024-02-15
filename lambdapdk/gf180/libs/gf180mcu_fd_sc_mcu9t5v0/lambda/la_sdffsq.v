// //#############################################################################
// //# Function:  Positive edge-triggered static D-type flop-flop with async     #
// //#            active low preset and scan input.                              #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:   MIT (see LICENSE file in Lambda repository)                    #
// //#############################################################################
// 
// module la_sdffsq #(parameter PROP = "DEFAULT")   (
//     input      d,
//     input      si,
//     input      se,
//     input      clk,
//     input      nset,
//     output reg q
//     );
// 
//    always @ (posedge clk or negedge nset)
//      if(!nset)
//        q <= 1'b1;
//      else
//        q <= se ? si : d;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_sdffsq(d, si, se, clk, nset, q);
  wire _0_;
  input clk;
  wire clk;
  input d;
  wire d;
  input nset;
  wire nset;
  output q;
  wire q;
  input se;
  wire se;
  input si;
  wire si;
  gf180mcu_fd_sc_mcu9t5v0__mux2_2 _1_ (
    .I0(d),
    .I1(si),
    .S(se),
    .Z(_0_)
  );
  gf180mcu_fd_sc_mcu9t5v0__dffsnq_2 _2_ (
    .CLK(clk),
    .D(_0_),
    .Q(q),
    .SETN(nset)
  );
endmodule
