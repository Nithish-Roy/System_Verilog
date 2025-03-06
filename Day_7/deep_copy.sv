class fifo_internals;
    integer rd_ptr;
    integer wr_ptr;

    function new();
        rd_ptr = 0;
        wr_ptr = 0;
   endfunction
    
   function fifo_internals copy();
    copy = new();
    copy.rd_ptr = this.rd_ptr;
    copy.wr_ptr = this.wr_ptr;
    return copy;
   endfunction

endclass

class fifo;
     reg    [7:0]   data;
     reg    [2:0]   addr;
     bit            rw;
    
    fifo_internals internals;

     function new();
        this.data = 8'd0;
        this.addr = 3'b000;
        internals = new();
     endfunction

     function void display();
     $display("data = %b addr = %b rw = %b rd_ptr = %0d wr_ptr = %0d",data,addr,rw,internals.rd_ptr,internals.wr_ptr);
     endfunction
       
    function fifo copy();
     copy = new();
     copy.data = this.data;
     copy.addr = this.addr;
     copy.internals = internals.copy;
     return copy;
    endfunction

 endclass

 module tester();
         fifo f1;
         fifo f2;  
         initial begin

             $display("DEEP_COPY");
             f1 = new();
             $display("the instance f1");
             f1.display;
                
             f2 = f1.copy();
             $display("the instance f2");
             f2.display;

             f2.data = 8'd6;
             f2.addr = 3'd3;
             f2.internals.rd_ptr = 1;
             f2.internals.wr_ptr = 2;
             $display("the instance f1");
             f1.display;
             $display("the instance f2");
             f2.display();
            end
 endmodule
