module darray;
 integer da [ ]; //dynamic array ‘da’ of type integer
 initial
 begin
  da = '{1,2,3,4}; 
 $display($stime,,, "da = ",da);
  $display($stime,,, "da size = %0d",da.size);
 da.delete( ); 
 $display($stime,,, "da size = %0d",da.size);


 end
 endmodule
 

//#          0  da = 1 2 3 4
//#          0  da size = 4
//#          0  da size = 0
