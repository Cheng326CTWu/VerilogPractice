module SR_gated
(
	S,
	R,
	En,
	Q,
	Qn
);

	input S, R, En;
	output Q, Qn;

	wire w1, w2;

	nand nand_0(w1, S, En);
	nand nand_1(w2, R, En);
	nand nand_2(Q, w1, Qn);
	nand nand_3(Qn, w2, Q);

endmodule
