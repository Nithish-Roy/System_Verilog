class random;
    randc bit [2:0] a;
    rand bit b;

    constraint implication_constraint {(a inside {2,4,6})-> (b == 1);}
endclass

module q5;
    initial begin
        random r1 = new();
      repeat(20) begin
                if(r1.randomize) begin
                    $display("a = %b b =%b", r1.a, r1.b);
                end
            end
    end
endmodule
// a = 011 b =1
// a = 110 b =1
// a = 100 b =1
// a = 000 b =1
// a = 010 b =1
// a = 111 b =1
// a = 001 b =1
// a = 101 b =1
// a = 111 b =0
// a = 101 b =0
// a = 110 b =1
// a = 000 b =1
// a = 001 b =0
// a = 100 b =1
// a = 011 b =0
// a = 010 b =1
// a = 110 b =1
// a = 011 b =0
// a = 100 b =1
// a = 001 b =1
