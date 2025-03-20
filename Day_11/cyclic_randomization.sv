class variables;
    randc byte a;
    constraint const1 {a inside {[10:20]};}
    constraint const2 {a inside {12,14,16,18,20};}
endclass

module q4;
    variables v1;
        initial begin
            v1 = new();
                repeat(10) begin
                    if(v1.randomize()) begin
                      $display("the value in byte =%0d",v1.a);
                    end
                end
        end
endmodule

// the value in byte =14
// the value in byte =20
// the value in byte =16
// the value in byte =18
// the value in byte =12
// the value in byte =18
// the value in byte =20
// the value in byte =14
// the value in byte =16
// the value in byte =12
