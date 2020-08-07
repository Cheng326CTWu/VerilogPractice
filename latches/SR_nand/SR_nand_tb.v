module SR_latch_nand_tb();
wire tb_Q, tb_Qn;
reg tb_S, tb_R;

SR_latch_nand DUT(.S(tb_S), .R(tb_R), .Q(tb_Q), .Qn(tb_Qn));

initial
begin
	tb_S = 1'b1;
	tb_R = 1'b1;

	#50;
	tb_S = 1'b1;
	tb_R = 1'b0;

	#50;
	tb_S = 1'b1;
	tb_R = 1'b1;

	#50;
	tb_S = 1'b0;
	tb_R = 1'b1;

	#50;
	tb_S = 1'b1;
	tb_R = 1'b1;
end
endmodule
