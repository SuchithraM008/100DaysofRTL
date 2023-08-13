module apb_master (
  input       wire        clk,
  input       wire        reset,

  input       wire[1:0]   cmd_i,

  output      wire        psel_o,
  output      wire        penable_o,
  output      wire[31:0]  paddr_o,
  output      wire        pwrite_o,
  output      wire[31:0]  pwdata_o,
  input       wire        pready_i,
  input       wire[31:0]  prdata_i
);

      logic       sel;
      logic        enable;
      logic[31:0]  addr;
      logic[31:0]  wdata;
	logic [31:0]rdata;

	


always_ff@(posedge clk or negedge reset)begin

if(sel==1)begin
enable = 1;
end
if(cmd_i==2'b00)begin
	sel=0;
	enable=0;
	addr = 0;
	wdata =0;
end

else if(cmd_i==2'b01)begin
	sel = 1;
	addr = 32'hdeadcafe;
	rdata = prdata_i;
	end


else if(cmd_i==2'b10)begin
	sel=1;
	wdata = rdata+1;
	
end

else begin
	sel=0;
	addr = 0;
	wdata =0;
end

end

always_ff@(posedge clk or negedge reset)begin


if(pready_i==1)begin
enable=0;
sel=0;
end

end


assign psel_o = sel;
assign penable_o = enable;
assign paddr_o = addr;
assign pwrite_o = (cmd_i==2'b10)?1'b1:1'b0;
assign pwdata_o = (pwrite_o)?(prdata_i+1):wdata;

endmodule