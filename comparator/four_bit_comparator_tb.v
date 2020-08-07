module four_bit_comparator_tb();
wire tb_A_less_B, tb_A_greater_B, tb_A_equal_B;
reg [3:0] tb_A, tb_B;

four_bit_comparator DUT(.A(tb_A), .B(tb_B), .A_less_B(tb_A_less_B), .A_greater_B(tb_A_greater_B), .A_equal_B(tb_A_equal_B));

initial
begin
	tb_A = 4'b0010;
	tb_B = 4'b0011;

	#50;
	tb_A = 4'b0010;
	tb_B = 4'b0010;

	#50;
	tb_A = 4'b0011;
	tb_B = 4'b0010;
end
endmodule
