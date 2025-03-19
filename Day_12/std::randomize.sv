class full_adder;
    randc logic[2:0] data;
    bit sum;
    bit carry;

    function void calculate_and_display;
      std::randomize(this) with {data <= 5;}; //testing with limited vectors using with and std::randomize
      this.carry = 	(&data[1:0])|(&data[2:0])|(&data[2:1]);
      this.sum 	= 	^data[2:0];
    $display("input data = %b sum = %b carry = %b",data,sum,carry);
    endfunction
endclass

module q1;
full_adder fa;
    initial begin 
        fa = new();
      repeat(10) begin
            fa.calculate_and_display;
      end
    end
endmodule
//# KERNEL: input data = 010 sum = 1 carry = 0
//# KERNEL: input data = 101 sum = 0 carry = 0
//# KERNEL: input data = 110 sum = 0 carry = 1
//# KERNEL: input data = 100 sum = 1 carry = 0
//# KERNEL: input data = 000 sum = 0 carry = 0
//# KERNEL: input data = 011 sum = 0 carry = 1
//# KERNEL: input data = 111 sum = 1 carry = 1
//# KERNEL: input data = 001 sum = 1 carry = 0
//# KERNEL: input data = 110 sum = 0 carry = 1
//# KERNEL: input data = 011 sum = 0 carry = 1
