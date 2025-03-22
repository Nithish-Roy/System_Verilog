class inline_conflict;
  rand bit [2:0] data;
  rand bit [3:0] addr;
  
  constraint for_addr { addr < 10 ;} 
  
endclass

module inline_conflicter;
   inline_conflict c;
  initial begin
    c = new();
    repeat(10) begin
    randcase
      1:begin
        c.randomize with {addr < 7;};
        $display("THE CASE 1");
        $display("addr = %d",c.addr);
      end
      2: begin 
        c.randomize with {addr > 5;};
        $display("THE CASE 2");
        $display("addr = %d", c.addr);
      end
    endcase
  end
  end
endmodule


# KERNEL: THE CASE 2
# KERNEL: addr =  7
# KERNEL: THE CASE 2
# KERNEL: addr =  9
# KERNEL: THE CASE 2
# KERNEL: addr =  8
# KERNEL: THE CASE 1
# KERNEL: addr =  4
# KERNEL: THE CASE 2
# KERNEL: addr =  6
# KERNEL: THE CASE 2
# KERNEL: addr =  8
# KERNEL: THE CASE 1
# KERNEL: addr =  5
# KERNEL: THE CASE 2
# KERNEL: addr =  7
# KERNEL: THE CASE 2
# KERNEL: addr =  7
# KERNEL: THE CASE 2
# KERNEL: addr =  8
