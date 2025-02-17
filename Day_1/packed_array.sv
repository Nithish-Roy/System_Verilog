module packed_array_example;
  bit  [2:0][3:0] parray = '{4'b1011, 4'b1001, 4'h0110};
  initial begin
    foreach (array[i]) begin
      $display("array[%0h] = %0d", i, parray[i]);
    end
  end
endmodule
//array[2] = 11 
// array[1] = 9
// array[0] = 6
