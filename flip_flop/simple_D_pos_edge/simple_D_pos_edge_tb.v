`timescale 1ns/1ns

module simple_D_pos_edge_tb();
wire tb_Q;
reg tb_D;
reg clk = 1'b0;

simple_D_pos_edge DUT(.D(tb_D), .clk(clk), .Q(tb_Q));

always
begin
	#100;
	clk <= ~clk;
end

initial
begin
	tb_D = 1'b0;

	#300;
	tb_D = 1'b1;

	#300;
	tb_D = 1'b0;

	#300;
	tb_D = 1'b1;
end
endmodule

