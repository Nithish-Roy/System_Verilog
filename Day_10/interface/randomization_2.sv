class fifo;
    randc  logic [1:0] data;
    randc bit rw;
endclass

module q3;
    fifo f1;
        initial begin
            f1 = new();
            repeat(10) begin
            f1.randomize();
              $display("data = %d rw = %b", f1.data, f1.rw);
            end
        end
endmodule
//data = 3 rw = 1
//data = 1 rw = 0
//data = 0 rw = 0
//data = 2 rw = 1
//data = 2 rw = 1
//data = 0 rw = 0
//data = 1 rw = 0
//data = 3 rw = 1
//data = 1 rw = 0
//data = 0 rw = 1
