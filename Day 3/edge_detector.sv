module edge_detector(
input wire clk,
input wire reset,
input wire a_i,
output wire rising_edge_o,
output wire falling_edge_o
);


logic a_ff;

always_ff@(posedge clk)
begin
if(reset)
	a_ff<=1'b0;
else
	a_ff<=a_i;


end

assign rising_edge_o = ~a_ff&a_i;

assign falling_edge_o = a_ff&~a_i;





endmodule