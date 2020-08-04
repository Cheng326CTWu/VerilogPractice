module notgate_tb();
wire tb_result;
reg tb_input1;

not_gate DUT(.input_1(tb_input1), .not_result(tb_result));

initial
begin
	tb_input1 = 1'b1;

	#50
	tb_input1 = 1'b0;
end
endmodule
