module blocking_and_non_blocking();
    int a,b,c,d;

    initial begin
            a = 10;
            b = 10;
            $display("the value of a =%d  ",a);
            $display("the value of b =%d  ",b);
            c <= a + b;
            d <= a - b; 
            $display("the value of c =%d  ",c);
            $display("the value of d =%d  ",d);
    end

    final begin
             $display("the value of a =%d  ",a);
             $display("the value of b =%d  ",b);
             $display("the value of c =%d  ",c);
             $display("the value of d =%d  ",d);
    end
endmodule
