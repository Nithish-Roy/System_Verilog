module assoc_arr();
	integer array [string] =  '{"Jana": 20, "kural":23, "Krithik": 25}; //array with values
	initial begin
			
	$display("The array = ",array);
	if(array.exists("Valan"))
		$display("Valan does exist");
	else
		$display("Valan does not exist");


	$display("Size of array(using size method) = %d ",array.size());	
	$display("Size of array(using num method) = %d ",array.num());

	array.delete("Krithik"); //delete method
	
	$display("array = ",array);
	end
endmodule

//# The array =  {"Jana":20} {"Krithik":25} {"kural":23} 
//# Valan does not exist
//# Size of array(using size method) =           3 
//# Size of array(using num method) =           3 
//# array =  {"Jana":20} {"kural":23} 

	
