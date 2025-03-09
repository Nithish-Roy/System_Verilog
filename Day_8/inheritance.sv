class fifo_internals;
    integer read_ptr;
    integer wr_ptr;
    function new();
        read_ptr = 10;
        wr_ptr = 11;
    endfunction
    function void display();
        $display("read_ptr = %d, wr_ptr = %d", read_ptr, wr_ptr);
    endfunction
endclass

class fifo extends fifo_internals;
    byte data;
    bit [2:0] addr;
    function new();
        super.new(); 
        data  = 8'd9;
        addr = 3'd7;
    endfunction
    function void display();
        $display("data = %d, addr = %d", data, addr);
        super.display();
    endfunction
endclass

module tester();
    fifo f1;
    initial begin
        f1 = new();
        f1.display(); 
    end
endmodule


