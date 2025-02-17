module md;
  int arr [3][2][3] =         '{'{'{0 ,1, -2},	'{3, 4, 5}},
                        			 '{'{6 ,7, 8},		'{9, 10, 11}},
                        			 '{'{11 ,12, 32},	'{13, 14, 15}}
                                      };
    initial begin
    foreach (arr[i,j, k]) begin
      $display("array[%0d][%0d][%0d] = %0d", i,j, k, arr[i][j][k]);
    end
  end
endmodule

//array[0][0][0] = 0
// array[0][0][1] = 1
// array[0][0][2] = -2
// array[0][1][0] = 3
// array[0][1][1] = 4
// array[0][1][2] = 5
// array[1][0][0] = 6
// array[1][0][1] = 7
// array[1][0][2] = 8
// array[1][1][0] = 9
// array[1][1][1] = 10
// array[1][1][2] = 11
// array[2][0][0] = 11
// array[2][0][1] = 12
// array[2][0][2] = 32
// array[2][1][0] = 13
// array[2][1][1] = 14
// array[2][1][2] = 15
