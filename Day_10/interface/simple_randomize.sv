// Code your testbench here
// or browse Examples
class fifo;
    randc byte data;
    rand bit rw;
endclass


module q1;
    fifo f1;
    initial begin
        f1 = new();
      repeat(4) begin
        f1.randomize();
        $display(" the data = %0d the rw = %b", f1.data, f1.rw);
    end
    end
endmodule




//# KERNEL:  the data = 16 the rw = 0
//# KERNEL:  the data = 23 the rw = 1
//# KERNEL:  the data = 32 the rw = 1
//# KERNEL:  the data = -94 the rw = 1
