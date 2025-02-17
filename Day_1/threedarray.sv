module threed;
  int array[2][3][3] = '{'{'{1, 10, 100}, '{2, 20, 200}, '{3, 30, 300}},
                         '{'{4, 40, 400}, '{5, 50, 500}, '{6, 60, 600}}};
  initial begin
    foreach (array[i,j, k]) begin
      $display("array[%0d][%0d][%0d] = %0d", i,j, k, array[i][j][k]);
    end
  end
endmodule
//array[0][0][0] = 1
// array[0][0][1] = 10
// array[0][0][2] = 100
// array[0][1][0] = 2
// array[0][1][1] = 20
// array[0][1][2] = 200
// array[0][2][0] = 3
// array[0][2][1] = 30
// array[0][2][2] = 300
// array[1][0][0] = 4
// array[1][0][1] = 40
// array[1][0][2] = 400
// array[1][1][0] = 5
// array[1][1][1] = 50
// array[1][1][2] = 500
// array[1][2][0] = 6
// array[1][2][1] = 60
// array[1][2][2] = 600
