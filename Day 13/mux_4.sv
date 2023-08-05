module mux_4(
input     wire[3:0] a_i,
input     wire[3:0] sel_i,

// Output using ternary operator
output    wire     y_ter_o,
// Output using case
output    logic     y_case_o,
// Ouput using if-else
output    logic     y_ifelse_o,
// Output using for loop
output    logic     y_loop_o,
// Output using and-or tree
output    logic     y_aor_o);

// Output using ternary operator

assign y_terr_o = (sel_i[0]==1)?a_i[0]:(sel_i[1]==1)?a_i[1]:(sel_i[2]==1)?a_i[2]:(sel_i[3]==1)?a_i[3]:0;

// Output using case

always_comb begin
case(sel_i)
	4'b0001:begin
	y_case_o = a_i[0];
	end
	4'b0010:begin
	y_case_o = a_i[1];
	end
	4'b0100:begin
	y_case_o = a_i[2];
	end
	4'b1000:begin
	y_case_o = a_i[3];
	end
endcase
end

// Ouput using if-else

always_comb begin
if(sel_i[0])
begin
y_ifelse_o = a_i[0];
end
else if(sel_i[1])
begin
y_ifelse_o = a_i[1];
end
else if(sel_i[2])
begin
y_ifelse_o = a_i[2];
end
else if(sel_i[3])
begin
y_ifelse_o = a_i[3];
end
end

// Output using for loop
always begin
for(int i=0;i<4;i=i+1)begin
y_loop_o = (sel_i[i]==1)?a_i[i]:0;
end
end

// Output using and-or tree
assign y_aor_o = (sel_i[0]&a_i[0]) | (sel_i[1]&a_i[2]) | (sel_i[2]&a_i[2]) | (sel_i[3]&a_i[3]);



endmodule