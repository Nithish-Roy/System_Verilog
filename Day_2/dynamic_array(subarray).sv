module darray;
 int abc[ ][ ]; //array of arrays
 initial begin
 abc = new[3]; //sub array still not created
 $display("abc = ",abc);

 foreach (abc[i]) begin
 abc[i] = new[4];
 $display("abc[%0d] = %p", i, abc[i]);
 end
 $display("abc = ",abc);

 foreach(abc[i , j]) begin
 abc[i][j] = (j+1)+i;
 end

 foreach (abc[i , j]) begin
 $display("abc[%0d][%0d] = %0d", i, j, abc[i][j]);
 end

 $display("abc = ",abc);
 end
 endmodule

//# abc = {} {} {}
//# abc[0] = '{0, 0, 0, 0}
//# abc[1] = '{0, 0, 0, 0}
//# abc[2] = '{0, 0, 0, 0}
//# abc = {0 0 0 0} {0 0 0 0} {0 0 0 0}
//# abc[0][0] = 1
//# abc[0][1] = 2
//# abc[0][2] = 3
//# abc[0][3] = 4
//# abc[1][0] = 2
//# abc[1][1] = 3
//# abc[1][2] = 4
//# abc[1][3] = 5
//# abc[2][0] = 3
//# abc[2][1] = 4
//# abc[2][2] = 5
//# abc[2][3] = 6
//# abc = {1 2 3 4} {2 3 4 5} {3 4 5 6}
