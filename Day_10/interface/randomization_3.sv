module q5;
     byte data;
     bit rw;
    initial begin
        repeat(10) begin
          std::randomize(data);
          std::randomize(rw);
            $display("data = %d rw = %b",data, rw);
        end
    end
endmodule

// data =         110 rw = 0
// data =         -25 rw = 1
// data =          37 rw = 1
// data =         -44 rw = 1
// data =         101 rw = 0
// data =        -115 rw = 0
// data =          28 rw = 1
// data =         122 rw = 1
// data =         -96 rw = 1
// data =         -79 rw = 1
