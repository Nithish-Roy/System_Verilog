class fifo_internals #(SIZE = 32);
    bit [SIZE - 1'b1 : 0] rd_ptr;
    bit [SIZE - 1'b1 : 0] wr_ptr;

    function new();
        rd_ptr = 10;
        wr_ptr = 11;
    endfunction
    
    function void display();
       $display("rd_ptr = %b wr_ptr = %b",rd_ptr,wr_ptr);
    endfunction 

endclass 

module tester();
    fifo_internals #(16) f1;
        fifo_internals f2;
        initial begin 
            f1 = new();
            f2 = new();
            f1.rd_ptr = 10;
            f1.wr_ptr = 20;
            f2.rd_ptr = 11;
            f2.wr_ptr = 14;
             $display("with overriding");
             f1.display();
             $display("without overriding");
             f2.display();
        end
endmodule

            
