class random;
    randc byte x;
    randc byte y;
    randc byte z;
    constraint forx {x <10;
                     x > 5;}
    constraint fory {y < 8;
                     y > 4;}
    extern constraint forz;
        function void display();
        $display("x = %d y = %d z = %d", x, y , z);
        endfunction
endclass

constraint random :: forz {z < 6;
                           z > 3;}  //writing a constraint outside the class with extern keyword

module q2;
    random r1;
        initial begin
            r1 = new();
                repeat(10) begin
                    r1.randomize();
                        r1.display;
                end
        end
endmodule


//# KERNEL: x =    9 y =    7 z =    5
//# KERNEL: x =    7 y =    5 z =    4
//# KERNEL: x =    8 y =    6 z =    5
//# KERNEL: x =    6 y =    6 z =    4
//# KERNEL: x =    7 y =    7 z =    5
//# KERNEL: x =    8 y =    5 z =    4
//# KERNEL: x =    6 y =    7 z =    4
//# KERNEL: x =    9 y =    6 z =    5
//# KERNEL: x =    7 y =    5 z =    5
//# KERNEL: x =    8 y =    7 z =    4
