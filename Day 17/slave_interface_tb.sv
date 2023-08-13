 module slave_interface_tb ();

  logic        clk;
  logic        reset;
  logic        req_i;
  logic        req_rnw_i;
  logic[3:0]   req_addr_i;
  logic[31:0]  req_wdata_i;
  logic        req_ready_o;
  logic[31:0]  req_rdata_o;

  // Instatiate the RTL
  slave_interface dut (.*);

  logic [3:0] counter;
  // Generate the clock
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end

  // Generate stimulus
  initial begin
    reset <= 1'b1;
    req_i <= 1'b0;
	req_rnw_i <=1'b0;
	counter <= 0;
	req_addr_i <=0;
	req_wdata_i=0;
    @(posedge clk);
    reset <= 1'b0;
    @(posedge clk);
	
	for(int j=0;j<10;j=j+1)begin
      req_i       <= 1'b1;
      req_rnw_i   <= 0;
      req_addr_i  <= $urandom_range(0, 15);
      counter = $urandom_range(0,10);
	req_wdata_i <= $urandom_range(0, 32'hFFFF);
	for(int i=0;i<counter;i=i+1)begin
        @(posedge clk);
      	end
      	req_i <= 1'b0;
      	@(posedge clk);
	 req_rnw_i   <= 1;
	 @(posedge clk);
         @(posedge clk);
	end
    $finish();
  end

endmodule