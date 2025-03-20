class data_generator;
    rand byte data_inside;
    rand byte data_not_inside;
    constraint for_data_inside {data_inside inside{[12:22]};}
    constraint for_data_not_inside {data_not_inside inside{[12:22]};}
endclass

module q1;
    data_generator dg;
    integer i = 0;
    initial begin
        dg = new();
        repeat(10) begin   
        if(dg.randomize()) begin
            i++;
          $display("iteration = %d",i);
          $display("data_inside = %0d", dg.data_inside);
          $display("data_not_inside = %0d", dg.data_not_inside);
             end
         end
    end
endmodule

// iteration =           1
// data_inside = 14
// data_not_inside = 30
// iteration =           2
// data_inside = 14
// data_not_inside = -30
// iteration =           3
// data_inside = 18
// data_not_inside = -108
// iteration =           4
// data_inside = 20
// data_not_inside = 97
// iteration =           5
// data_inside = 14
// data_not_inside = -101
// iteration =           6
// data_inside = 13
// data_not_inside = -99
// iteration =           7
// data_inside = 22
// data_not_inside = 31
// iteration =           8
// data_inside = 14
// data_not_inside = -69
// iteration =           9
// data_inside = 18
// data_not_inside = 126
// iteration =          10
// data_inside = 15
// data_not_inside = 39
