module D_gated_tb();
wire tb_Q, tb_Qn;
reg tb_D, tb_En;

D_gated DUT(.D(tb_D), .En(tb_En), .Q(tb_Q), .Qn(tb_Qn));

initial
begin
	tb_En = 1'b0;
	tb_D = 1'b0;

	#50;
	tb_D = 1'b1;

	#50;
	tb_En = 1'b1;
	tb_D = 1'b0;

	#50;
	tb_D = 1'b1;

	#50;
	tb_En = 1'b0;

	#50;
	tb_En = 1'b1;
	tb_D = 1'b0;

	#50;
	tb_En = 1'b0;
end
endmodule
