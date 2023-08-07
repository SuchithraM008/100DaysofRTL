module robin_arbitar_TB();

logic clk;
logic reset;
logic [3:0] req_i;
logic [3:0]gnt_o;

robin_arbitar dut(.*);

always  begin
clk = 1'b1;
#5;
clk = 1'b0;
#5;
end

initial begin
reset = 1'b1;
req_i = 0;
@(posedge clk);
reset = 1'b0;
req_i = 0;
@(posedge clk);
for(int i=0;i<32;i=i+1)begin
req_i = $random;
@(posedge clk);
end

end
endmodule