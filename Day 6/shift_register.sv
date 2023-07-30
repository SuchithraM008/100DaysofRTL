module shift_register(
input     wire        clk,
input     wire        reset,
input     wire        x_i,  

output    logic[3:0]   sr_o  

);

always_ff@(posedge clk)begin

if(reset)
begin
sr_o <= 0;
end
else
begin
sr_o <= {sr_o[2:0],x_i};
end
end
endmodule