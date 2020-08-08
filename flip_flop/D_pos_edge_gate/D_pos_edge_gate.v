module D_pos_edge_gate
(
	D,
	clk,
	Q,
	Qn
);

	input D, clk;
	output Q, Qn;

	wire S, R, w0, w1;

	nand nand_0(w0, D, R);
	nand nand_1(R, clk, w0, S);
	nand nand_2(S, clk, w1);
	nand nand_3(w1, S, w0);
	nand nand_4(Q, S, Qn);
	nand nand_5(Qn, R, Q);

endmodule
