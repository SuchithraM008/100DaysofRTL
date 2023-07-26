module Dflipflop(
	input logic clk,
	input logic reset,
	input logic d_i,
	output logic q_norst_o,
	output logic	q_syncrst_o,
	output logic q_asyncrst_o
);



always_ff@(posedge clk)
	q_norst_o <= d_i;

always_ff@(posedge clk)
	if(reset)
	q_syncrst_o<=1'b0;
	else
	q_syncrst_o<=d_i;

always_ff@(posedge clk or posedge reset)
	if(reset)
	q_asyncrst_o<=1'b0;
	else
	q_asyncrst_o<=d_i;


endmodule