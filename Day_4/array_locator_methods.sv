module arrayLocator;
    int assoc[int]; // Associative array
    int quei[$];   // Queue of int type
    initial begin
	    // Initializing associative array
	assoc = '{1  :10, 2 :11, 3 :19, 4:13, 5:14};

        quei = assoc.find with (item > 5);
        $display("find(x) :: quei = %0p", quei);

      	quei = assoc.find_index with (item > 1);
        $display("find_index :: quei = %0p", quei);
        
	quei = {assoc.find_first with (item > 3)};
        $display("find_first :: quei = %0p", quei);
        
      	quei = {assoc.find_first_index with (item < 5)};
        $display("find_first_index :: quei = %0p", quei);

      	quei = {assoc.find_last_index with (item > 5)};
        $display("find_last_index :: quei = %0p", quei);
    end
endmodule


//# find(x) :: quei = 10 11 19 13 14
//# find_index :: quei = 1 2 3 4 5
//# find_first :: quei = 10
//# find_first_index :: quei = 
//# find_last_index :: quei = 5
