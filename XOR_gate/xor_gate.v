module xor_gate
(
	input_1,
	input_2,
	xor_result
);

	input input_1;
	input input_2;
	output xor_result;

	assign xor_result = input_1 ^ input_2;

endmodule
