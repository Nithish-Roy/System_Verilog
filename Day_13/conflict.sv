class inline_conflict;
  rand bit [2:0] data;
  rand bit [3:0] addr;
  
  constraint for_addr {addr > 10 ;} 
  
endclass

module inline_conflicter;
  inline_conflict ic;
  initial begin
    ic = new();
    repeat(10) begin
      ic.randomize with { addr <10;};
      $display ("addr = %d data = %d", ic.addr, ic.data);
    end
  end
endmodule
// # RCKERNEL: Warning: RC_0024 testbench.sv(15): Randomization failed. The condition of randomize call cannot be satisfied.
// # RCKERNEL: Info: RC_0103 testbench.sv(15): ... the following condition cannot be met: (20<ic.addr)
// # RCKERNEL: Info: RC_1007 testbench.sv(1): ... see class 'inline_conflict' declaration.
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: addr =  0 data = 0
// # KERNEL: Simulation has finished. There are no more test vectors to simulate.
// # VSIM: Simulation has finished.
