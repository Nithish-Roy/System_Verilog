class fifo;
    rand bit [7:0] data;
    rand bit rw;
    constraint for_data {data inside {[10:15]};}
endclass

class fifo_static;
    rand bit [7:0] data;
    rand bit rw;
    static constraint for_data_static {data inside {[15:20]};}
endclass

module testing;
    fifo f1, f2;
        fifo_static f3, f4;
        initial begin
                f1 = new();
                f2 = new();
                f3 = new();
                f4 = new();

                    f1.for_data.constraint_mode(0);
                    f3.for_data_static.constraint_mode(0);
          $display(" WITHOUT STATIC CONSTRAINT");
                    
                       repeat(10) begin
                         f1.randomize();
                         f2.randomize();
                   
                         $display("values for instance 1 data = %d rw = %b values for instance 2 data = %d rw = %b",f1.data,f1.rw,f2.data,f2.rw);
                         $display("-------------------------------------------------------------------------------");
                       end
                    $display(" WITH STATIC CONSTRAINT");

         			repeat(10) begin
                         f3.randomize();
                         f4.randomize();
                      $display("values for instance 3 data = %d rw = %b values for instance 4 data = %d rw = %b",f3.data,f3.rw,f4.data,f4.rw);
                      $display("---------------------------------------------------------------------------------");
                       end
        end
endmodule



// WITHOUT STATIC CONSTRAINT
//values for instance 1 data =  86 rw = 1 values for instance 2 data =  10 rw = 1
//-------------------------------------------------------------------------------
//values for instance 1 data = 225 rw = 1 values for instance 2 data =  15 rw = 0
//-------------------------------------------------------------------------------
//values for instance 1 data =  96 rw = 0 values for instance 2 data =  11 rw = 0
//-------------------------------------------------------------------------------
//values for instance 1 data = 204 rw = 1 values for instance 2 data =  11 rw = 1
//-------------------------------------------------------------------------------
//values for instance 1 data = 201 rw = 0 values for instance 2 data =  12 rw = 0
//-------------------------------------------------------------------------------
//values for instance 1 data = 249 rw = 1 values for instance 2 data =  11 rw = 0
//-------------------------------------------------------------------------------
//values for instance 1 data = 143 rw = 0 values for instance 2 data =  11 rw = 1
//-------------------------------------------------------------------------------
//values for instance 1 data = 255 rw = 1 values for instance 2 data =  10 rw = 1
//-------------------------------------------------------------------------------
//values for instance 1 data = 173 rw = 0 values for instance 2 data =  11 rw = 1
//-------------------------------------------------------------------------------
//values for instance 1 data =  35 rw = 1 values for instance 2 data =  10 rw = 1
//-------------------------------------------------------------------------------
// WITH STATIC CONSTRAINT
//values for instance 3 data =  63 rw = 1 values for instance 4 data = 141 rw = 0
//---------------------------------------------------------------------------------
//values for instance 3 data =  17 rw = 1 values for instance 4 data = 165 rw = 0
//---------------------------------------------------------------------------------
//values for instance 3 data = 223 rw = 0 values for instance 4 data = 147 rw = 0
//---------------------------------------------------------------------------------
//values for instance 3 data =  59 rw = 1 values for instance 4 data = 164 rw = 1
//---------------------------------------------------------------------------------
//values for instance 3 data = 115 rw = 1 values for instance 4 data = 241 rw = 0
//---------------------------------------------------------------------------------
//values for instance 3 data =  10 rw = 1 values for instance 4 data = 229 rw = 1
//---------------------------------------------------------------------------------
//values for instance 3 data = 124 rw = 1 values for instance 4 data =  22 rw = 1
//---------------------------------------------------------------------------------
//values for instance 3 data = 214 rw = 0 values for instance 4 data = 220 rw = 0
//---------------------------------------------------------------------------------
//values for instance 3 data = 160 rw = 0 values for instance 4 data = 225 rw = 1
//---------------------------------------------------------------------------------
//values for instance 3 data =  51 rw = 1 values for instance 4 data = 165 rw = 1
//---------------------------------------------------------------------------------
