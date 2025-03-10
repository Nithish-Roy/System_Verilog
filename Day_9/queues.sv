module queues();
    int bq [$:10];
    int test;

        initial begin
                $display("BOUNDED QUEUE");

            for (integer i = 0; i < 12; i++) begin
                bq.push_back(i * i);
            end

            foreach (bq[i]) begin
                $display("bq[%0d] = %0d",i,bq[i]);
            end
                $display("BOUNDED QUEUE METHODS");
                
                 
                 $display("size of bq = %0d",bq.size());
                 bq.delete(10);
                 foreach (bq[i]) begin
                     $display("bq[%0d] = %0d",i,bq[i]);
                 end 

                 bq.insert(2,22);
                 foreach (bq[i]) begin
                     $display("bq[%0d] = %0d",i,bq[i]);
                 end 

                 bq.delete(10);
                 $display("size of bq = %0d",bq.size());
                 foreach (bq[i]) begin
                     $display("bq[%0d] = %0d",i,bq[i]);
                 end 
                 bq.push_back(10);
                 foreach (bq[i]) begin
                     $display("bq[%0d] = %0d",i,bq[i]);
                 end 
                 bq.push_front(11);
                 foreach (bq[i]) begin
                     $display("bq[%0d] = %0d",i,bq[i]);
                 end 
		          test =   bq.pop_back();
		             $display("test %0d",test);
		         foreach (bq[i]) begin
		             $display("bq[%0d] = %0d",i,bq[i]);
		         end 
		          test =   bq.pop_front();
		             $display("test %0d",test);
		         foreach (bq[i]) begin
		             $display("bq[%0d] = %0d",i,bq[i]);
                 end 


        end 
endmodule   
