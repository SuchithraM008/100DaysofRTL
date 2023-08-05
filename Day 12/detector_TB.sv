
  
module detector_TB();

logic clk;
logic reset;
logic x_i;
logic det_o;

detector dut(.*);

always begin
clk = 1'b1;
#5;
clk = 1'b0;
#5;
end

initial begin
reset <=1'b1;
x_i<=1'b1;
@(posedge clk);
reset <= 1'b0;
@(posedge clk);
x_i<=1'b1;
@(posedge clk);
x_i<=1'b1;
@(posedge clk);
x_i<=1'b0;
@(posedge clk);
x_i<=1'b1;
@(posedge clk);
$finish();
end

endmodule