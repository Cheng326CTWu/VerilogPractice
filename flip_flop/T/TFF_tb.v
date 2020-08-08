module TFF_tb();
wire tb_Q;
reg tb_T, clk, tb_rst;

TFF DUT(.Q(tb_Q), .T(tb_T), .clk(clk), .rst(tb_rst));

initial
begin
	clk = 1'b0;
	forever
	begin
		#100;
		clk = ~clk;
	end
end

initial
begin
	tb_rst = 1'b0;
	tb_T = 1'b1;

	#200;
	tb_rst = 1'b1;
	tb_T = 1'b0;

	#200;
	tb_T = 1'b1;
end
endmodule
