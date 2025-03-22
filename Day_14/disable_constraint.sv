class inline_conflict;
  rand bit [2:0] data;
  rand bit [3:0] addr;
  
  constraint for_addr { addr < 10 ;} 
  
endclass

class child extends inline_conflict;
  rand bit [2:0] data;
  rand bit [3:0] addr;
  
  constraint for_addr {addr > 10;}
endclass

module inline_conflicter;
   inline_conflict c;
  initial begin
    c = new();
    $display("---------------------------WITH CONSTRAINT-------------------------------------");
    repeat(10) begin
      c.randomize();
      $display ("addr = %d data = %d", c.addr, c.data);
    end
    $display("___________________________________________________________________________");
    $display("---------------------------WITHOUT CONSTRAINT-------------------------------------");
    repeat (10) begin
      c.for_addr.constraint_mode(0);
    	c.randomize();
      $display ("addr = %d data = %d", c.addr, c.data);
    end
    
  end
endmodule

// # KERNEL: ---------------------------WITH CONSTRAINT-------------------------------------
// # KERNEL: addr =  9 data = 3
// # KERNEL: addr =  7 data = 3
// # KERNEL: addr =  2 data = 3
// # KERNEL: addr =  2 data = 2
// # KERNEL: addr =  6 data = 1
// # KERNEL: addr =  5 data = 7
// # KERNEL: addr =  1 data = 1
// # KERNEL: addr =  6 data = 3
// # KERNEL: addr =  2 data = 0
// # KERNEL: addr =  0 data = 6
// # KERNEL: ___________________________________________________________________________
// # KERNEL: ---------------------------WITHOUT CONSTRAINT-------------------------------------
// # KERNEL: addr = 13 data = 4
// # KERNEL: addr = 12 data = 1
// # KERNEL: addr = 12 data = 5
// # KERNEL: addr = 12 data = 2
// # KERNEL: addr =  8 data = 3
// # KERNEL: addr =  7 data = 2
// # KERNEL: addr =  0 data = 6
// # KERNEL: addr =  1 data = 1
// # KERNEL: addr =  3 data = 6
// # KERNEL: addr = 10 data = 0
