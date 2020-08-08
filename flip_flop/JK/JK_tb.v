`timescale 1ns/1ns

module JKFF_tb();
wire tb_Q;
reg tb_J, tb_K, clk;

JKFF DUT(.J(tb_J), .K(tb_K), .clk(clk), .Q(tb_Q));

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
	tb_J = 1'b0;
	tb_K = 1'b0;

	#200;
	tb_J = 1'b1;
	tb_K = 1'b0;

	#200;
	tb_J = 1'b0;
	tb_K = 1'b1;

	#200;
	tb_J = 1'b1;
	tb_K = 1'b1;
end
endmodule
