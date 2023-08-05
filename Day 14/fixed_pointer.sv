module fixed_pointer#(parameter NUM_PORTS = 4)(
    input       wire[NUM_PORTS-1:0] req_i,
    output      logic[NUM_PORTS-1:0] gnt_o   // One-hot grant signal
);

always_comb begin
case(req_i)
 	4'b0001:begin
	gnt_o = 4'b0001;
	end
	4'b0011:begin
	gnt_o = 4'b0001;
	end
	4'b0101:begin
	gnt_o = 4'b0001;
	end
	4'b0111:begin
	gnt_o = 4'b0001;
	end
	4'b1001:begin
	gnt_o = 4'b0001;
	end
	4'b0010:begin
	gnt_o = 4'b0010;
	end
	4'b1101:begin
	gnt_o = 4'b0001;
	end
	4'b1011:begin
	gnt_o = 4'b0001;
	end
	4'b1111:begin
	gnt_o = 4'b0001;
	end
	4'b0100:begin
	gnt_o = 4'b0100;
	end
	4'b1100:begin
	gnt_o = 4'b0100;
	end
	4'b0110:begin
	gnt_o = 4'b0010;
	end
	4'b1010:begin
	gnt_o = 4'b0010;
	end
	4'b1110:begin
	gnt_o = 4'b0010;
	end
	4'b1000:begin
	gnt_o = 4'b1000;
	end
	default:begin
	gnt_o = 4'b000;
	end
	


endcase

end

endmodule