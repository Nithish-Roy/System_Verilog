class fifo;
    rand byte data;
    rand bit rw;
endclass

module q3;
    fifo f1;
        initial begin
            f1 = new();
            repeat(10) begin
            f1.randomize();
              $display("data = %0d rw = %b", f1.data, f1.rw);
            end
        end
endmodule
//data =         -71 rw = 0
//data =          91 rw = 0
//data =          58 rw = 0
//data =           7 rw = 0
//data =         -32 rw = 0
//data =         -45 rw = 0
//data =          42 rw = 0
//data =         -13 rw = 0
//data =         -96 rw = 1
//data =         -71 rw = 1
