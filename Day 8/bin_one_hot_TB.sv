module bin_one_hot_TB();

logic [3:0]bin_i;
logic [15:0]one_hot_in;


bin_one_hot dut(.*);

initial
begin

for(int i=0;i<16;i=i+1)begin
bin_i = i;
#10;
end

end

endmodule