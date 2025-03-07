 class fifo_internals;
 int addr = 32'hf;
 int data = 32'haa;
 endclass

 class fifo;
 byte data = 10;
 byte addr = 6;
 bus m_i = new( );
 function void copy(iconnect c);
 IC_ID_i = c.IC_ID_i;
 m_i = new c.m_i;
 endfunction
 endclass
 
 module deep_copy();
 iconnect IC1;
 iconnect IC2;
 initial begin
 IC1 = new;
 IC2 = new;
 IC2.copy(IC1);
 IC1.IC_ID_i = 2020;
 IC1.m_i.addr = 'hbb;
 IC1.m_i.data = 'hcc;
 $display("IC1.IC_ID_i = %0d", IC1.IC_ID_i);
 $display("IC1.m_i.addr = %0h", IC1.m_i.addr);
 $display("IC1.m_i.data = %0h", IC1.m_i.data);
 $display("\n");
 $display("IC2.IC_ID_i = %0d", IC2.IC_ID_i);
 $display("IC2.m_i.addr = %0h", IC2.m_i.addr);
 $display("IC2.m_i.data = %0h", IC2.m_i.data);
 end
 endmodule
