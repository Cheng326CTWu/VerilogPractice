module and_gate 
(
    input_1,
    input_2,
    and_result
);

	input  input_1;
  	input  input_2;
  	output and_result;
   
  	assign and_result = input_1 & input_2;
 
endmodule

module or_gate
(
	input_1,
	input_2,
	or_result
);

	input input_1;
	input input_2;
	output or_result;

	assign or_result = input_1 | input_2;

endmodule

module alt_half_adder
(
	x,
	y,
	sum,
	carry
);

	input x;
	input y;
	output sum;
	output carry;

	wire sum_input1;
	wire sum_input2;
	and_gate sum1(.input_1(x), .input_2(~y), .and_result(sum_input1));
	and_gate sum2(.input_1(~x), .input_2(y), .and_result(sum_input2));

	assign sum = sum_input1 | sum_input2;
	assign carry = x & y;
endmodule
