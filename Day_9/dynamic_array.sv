module dynamic_array_with_methods;
    byte da1    [];
    int  da2    [];

        initial begin
                $display("size of dynamic array 1 =%d ", da1.size());
                $display("size of dynamic array 2 =%d ", da2.size());
    
            da1 =   new[2];
            da2 =   new[3];
            
                $display("size of dynamic array 1 =%d ", da1.size());
                $display("size of dynamic array 2 =%d " ,da2.size());
                 
                 
            da1 = {10,11,12};
            da2 = {13,14,15,16,17};

                
                foreach (da1[i]) begin
                    $display("da1[%d] = %d",i,da1[i]);
                end
                
                 foreach (da2[i]) begin
                    $display("da2[%d] = %d",i,da1[i]);
                 end

                da1.delete();
                $display("the size after deletion = %d",da1.size);
                
        end
endmodule
                 
