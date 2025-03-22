class inline_conflict;
  rand bit [2:0] data;
  rand bit [3:0] addr;
  
  constraint for_addr { addr < 10 ;} 
  
endclass

module inline_conflicter;
  inline_conflict ic;
  initial begin
    ic = new();
    repeat(10) begin
      ic.randomize with {soft addr > 5;};
      $display ("addr = %d data = %d", ic.addr, ic.data);
    end
  end
endmodule
// # KERNEL: addr =  7 data = 3
// # KERNEL: addr =  9 data = 6
// # KERNEL: addr =  8 data = 3
// # KERNEL: addr =  8 data = 0
// # KERNEL: addr =  6 data = 1
// # KERNEL: addr =  8 data = 7
// # KERNEL: addr =  7 data = 3
// # KERNEL: addr =  8 data = 7
// # KERNEL: addr =  7 data = 0
// # KERNEL: addr =  8 data = 5
