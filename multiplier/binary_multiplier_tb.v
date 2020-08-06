module binary_multiplier_tb();
wire [3:0] tb_res;
reg [1:0] tb_a;
reg [1:0] tb_b;

binary_multiplier DUT(.a(tb_a), .b(tb_b), .res(tb_res));

initial
begin
	tb_a = 2'b11;
	tb_b = 2'b10;

	#50;
end
endmodule
