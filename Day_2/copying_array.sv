module darray; //copying of arrays
 int oarray [ ]; //one array(dynamic)
 int carray [ ]; //one array(dynamic)
 initial begin

 oarray = new [5];
 oarray = '{1, 2, 3, 4, 5, 6};
 carray = oarray; // copy "oarray" to "carray"
 $display ("carray = %p", carray);
 carray.delete(); //delete method
 $display ("carray_size = %d", carray.size());
 end
 endmodule

//carray = {1, 2, 3, 4, 5, 6}
//carray_size = 0
