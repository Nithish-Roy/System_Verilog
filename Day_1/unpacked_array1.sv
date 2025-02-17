module array;
  initial begin 
    int arr [7] = '{20,20,45,60,67,33,66};
    foreach(arr[i]) begin
      $display("arr[%0d] = %0d",i,arr[i]);
  end
  end
endmodule


//arr[0] = 20
//arr[1] = 20
//arr[2] = 45
//arr[3] = 60
//arr[4] = 67
//arr[5] = 33
//arr[6] = 66
