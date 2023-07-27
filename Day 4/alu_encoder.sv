module alu_encoder(
input logic[7:0] i_a,
input logic[7:0] i_b,
input logic[2:0] op_i,
output logic[7:0]alu_o
);

always_comb begin
case(op_i)
	3'b000:begin
	alu_o=i_a+i_b;
	end
	3'b001:begin
	alu_o=i_a-i_b;
	end
	3'b010:begin
	alu_o =i_a<<i_b;
	end
	3'b011:begin
	alu_o = i_a>>i_b;
	end
	3'b100:begin
	alu_o = i_a&i_b;
	end
	3'b101:begin
	alu_o = i_a|i_b;
	end
	3'b110:begin
	alu_o = i_a^i_b;
	end
	3'b111:begin
	alu_o = i_a==i_b?1:0;
	end


endcase

end

endmodule