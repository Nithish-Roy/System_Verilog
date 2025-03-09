module data_types_and_default_values();
    int         data_int      ;  
    integer     data_integer  ;  
    reg [7:0]   data_reg      ;  
    bit [7:0]   data_bit      ; 
    byte        data_byte      ; 
    logic [7:0] data_logic     ; 
    real        data_real      ; 
    time        data_time      ; 
    shortint    data_short_int ; 
    longint     data_long_int  ;
    initial begin
        $display("data_int     =%b  ",data_int       );
        $display("data_integer =%b  ",data_integer   );
        $display("data_reg     =%b  ",data_reg       );
        $display("data_bit     =%b  ",data_bit       );
        $display("data_byte    =%b  ",data_byte      );
        $display("data_logic   =%b  ",data_logic     );
        $display("data_real    =%b  ",data_real      );
        $display("data_time    =%b  ",data_time      );
        $display("data_short_int=%b ",data_short_int );
        $display("data_long_int =%b ",data_long_int  );    
    end
endmodule




















