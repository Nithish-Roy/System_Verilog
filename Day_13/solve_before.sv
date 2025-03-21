class implication;
    rand bit[3:0] a;
    rand bit b;

    constraint implicator {(a %2 ==0) -> (b == 1);}
endclass

class implication_with_solver;
    rand bit[3:0] a;
    rand bit b;

    constraint implicator_with_solve {(a %2 ==0) -> (b == 1);
                                        solve a before b;}
        
endclass

module q2;
    initial begin
        implication i1 = new();
        implication_with_solver i2 = new();
      $display("-----------------------WITHOUT SOLVE BEFORE--------------------------");
        repeat(20) begin
            i1.randomize();
                $display("a = %d b = %b",i1.a , i1.b);
          
        end
      $display("-----------------------WITH SOLVE BEFORE--------------------------");
    
      repeat(20) begin
            i2.randomize();
          $display("a = %d b = %b", i2.a, i2.b);
        end
      $display("-----------------------------------------------------------------------");
    end
endmodule
    
//          -----------------------WITHOUT SOLVE BEFORE--------------------------
//a = 10 b = 1
//a = 10 b = 1
//a =  7 b = 0
//a =  5 b = 1
//a =  0 b = 1
//a =  5 b = 0
//a =  0 b = 1
//a = 15 b = 1
//a = 11 b = 0
//a = 11 b = 0
//a =  5 b = 0
//a = 14 b = 1
//a =  9 b = 1
//a =  9 b = 0
//a =  5 b = 1
//a = 11 b = 0
//a = 14 b = 1
//a = 15 b = 1
//a =  0 b = 1
//a = 15 b = 1
//-----------------------WITH SOLVE BEFORE--------------------------
//a =  2 b = 1
//a =  2 b = 1
//a = 12 b = 1
//a = 12 b = 1
//a =  7 b = 0
//a =  8 b = 1
//a =  6 b = 1
//a =  9 b = 0
//a =  4 b = 1
//a = 10 b = 1
//a =  2 b = 1
//a = 14 b = 1
//a =  0 b = 1
//a = 11 b = 0
//a = 12 b = 1
//a = 10 b = 1
//a =  5 b = 0
//a =  0 b = 1
//a = 13 b = 0
//a = 13 b = 0
//----------------------------------------------------------------------- 
