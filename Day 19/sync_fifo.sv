module sync_fifo #(
  parameter DEPTH   = 4,
  parameter DATA_W  = 1
)(
  input         wire              clk,
  input         wire              reset,

  input         wire              push_i,
  input         wire[DATA_W-1:0]  push_data_i,

  input         wire              pop_i,
  output        wire[DATA_W-1:0]  pop_data_o,

  output        wire              full_o,
  output        wire              empty_o
);

logic [DATA_W-1:0]  pop_data_ff;
int depth;
logic [$clog2(DEPTH)-1:0] w_ptr;
logic [$clog2(DEPTH)-1:0]r_ptr;
 logic [DATA_W-1:0] fifo[DEPTH];

 always_ff@(posedge clk) begin
    if(!reset) begin
      pop_data_ff <= 0;
	r_ptr <= 0;
	w_ptr <= 0;
  	  end
	

 end
 
  
   always_ff@(posedge clk)begin
    if(pop_i & !full_o) begin
      pop_data_ff <= fifo[r_ptr];
      r_ptr <= r_ptr + 1;
	
    end
  end
 
  always_ff @(posedge clk) begin
    if(push_i & !empty_o)begin
      fifo[w_ptr] <= push_data_i;
      w_ptr <= w_ptr + 1;
	
    end
  end
  
 

assign depth = DEPTH;
assign pop_data_o = pop_i ?fifo[r_ptr] :0;
assign full_o = (depth>DEPTH);
assign empty_o = (push_i==0 && pop_i ==0);


endmodule
