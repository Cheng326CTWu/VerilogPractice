module three_input_nand
(
	input_1,
	input_2,
	input_3,
	nand_result
);

	input input_1;
	input input_2;
	input input_3;
	output nand_result;

	assign nand_result = !(input_1 & input_2 & input_3);
endmodule
