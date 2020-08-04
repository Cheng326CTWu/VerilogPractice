module half_adder_tb();
wire tb_sum_result, tb_carry_result;
reg tb_x, tb_y;

half_adder DUT(.x(tb_x), .y(tb_y), .sum(tb_sum_result), .carry(tb_carry_result));

initial
begin
	tb_x = 1'b0;
	tb_y = 1'b0;

	#50
	tb_x = 1'b1;
	tb_y = 1'b0;

	#50
	tb_x = 1'b0;
	tb_y = 1'b1;

	#50
	tb_x = 1'b1;
	tb_y = 1'b1;
end
endmodule
