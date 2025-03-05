class this_keyword;
	reg [3:0] data_in;
	reg [2:0] addr;
	bit rw;

	function new(reg [3:0] data_in,
			reg [2:0] addr,
		bit rw);
	
		this.data_in = data_in;
		this.addr = addr;
		this.rw = rw;
	endfunction

	task printer();
	 $display($time,"data_in = %b ,addr = %b, rw = %b", data_in, addr, rw);
	endtask
endclass

	module tester();
	this_keyword a;
	initial	begin 
	a = new(10, 5, 0);	
	a.printer();
	end
	endmodule
	
