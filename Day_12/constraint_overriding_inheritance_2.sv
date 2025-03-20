class full_adder;
    rand reg [2:0] data;
     bit  sum;
     bit carry;

    function void display;
    this.sum = ^data;
    this.carry = 	(&data[1:0])|(&data[2:0])|(&data[2:1]);
    $display("data = %d(%b) sum = %b carry = %b", data,data, sum, carry);
    endfunction

    constraint for_data {data > 3;}
endclass

class constraint_overrider extends full_adder;
    constraint for_data {data < 3;}
endclass

module q3;
    constraint_overrider fa; //if object is created for the parent class then the orginal constraint gets executed
    initial begin
    fa = new();
    repeat(10) begin
      void'(fa.randomize());
        fa.display();
    end
    end
endmodule
//data = 2(010) sum = 1 carry = 0
//data = 3(011) sum = 0 carry = 1
//data = 1(001) sum = 1 carry = 0
//data = 2(010) sum = 1 carry = 0
//data = 3(011) sum = 0 carry = 1
//data = 1(001) sum = 1 carry = 0
//data = 3(011) sum = 0 carry = 1
//data = 2(010) sum = 1 carry = 0
//data = 1(001) sum = 1 carry = 0
//data = 2(010) sum = 1 carry = 0
