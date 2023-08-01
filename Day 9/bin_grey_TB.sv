module bin_grey_TB();

logic[3:0] bin_i;
logic [3:0] gray_o;

bin_gray dut(.*);

initial begin
for(int i=0;i<16;i=i+1)begin
bin_i = i;
#10;

end
end




endmodule