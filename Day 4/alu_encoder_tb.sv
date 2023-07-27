module alu_encoder_tb();

 logic[7:0] i_a;
 logic[7:0] i_b;
 logic[2:0] op_i;
 logic[7:0]alu_o;

alu_encoder dut(.*);

initial begin
i_a=8'd0;
i_b=8'd0;
#10;
for(int i=0;i<8;i=i+1)
begin
 op_i = 3'b000+i;
 i_a=8'd2;
 i_b=8'd1;
 #10;
end


end


endmodule