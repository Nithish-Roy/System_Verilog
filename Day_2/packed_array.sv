module tb;
  bit [3:0][7:0] m_data; //4X8 
 initial begin
 m_data = 32'h02010010;
 $display ("m_data = 0x%h", m_data);
 foreach(m_data[i]) begin
 $display ("m_data[%0d] = 0x%h", i, m_data[i]);
 end
 end
 endmodule

 /*
# m_data = 0x02010010
# m_data[3] = 0x02
# m_data[2] = 0x01
# m_data[1] = 0x00
# m_data[0] = 0x10
*/
