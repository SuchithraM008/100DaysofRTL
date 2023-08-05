module mux_4_TB();

logic [3:0] a_i;
logic [3:0] sel_i;
logic  y_ter_o;
logic     y_case_o;
logic     y_ifelse_o;
logic     y_loop_o;
logic     y_aor_o;

mux_4 dut(.*);

initial begin
a_i = 4'b0101;
sel_i[0]=1'b1;
$finish();
end






endmodule