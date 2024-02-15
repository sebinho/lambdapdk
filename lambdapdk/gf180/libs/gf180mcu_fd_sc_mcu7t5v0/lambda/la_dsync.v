// //#############################################################################
// //# Function: Synchronizer                                                    #
// //# Copyright: Lambda Project Authors. All rights Reserved.                   #
// //# License:  MIT (see LICENSE file in Lambda repository)                     #
// //#############################################################################
// 
// module la_dsync
//   #(parameter PROP = "DEFAULT")
//    (
//     input  clk, // clock
//     input  in, // input data
//     output out     // synchronized data
//     );
// 
//    localparam STAGES=2;
//    localparam RND = 1;
// 
//    reg [STAGES:0] shiftreg;
//    integer        sync_delay;
// 
//    always @ (posedge clk)
//      begin
//         shiftreg[STAGES:0] <= {shiftreg[STAGES-1:0],in};
// `ifndef SYNTHESIS
//         sync_delay <= {$random} % 2;
// `endif
//      end
// 
// `ifdef SYNTHESIS
//    assign out = shiftreg[STAGES-1];
// `else
//    assign out = (|sync_delay & (|RND)) ? shiftreg[STAGES] : shiftreg[STAGES-1];
// `endif
// 
// endmodule

/* Generated by Yosys 0.37 (git sha1 a5c7f69ed, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module la_dsync(clk, in, out);
  input clk;
  wire clk;
  input in;
  wire in;
  output out;
  wire out;
  wire \shiftreg[0] ;
  gf180mcu_fd_sc_mcu7t5v0__dffq_2 _0_ (
    .CLK(clk),
    .D(in),
    .Q(\shiftreg[0] )
  );
  gf180mcu_fd_sc_mcu7t5v0__dffq_2 _1_ (
    .CLK(clk),
    .D(\shiftreg[0] ),
    .Q(out)
  );
endmodule
