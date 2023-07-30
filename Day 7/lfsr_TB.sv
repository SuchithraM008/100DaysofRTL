module lfsr_TB();

logic clk;
logic reset;
logic [3:0]lfsr;

lfsr dut(.*);

always 
begin
clk = 1'b1;
#5;
clk = 1'b0;
#5;
end

initial begin
reset = 1'b1;
@(posedge clk);
reset = 1'b0;
for (int i=0; i<32; i=i+1)
 	 @(posedge clk);
$finish();
end







endmodule