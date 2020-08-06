module full_adder_tb();
wire tb_sum_result, tb_carry_result;
reg tb_x, tb_y, tb_z;

full_adder DUT(.x(tb_x), .y(tb_y), .z(tb_z), .sum(tb_sum_result), .carry(tb_carry_result));

initial
begin
	tb_x = 1'b0;
	tb_y = 1'b0;
	tb_z = 1'b0;

	#50
	tb_x = 1'b0;
	tb_y = 1'b0;
	tb_z = 1'b1;

	#50
	tb_x = 1'b0;
	tb_y = 1'b1;
	tb_z = 1'b0;

	#50
	tb_x = 1'b0;
	tb_y = 1'b1;
	tb_z = 1'b1;

	#50
	tb_x = 1'b1;
	tb_y = 1'b0;
	tb_z = 1'b0;

	#50
	tb_x = 1'b1;
	tb_y = 1'b0;
	tb_z = 1'b1;

	#50
	tb_x = 1'b1;
	tb_y = 1'b1;
	tb_z = 1'b0;
	
	#50
	tb_x = 1'b1;
	tb_y = 1'b1;
	tb_z = 1'b1; 
end
endmodule

