class inline;
    rand bit [3:0] data;
    rand bit e;
    constraint for_data {data inside {[0:10]};}
endclass

module inline_constraint;
    inline i1;
        initial begin
            i1 = new();
          repeat(10) begin
            i1.randomize with { if(data %2 ==0)
                                   (e == 1);
                                  };
            $display("the data = %d and the even = %b", i1.data, i1.e);
          end
          end
endmodule
// # KERNEL: the data =  0 and the even = 1
// # KERNEL: the data =  3 and the even = 1
// # KERNEL: the data =  4 and the even = 1
// # KERNEL: the data =  1 and the even = 0
// # KERNEL: the data =  7 and the even = 1
// # KERNEL: the data =  7 and the even = 1
// # KERNEL: the data =  7 and the even = 1
// # KERNEL: the data =  9 and the even = 0
// # KERNEL: the data =  5 and the even = 0
// # KERNEL: the data =  8 and the even = 1
