module D_gated
(
	D,
	En,
	Q,
	Qn
);

	input D, En;
	output Q, Qn;

	nand nand_0(w1, D, En);
	nand nand_1(w2, ~D, En);
	nand nand_2(Q, w1, Qn);
	nand nand_3(Qn, w2, Q);

endmodule
