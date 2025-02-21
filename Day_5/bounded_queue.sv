module queue_methods();
	int queue [$:4];
	int x;
	initial begin 
		queue = '{1,2,3,4};
		$display("contents in queue = %p",queue);
		
		x = queue.size();
		$display("size of queue = %d",x);

		queue.insert(3,0);
		x = queue.size();
		$display("contents on queue = %p",queue);
		$display("size of queue = %d",x);


		queue.delete(2);
		$display("contents in queue = %p",queue);

		while (queue.size > 0)
		$display("the popped values are = %0d",queue.pop_front());

	end
endmodule
