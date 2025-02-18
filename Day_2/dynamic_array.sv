module darray;
 byte d_array1[ ]; //dynamic
 initial begin
 d_array1 = new[10];	//new method with size 10
 $display($stime,,, "d_array1 size = %0d",d_array1.size);
 d_array1 = {10,10,11,55};	//array with size 4 and values
 $display($stime,,, "d_array1 size = %0d",d_array1.size);
 $display($stime,,, "d_array1=",d_array1);
 d_array1[2]=5;			//array with index value replaced
 $display($stime,,, "d_array1[0]=",d_array1[0]);
 $display($stime,,, "d_array1[1]=",d_array1[1]);
 $display($stime,,, "d_array1[2]=",d_array1[2]);
 $display($stime,,, "d_array1=",d_array1);
 d_array1 = new [d_array1.size( ) + 1] (d_array1) ; //copy and resizing using new method
 $display($stime,,, "d_array1 size = %0d",d_array1.size);
 $display($stime,,, "d_array1=",d_array1);
 end
 endmodule

//#          0  d_array1 size = 10
//#          0  d_array1 size = 4
//#          0  d_array1 = 10 10 11 55
//#          0  d_array1[0]=  10
//#          0  d_array1[1]=  10
//#          0  d_array1[2]=   5
//#          0  d_array1=10 10 5 55
//#          0  d_array1 size = 5
//#          0  d_array1=10 10 5 55 0 
