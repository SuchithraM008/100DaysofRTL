module fixed_pointer_TB();

logic [3:0]req_i;
logic [3:0]gnt_o;

fixed_pointer dut(.*);

initial begin

for(int i=0;i<20;i=i+1)
begin
req_i = $random;
#10;

end

end








endmodule