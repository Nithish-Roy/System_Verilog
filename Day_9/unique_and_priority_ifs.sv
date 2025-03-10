module uniqueif();
    int a  = 10, b = 9 , c = 11;
    initial begin
        unique if (a == b )
            $display("a  = b");
        else if  (a < c)
            $display("a < b");
        else if (a < b)
            $display("a < b");
        else
            $display("a > b");

        $display("priority block");
        priority if (a == b )
            $display("a  = b");
        else if  (a < c)
            $display("a < c");
        else if (a < b)
            $display("a < b");
        else
            $display("a > b");


    end
        endmodule
