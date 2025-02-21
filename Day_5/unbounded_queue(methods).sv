module ubqueue_methods;
 int ubq[$] = {0,1,2,3,4,5}; //unbounded queue
 int a;
 initial begin
 a = ubq.size( ); //empty queue
 $display ("size = %0d",a);

 $display ("ubq SIZE = %0d",ubq.size( ));
 $display ("ubq=",ubq);

 ubq.insert (3,3); //index, value
 $display("After Insert ubq SIZE = %0d",ubq.size( ));
 $display ("ubq=",ubq);

 ubq.delete (3); //index
 $display ("After delete ubq SIZE = %0d",ubq.size( ));
 $display ("ubq=",ubq);

 a = ubq.pop_front( ); //pop frst entry of the queue
 $display ("ubq pop front = %0d ",a);
 $display ("ubq=",ubq);

 a = ubq.pop_back( ); //pop last entry of the queue
 $display ("ubq pop back = %0d ",a);
 $display ("ubq=",ubq);
 //push the frst entry of the queue with '4'

 ubq.push_front(4);
 $display ("push front ubq=",ubq);
 //push the last entry of the queue with '5'

 ubq.push_back(5);
 $display("push back",ubq);
	
 end
 endmodule

//# size = 6
//# ubq SIZE = 6
//# ubq=0 1 2 3 4 5
//# After Insert ubq SIZE = 7
//# ubq=0 1 2 3 3 4 5
//# After delete ubq SIZE = 6
//# ubq=0 1 2 3 4 5
//# ubq pop front = 0 
//# ubq=1 2 3 4 5
//# ubq pop back = 5 
//# ubq=1 2 3 4
//# push front ubq=4 1 2 3 4
//# push back4 1 2 3 4 5
