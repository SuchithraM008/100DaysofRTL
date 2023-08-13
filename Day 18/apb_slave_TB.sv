 module apb_slave_tb ();

logic        clk;
logic       reset;

 logic     psel_i;
logic     penable_i;
logic [3:0]   paddr_i;
  logic     pwrite_i;
  logic[31:0]  pwdata_i;
  logic[31:0]  prdata_o;
  logic     pready_o;

  // Instatiate the RTL
  apb_slave dut (.*);

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
  
    psel_i    <= 1'b0;
    penable_i <= 1'b0;
    pwrite_i <=1'b0;
	counter <= 0;
	paddr_i <=0;
	pwdata_i=0;
    	@(posedge clk);
    	reset <= 1'b0;
    	@(posedge clk);
	
	for(int j=0;j<10;j=j+1)begin
    	 psel_i    <= 1'b1;
   	 penable_i <= 1'b1;
     	pwrite_i  <= 1;
     	 paddr_i  <= $urandom_range(0, 15);
      	counter = $urandom_range(0,10);
	pwdata_i <= $urandom_range(0, 32'hFFFF);
	for(int i=0;i<counter;i=i+1)begin
        @(posedge clk);
      	end
      	 psel_i    <= 1'b0;
    penable_i <= 1'b0;
      	@(posedge clk);
	 pwrite_i   <= 0;
	 @(posedge clk);
         @(posedge clk);
	end
    $finish();
  end

endmodule