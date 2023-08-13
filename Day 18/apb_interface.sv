module apb_slave (
  input         wire        clk,
  input         wire        reset,

  input         wire        psel_i,
  input         wire        penable_i,
  input         wire[3:0]   paddr_i,
  input         wire        pwrite_i,
  input         wire[31:0]  pwdata_i,
  output        wire[31:0]  prdata_o,
  output        wire        pready_o
);

 
  logic apb_req;

  assign apb_req = psel_i & penable_i;

  // Instantiate the memory interface
  slave_interface dut (
    .clk            (clk),
    .reset          (reset),
    .req_i          (apb_req),
    .req_rnw_i      (~pwrite_i),
    .req_addr_i     (paddr_i),
    .req_wdata_i    (pwdata_i),
    .req_ready_o    (pready_o),
    .req_rdata_o    (prdata_o)
  );

endmodule