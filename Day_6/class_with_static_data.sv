class keyword;
static	byte   data_in ;
static  bit [2:0]   addr ;
	bit rw;

	function new();
	data_in ++;
	addr++;
	endfunction

	task printer();
	 $display($time,"data_in = %b ,addr = %b, rw = %b", data_in, addr, rw);
	endtask
endclass

	module tester();
	initial begin 
	
	keyword a[10];
	foreach (a[i])begin
		a[i] = new();
		a[i].printer();
		#10;
	end
		end
	
	
	endmodule
	
#                    0data_in = 00000001 ,addr = 001, rw = 0
#                   10data_in = 00000010 ,addr = 010, rw = 0
#                   20data_in = 00000011 ,addr = 011, rw = 0
#                   30data_in = 00000100 ,addr = 100, rw = 0
#                   40data_in = 00000101 ,addr = 101, rw = 0
#                   50data_in = 00000110 ,addr = 110, rw = 0
#                   60data_in = 00000111 ,addr = 111, rw = 0
#                   70data_in = 00001000 ,addr = 000, rw = 0
#                   80data_in = 00001001 ,addr = 001, rw = 0
#                   90data_in = 00001010 ,addr = 010, rw = 0
