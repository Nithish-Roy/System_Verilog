module assoc_arr();
	integer array [int];
	integer temp;
	initial begin 
	array [1] = 1;
	array [2] = 2;
	array [3] = 3;
	array [4] = 4;
	array [5] = 5;
	
	
	if(array.first(temp))
		$display("First entry is at index %0d ",temp);
	if(array.next(temp))
		$display("Next entry is at index %0d", temp);
	if(array.last(temp))
		$display("Last entry is at index %0d", temp);
	if(array.prev(temp))
		$display("Previous entry is at index %0d", temp);
		array.delete();
		$display("array = ", array);	
	end
endmodule

//# First entry is at index 1 
//# Next entry is at index 2
//# Last entry is at index 5
//# Previous entry is at index 4
//# array =  
