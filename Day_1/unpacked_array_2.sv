module array;

  initial begin 
    int arr [7] ;
  arr [0] =  10 ;
  arr [1] =  10 ;
  arr [2] =  10 ;
  arr [3] =  10 ;
  arr [4] =  10 ;
  arr [5] =  10 ;
  arr [6] =  10 ;
  
    foreach(arr[i]) begin
      $display("arr[%0d] = %0d",i,arr[i]);
  end
  end
endmodule
