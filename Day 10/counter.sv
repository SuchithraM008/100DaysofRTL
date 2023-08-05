module counter(

input     wire          clk,
input     wire          reset,
input     wire          load_i,    
input     wire[3:0]     load_val_i, 
output    wire[3:0]     count_o
);



logic [3:0]nxt_count;
logic [3:0]count_ff;

always_ff@(posedge clk)begin
	if(reset)
	begin
	nxt_count<=0;
	end
	else
	begin
	nxt_count <= nxt_count+4'h1;
	end
end
assign count_ff = load_i?load_val_i:nxt_count;
assign count_o=count_ff;



endmodule