module decoder_tb();
wire [3:0] tb_D;
reg tb_A, tb_B, tb_E;

decoder DUT(.A(tb_A), .B(tb_B), .E(tb_E), .D(tb_D));

initial
begin
	tb_E = 1'b1;
	tb_A = 1'b1;
	tb_B = 1'b1;

	#50;
	tb_A = 1'b1;
	tb_B = 1'b0;

	#50;
	tb_A = 1'b0;
	tb_B = 1'b1;

	#50;
	tb_E = 1'b0;
	tb_A = 1'b0;
	tb_B = 1'b0;

	#50;
	tb_A = 1'b1;
	tb_B = 1'b0;

	#50;
	tb_A = 1'b0;
	tb_B = 1'b1;

	#50;
	tb_A = 1'b1;
	tb_B = 1'b1;

end
endmodule
