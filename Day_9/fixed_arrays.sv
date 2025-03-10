module fixed_array();
    
    logic [7:0] fap        ;
    logic [7:0] famd [7:0];
    logic faup  [7:0];

    initial begin

        fap = 8'b10111101;

            foreach (faup[i]) begin
            faup[i] = $random % 2;
                #10;
            end

            $display("fap = %b",fap);
         foreach (faup[i])begin
             $display("faup[%0d] = %0d",i,faup[i]);
                 #10;
          end

            foreach (famd[i]) begin
                foreach (famd[j]) begin
                    famd[i][j] = $random % 2;
                end
            end
            
            foreach (famd[i]) begin
                 foreach (famd[j]) begin         
                              famd[i][j] = $random % 2; 
                end
            end
            
              foreach (famd[i]) begin
                    foreach (famd[j]) begin         
                       $display( "famd[%0d][%0d] = %b",i,j,famd[i][j]); 
                    end
              end
    end
endmodule 
