class us;
	string name;
	integer number;
	string college;

  task printer ( string name_p, integer number_p, string college_p);
    $display("name = %s number = %0d college = %s", name_p , number_p , college_p);
	endtask

endclass

module class_creation;
	
initial begin 
   us a = new();
   a.printer( "Nithish", 12 ,"JCE ");
 end
  
endmodule
