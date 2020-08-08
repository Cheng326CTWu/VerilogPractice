`timescale 1ns/1ns

module D_pos_edge_gate_tb();
wire tb_Q, tb_Qn;
reg tb_D, clk;

D_pos_edge_gate DUT(.D(tb_D), .clk(clk), .Q(tb_Q), .Qn(tb_Qn));

initial
begin
	clk = 1'b0;
	forever
	begin
		#100;
		clk <= ~clk;
	end
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
