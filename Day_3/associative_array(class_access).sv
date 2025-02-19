module assoc_arr;
 class AB;
 int a;
 int b;
 bit c;
 byte d;
 endclass
 int arr[AB]; //array accessing using class data type
 AB obj, obj1, obj3, obj4; //object is created
 initial begin
 obj = new();
 obj1= new();
 obj3 = new();
 obj4 = new();
 arr[obj]=20; //Store 20 at the object handle index 'obj'
 $display("%0d",arr[obj]);
 arr[obj1]=10; //Store 10 at the object handle index 'obj1'
 $display("%0d",arr[obj1]);
 arr[obj3] = 1'b1;
 arr[obj4] = 8'd10;
  $display("%0d",arr[obj3]);
  $display("%0b",arr[obj4]);
 
 end
 endmodule

//# 20
//# 10
//# 1
//# 1010
