class arrays;
  rand byte a[7];
  rand byte b[3][3];
  rand byte c[3][3][3];

  constraint for_c { 
    foreach (c[i, j, k]) 
      c[i][j][k] == i; 
  }
endclass

module array_randomizer;
    arrays a1;
    
    initial begin
        a1 = new();
        
        $display("Default values of the arrays:");
        $display("Array a = %p", a1.a);
        $display("Array b = %p", a1.b);
        $display("Array c = %p", a1.c);
        
        if (a1.randomize()) begin
            $display("Randomized values of the arrays:");
            $display("Array a = %p", a1.a);
            $display("Array b = %p", a1.b);
            $display("Array c = %p", a1.c);
        end 
    end
endmodule

// Default values of the arrays:
// Array a = '{0, 0, 0, 0, 0, 0, 0} 
// Array b = '{'{0, 0, 0}, '{0, 0, 0}, '{0, 0, 0}} 
// Array c = '{'{'{0, 0, 0}, '{0, 0, 0}, '{0, 0, 0}}, '{'{0, 0, 0}, '{0, 0, 0}, '{0, 0, 0}}, '{'{0, 0, 0}, '{0, 0, 0}, '{0, 0, 0}}} 
// Randomized values of the arrays:
// Array a = '{-71, 108, -89, -93, -100, 52, 57} 
// Array b = '{'{-125, 20, -10}, '{82, -55, -37}, '{54, 105, -118}} 
// Array c = '{'{'{0, 0, 0}, '{0, 0, 0}, '{0, 0, 0}}, '{'{1, 1, 1}, '{1, 1, 1}, '{1, 1, 1}}, '{'{2, 2, 2}, '{2, 2, 2}, '{2, 2, 2}}} 
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
