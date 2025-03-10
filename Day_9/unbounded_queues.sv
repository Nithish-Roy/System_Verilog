module queues();
    int ubq[$];
    initial begin
             for (integer i = 0; i < 12; i++) begin
                ubq.push_back(i * i);
             end
                                                    
             foreach (ubq[i]) begin
                $display("ubq[%0d] = %0d",i,ubq[i]);
             end
                
                $display("UNBOUNDED QUEUES");
                 
                 $display("size of ubq = %0d",ubq.size());
                 ubq.delete(10);
                 foreach (ubq[i]) begin
                     $display("ubq[%0d] = %0d",i,ubq[i]);
                 end 

                 ubq.insert(2,22);
                 foreach (ubq[i]) begin
                     $display("ubq[%0d] = %0d",i,ubq[i]);
                 end 

                 ubq.delete(10);
                 $display("size of ubq = %0d",ubq.size());
                 foreach (ubq[i]) begin
                     $display("ubq[%0d] = %0d",i,ubq[i]);
                 end 
                 ubq.push_back(10);
                 foreach (ubq[i]) begin
                     $display("ubq[%0d] = %0d",i,ubq[i]);
                 end 
                 ubq.push_front(11);
                 foreach (ubq[i]) begin
                     $display("ubq[%0d] = %0d",i,ubq[i]);
                 end 
    end
endmodule
