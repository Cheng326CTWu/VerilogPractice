module SR_latch_nand
(
	S,
	R,
	Q,
	Qn,
);

	input S, R;
	output Q, Qn;

	nand nand_0(Q, S, Qn);
	nand nand_1(Qn, R, Q);

endmodule
