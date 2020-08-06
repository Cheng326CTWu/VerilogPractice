module half_subtractor_tb();
wire tb_diff_result, tb_borrow_result;
reg tb_x, tb_y;

half_subtractor DUT(.x(tb_x), .y(tb_y), .diff(tb_diff_result), .borrow(tb_borrow_result));

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
