module bin_one_hot#(
  parameter BIN_W       = 4,
  parameter ONE_HOT_W   = 16
)(
  input   logic[BIN_W-1:0]     bin_i,    
  output  logic[ONE_HOT_W-1:0] one_hot_in
);


always_comb begin
case(bin_i)
	4'b0000:begin
	one_hot_in[0]=1'b1;
	end
	4'b0001:begin
	one_hot_in[0]=1'b0;
	one_hot_in[1]=1'b1;
	end
	4'b0010:begin
	one_hot_in[1:0]=1'b0;
	one_hot_in[2]=1'b1;
	end
	4'b0011:begin
	one_hot_in[2:0]=1'b0;
	one_hot_in[3]=1'b1;
	end
	4'b0100:begin
	one_hot_in[3:0]=1'b0;
	one_hot_in[4]=1'b1;
	end
	4'b0101:begin
	one_hot_in[4:0]=1'b0;
	one_hot_in[5]=1'b1;
	end
	4'b0110:begin
	one_hot_in[5:0]=1'b0;
	one_hot_in[6]=1'b1;
	end
	4'b0111:begin
	one_hot_in[6:0]=1'b0;
	one_hot_in[7]=1'b1;
	end
	4'b1000:begin
	one_hot_in[7:0]=1'b0;
	one_hot_in[8]=1'b1;
	end
	4'b1001:begin
	one_hot_in[8:0]=1'b0;
	one_hot_in[9]=1'b1;
	end
	4'b1010:begin
	one_hot_in[9:0]=1'b0;
	one_hot_in[10]=1'b1;
	end
	4'b1011:begin
	one_hot_in[10:0]=1'b0;
	one_hot_in[11]=1'b1;
	end
	4'b1100:begin
	one_hot_in[11:0]=1'b0;
	one_hot_in[12]=1'b1;
	end
	4'b1101:begin
	one_hot_in[12:0]=1'b0;
	one_hot_in[13]=1'b1;
	end
	4'b1110:begin
	one_hot_in[13:0]=1'b0;
	one_hot_in[14]=1'b1;
	end
	4'b1111:begin
	one_hot_in[14:0]=1'b0;
	one_hot_in[15]=1'b1;
	end
	default:begin
	one_hot_in = 16'b0;
	end
	
endcase
end


endmodule