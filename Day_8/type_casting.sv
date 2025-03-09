module data_types_and_type_casting();
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
    
    
    
    int         type_data_int       ;
    shortint    type_data_shortint  ;
    longint     type_data_longint   ;
    int         type_data_real;

    initial begin
               data_int      =8'd10 ;     
               data_integer  =32'b010zxx ;  
               data_reg      =8'b1xz ;  
               data_bit      =8'd4 ; 
               data_byte     =8'd5 ; 
               data_logic    =8'd6 ; 
               data_real     =10.18 ; 
               data_time     =8'd7 ; 
               data_short_int=8'd8 ; 
               data_long_int =8'd7 ;
        
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

                      type_data_int = int'(data_integer);
                      $display("cast to int from integer");
                      $display("data_integer =%b  ",data_integer   );        
                      $display("type_data_int =%b ",type_data_int);
                        
                      type_data_shortint = shortint'(data_int);
                      $display("cast to shortint form int");
                      $display("data_int =%b  ",data_int);
                      $display("type_data_shortint =%b ",type_data_shortint);

                       type_data_longint = longint'(data_int);
                       $display("cast to longint form int");
                       $display("data_int =%b  ",data_int);
                       $display("type_data_longint =%b ",type_data_longint);

                       type_data_real = int'(data_real);
                       $display("cast to real form int");
                       $display("data_real =%0f  ",data_real);
                       $display("type_data_real =%0d ",type_data_real);

    end
endmodule










