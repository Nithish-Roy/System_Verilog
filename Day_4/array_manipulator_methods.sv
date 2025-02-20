module methods();
	int assoc [ ];
	int queue [$:10]; //bounded queue
	initial begin 
	
	assoc = '{10,11,44,8,1,88,679,628,91};

	assoc.sort();
	$display("the sorted array = %p", assoc);
	
	assoc.rsort();
	$display("the reverse sorted array = %p", assoc);
	
	assoc.reverse();
	$display("THE REVERSED ARRAY = %P", assoc);

	assoc.shuffle();
	$display("the shuffled array = %p", assoc);
	
	end
	endmodule

//# the sorted array = '{1, 8, 10, 11, 44, 88, 91, 628, 679}
//# the reverse sorted array = '{679, 628, 91, 88, 44, 11, 10, 8, 1}
//# THE REVERSED ARRAY = '{1, 8, 10, 11, 44, 88, 91, 628, 679}
//# the shuffled array = '{88, 1, 91, 8, 679, 44, 11, 628, 10}
