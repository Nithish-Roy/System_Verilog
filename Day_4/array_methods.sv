module methods();
	int assoc [ ];
	int assoc1 [ ];
	int queue [$];
	
	initial begin 
	assoc = '{10, 11, 12, 32665, 9388, 100};	
	assoc1 = '{100, 100, 100, 32665, 100, 100};
	
	queue = assoc.min();
	$display("the minimum value in the array = %p", queue);

	queue = assoc.max();
	$display("the maximum value in the array = %p", queue);

	queue = assoc1.unique();
	$display("the unique value in the array = %p", queue);
	
	queue = assoc1.unique_index();
       	$display("the unique value index in the array = %p", queue);

	end
endmodule
//# the minimum value in the array = '{10}
//# the maximum value in the array = '{32665}
//# the unique value in the array = '{100, 32665}
//# the unique value index in the array = '{0, 3}
