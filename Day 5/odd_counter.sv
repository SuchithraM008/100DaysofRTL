module odd_counter(
	input     wire        clk,
	input     wire        reset,

	output    logic[7:0]  cnt_o
);

always_ff@(posedge clk)
begin
if(!reset)
begin
cnt_o = 8'h1;
end
else 
begin
cnt_o = cnt_o+8'h2;

end



end





endmodule