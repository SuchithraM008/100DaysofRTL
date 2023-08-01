module bin_gray #(
  parameter VEC_W = 4
)(
  input     wire[VEC_W-1:0] bin_i,
  output    wire[VEC_W-1:0] gray_o

);


assign gray_o[3] = bin_i[3];
assign  gray_o[2] =bin_i[3]^ bin_i[2];
assign  gray_o[1] = bin_i[2]^bin_i[1];
assign  gray_o[0] =bin_i[1]^ bin_i[0];



endmodule