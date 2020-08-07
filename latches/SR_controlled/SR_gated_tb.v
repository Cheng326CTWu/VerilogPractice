module SR_gated_tb();
wire tb_Q, tb_Qn;
reg tb_S, tb_R, tb_En;

SR_gated DUT(.S(tb_S), .R(tb_R), .En(tb_En), .Q(tb_Q), .Qn(tb_Qn));

initial
begin
	tb_En = 1'b0;
	tb_S = 1'b1;
	tb_R = 1'b0;

	#50;
	tb_S = 1'b0;
	tb_R = 1'b1;

	#50;
	tb_En = 1'b1;
	tb_S = 1'b0;
	tb_R = 1'b0;

	#50;
	tb_S = 1'b1;
	tb_R = 1'b0;

	#50;
	tb_S = 1'b0;
	tb_R = 1'b0;

	#50;
	tb_S = 1'b0;
	tb_R = 1'b1;

	#50;
	tb_S = 1'b0;
	tb_R = 1'b0;
end
endmodule
