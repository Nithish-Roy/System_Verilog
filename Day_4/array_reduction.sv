module methods();
	int array [ ];
	longint x;
	initial begin 
	array = '{10,11,5,4};
    
	x = array.sum();
	$display("the sum of the array = %0d", x);

	x = array.product();
	$display("the product of the array = %0d", x);

	x = array.and();
	$display("the and %0d", x);
	
	x = array.or();
	$display("the or = %0d", x);

	x = array.xor();
	$display("the xor %0d", x);
	
	end
endmodule

//# the sum of the array = 30
//# the product of the array = 2200
//# the and 0
//# the or = 15
//# the xor 0
