module lfsr(
input logic clk,
	input logic reset,
	output logic [3:0]lfsr
);




always_ff@(posedge clk)begin

if(reset)
begin
lfsr <=4'hE;
end
else
begin
lfsr[0] <= lfsr[3]^lfsr[1];
lfsr[3:1] <= {lfsr[2:1],lfsr[0]};
end


end




endmodule