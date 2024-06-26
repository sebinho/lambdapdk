// //#############################################################################
// //# Function:  Positive edge-triggered static inverting D-type flop-flop with #
// //             async active low reset and scan input                          #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:   MIT (see LICENSE file in Lambda repository)                    #
// //#############################################################################
// 
// module la_sdffrqn #(parameter PROP = "DEFAULT")   (
//     input      d,
//     input      si,
//     input      se,
//     input      clk,
//     input      nreset,
//     output reg qn
//     );
// 
//    always @ (posedge clk or negedge nreset)
//      if(!nreset)
//        qn <= 1'b1;
//      else
//        qn <=  se ? ~si : ~d;
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_sdffrqn(d, si, se, clk, nreset, qn);
  wire _0_;
  wire _1_;
  input clk;
  wire clk;
  input d;
  wire d;
  input nreset;
  wire nreset;
  output qn;
  wire qn;
  input se;
  wire se;
  input si;
  wire si;
  gf180mcu_fd_sc_mcu7t5v0__mux2_2 _2_ (
    .I0(d),
    .I1(si),
    .S(se),
    .Z(_1_)
  );
  gf180mcu_fd_sc_mcu7t5v0__clkinv_2 _3_ (
    .I(_1_),
    .ZN(_0_)
  );
  gf180mcu_fd_sc_mcu7t5v0__dffsnq_2 _4_ (
    .CLK(clk),
    .D(_0_),
    .Q(qn),
    .SETN(nreset)
  );
endmodule
