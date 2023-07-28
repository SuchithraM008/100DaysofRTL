module odd_counter_TB();

logic clk;
logic reset;
logic [7:0]cnt_o;


odd_counter dut(.*);
always 
begin
clk = 1'b1;
#5;
clk = 1'b0;
#5;
end

initial begin
reset = 1'b0;
#10;
reset = 1'b1;
#100;
$finish();



end






endmodule