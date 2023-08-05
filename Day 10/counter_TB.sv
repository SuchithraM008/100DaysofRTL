module counter_TB();


 logic          clk;
 logic          reset;
 logic          load_i;
 logic[3:0]     load_val_i;
 logic[3:0]     count_o;

  counter dut (.*);

  
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end

initial begin
reset = 1;
@(posedge clk);
reset = 0;
load_val_i = 4'h3;
load_i=0;
@(posedge clk);
@(posedge clk);
@(posedge clk);
load_i = 1;
@(posedge clk);
load_i=0;
load_val_i = 4'h5;
@(posedge clk);
@(posedge clk);
@(posedge clk);
load_i = 1;
@(posedge clk);
load_i =0;
@(posedge clk);
@(posedge clk);
@(posedge clk);
@(posedge clk);
reset = 1;

$finish();




end



endmodule