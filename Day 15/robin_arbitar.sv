module robin_arbitar(
  input     wire        clk,
  input     wire        reset,

  input     wire[3:0]   req_i,
  output    logic[3:0]  gnt_o
);


logic [2:0]counter_ff;

always_ff@(posedge clk)begin
if(reset)
begin
gnt_o=0;
counter_ff <= 0;

end
else if(counter_ff == 0)
begin
counter_ff <= 1;
gnt_o <= 4'b0001;
end
else if (counter_ff ==1)begin
gnt_o<= 4'b0010;
counter_ff <= 2;
end
else if(counter_ff == 2)begin
gnt_o<= 4'b0100;
counter_ff <= 3;
end
else if(counter_ff == 3)begin
gnt_o <= 4'b1000;
counter_ff <= 0;
end


end 

endmodule