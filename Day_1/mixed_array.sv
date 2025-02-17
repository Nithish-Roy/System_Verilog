 module arr;
logic [7:0] arr [2:0];

initial begin
  //didnt write on location 2 hence returns X since logic is 4-state
  arr [0] = 8'b0101_1010;
  arr [1] = 8'b0011_0101;
  foreach (arr[i]) begin
    $display("array[%0d] = %0d", i, arr[i]);
  end
end
 endmodule

//array[2] = x
//array[1] = 53
//array[0] = 90
