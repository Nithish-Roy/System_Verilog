class fifo_inputs;
                    byte data_in    ;
                    bit       rw    ;
                    bit [2:0]addr   ;

function new();
    data_in = 4'b0000;
    addr = 3'b010;
    rw  = 1'b1;
endfunction

task printer;
    $display($time,"data_in = %b addr = %b rw = %b", data_in,addr,rw);
endtask

endclass

module tester();
    initial begin
fifo_inputs inst1, inst2;

inst1 = new();
$display("the instance 1");
inst1.printer();

inst2 = inst1;
$display("the instance 2");
inst2.printer();

inst2.data_in = 4'b1010;
inst2.addr = 2'b111;
inst2.rw = 1'b0;

inst1.printer();
   end
endmodule



//# the instance 1
//#                    0data_in = 00000000 addr = 010 rw = 1
//# the instance 2
//#                    0data_in = 00000000 addr = 010 rw = 1
//#                    0data_in = 00001010 addr = 011 rw = 0
