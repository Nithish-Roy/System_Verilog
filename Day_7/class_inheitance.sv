class fifo_internals;
 integer rd_ptr;
 integer wr_ptr;
endclass

class fifo extends fifo_internals;
  bit [7:0] data;
  bit [2:0] addr;
endclass

module tester;
    fifo f1;
  initial begin
    f1 = new();
   f1.wr_ptr = 10;
   f1.rd_ptr = 20;
    f1.data = 8'd10;
    f1.addr = 3'd3;
    $display("Value of addr = %0d data = %0d rd_ptr = %0d wr_ptr = %0d",f1.addr,f1.data,f1.rd_ptr,f1.wr_ptr);
  end
endmodule
