module slave_interface (
  input       wire        clk,
  input       wire        reset,

  input       wire        req_i,       
  input       wire        req_rnw_i,   
  input       wire[3:0]   req_addr_i,  
  input       wire[31:0]  req_wdata_i,  
  output      wire        req_ready_o, 
  output      wire[31:0]  req_rdata_o   
);

  // Memory array
  logic [15:0][31:0] mem;
  logic [31:0]rdata;
 
  always_ff@(posedge clk)begin
 
  if(reset)begin
  rdata = 0;
  end
  else if(!req_rnw_i)begin
  mem[req_addr_i] = req_wdata_i;  
  end
   else if(req_rnw_i)begin
   rdata = mem[req_addr_i];  
  end
 
  end
 
  assign req_ready_o = req_i?0:1;
  assign req_rdata_o = req_rnw_i?req_wdata_i:rdata;
  endmodule