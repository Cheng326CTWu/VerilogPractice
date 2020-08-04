module nand_gate_tb();
wire tb_result;
reg tb_input1, tb_input2;

nand_gate DUT(.input_1(tb_input1), .input_2(tb_input2), .nand_result(tb_result));

initial
begin
	tb_input1 = 1'b0;
	tb_input2 = 1'b0;

	#50
	tb_input1 = 1'b1;
	tb_input2 = 1'b0;

	#50
	tb_input1 = 1'b0;
	tb_input2 = 1'b1;

	#50
	tb_input1 = 1'b1;
	tb_input2 = 1'b1;
end
endmodule
