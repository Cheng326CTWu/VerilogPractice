module binary_adder_tb();
wire [3:0] tb_sum_result;
reg [3:0] tb_x;
reg [3:0] tb_y;

alt_binary_adder DUT(.A(tb_x), .B(tb_y), .sum(tb_sum_result));

initial
begin
	tb_x = 4'b1011;
	tb_y = 4'b0011;

	#50;
end
endmodule
