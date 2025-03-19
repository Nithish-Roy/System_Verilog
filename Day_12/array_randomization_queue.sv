class queues;
    rand bit [3:0] queue [$];
  constraint queue_size {queue.size()>= 5;
                         queue.size()<= 10;}
  constraint queue_element{foreach(queue[i]) queue[i]>10 && queue[i]<20;}
endclass

module q6;
    queues q1;
        initial begin
            q1 = new();
                if(q1.randomize()) begin
                  $display("the size of the queue = %d", q1.queue.size());
                    $display("thq queue is = %p", q1.queue);
                end
        end
endmodule
// the size of the queue =           6
// thq queue is = '{'hf, 'hc, 'he, 'hb, 'hb, 'hf} 
