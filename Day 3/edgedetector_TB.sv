module edge_detector_TB ();

  logic    clk;
  logic    reset;
  logic    a_i;
  logic    rising_edge_o;
  logic    falling_edge_o;

  edge_detector dut (.*);

  
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end

  
  initial begin
    reset <= 1'b1;
    a_i <= 1'b1;
    #10
    reset <= 1'b0;
    #10
    a_i<=1'b0;
    #10
    a_i <= 1'b1;
    #10
    a_i <= 1'b0;
   
    $finish();
  end
endmodule