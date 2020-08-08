module binary_subtractor_tb();
wire [3:0] tb_sum_result;
wire tb_cout;
reg [3:0] tb_x;
reg [3:0] tb_y;
reg tb_cin;

binary_subtractor DUT(.A(tb_x), .B(tb_y), .c_in(tb_cin), .sum(tb_sum_result), .c_out(tb_cout));

initial
begin
	tb_x = 4'b1011;
	tb_y = 4'b0011;
	tb_cin = 1'b1;

	#50;
end
endmodule

