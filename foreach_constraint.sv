class arrays;
    rand byte a [7];
    rand byte b [10];
  constraint for_a {foreach (a[i]) a[i] == i*i;}
  constraint for_b {foreach (b[i]) b[i] == i* 2;}
endclass

module q1;
    arrays a1;
        initial begin 
            a1 = new();
                a1.randomize();
                    $display("array a = %p", a1.a);
          $display("array b = %p",a1.b);
        end
endmodule

// array a = '{0, 1, 4, 9, 16, 25, 36} 
// array b = '{0, 2, 4, 6, 8, 10, 12, 14, 16, 18} 
