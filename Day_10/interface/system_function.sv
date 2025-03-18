module q2;
    int     a   ;
    int     b   ;
    int     c   ;
    int     d   ;
    int     e   ;
    int     f   ;

    initial begin
        $display("WITHOUT SEED");
        a = $random;
        $display("value of a using system function $random :  = %d ", a );
        b = $urandom;
      $display("value of b using system function $urandom :  = %d ", b );
        c = $urandom_range(3, 8);
      $display("value of c using system function $urandom_range :  = %d ", c );
       $display("WITH SEED");
        d = $random(4);
      $display("value of d using system function with seed $random :  = %d ", d );
        e = $urandom(55);
      $display("value of e using system function with seed $urandom :  = %d ", e );
        f = $urandom_range(3, 5);
      $display("value of f using system function $urandom_range :  = %d ", f );  
    end
endmodule

// WITHOUT SEED
// value of a using system function $random :  =   303379748 
// value of b using system function $urandom :  =    98710838 
// value of c using system function $urandom_range :  =           5 
// WITH SEED
// value of d using system function with seed $random :  = -2147207168 
// value of e using system function with seed $urandom :  =  2009534967 
// value of f using system function $urandom_range :  =           5 
