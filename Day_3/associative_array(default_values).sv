module assoc_arr;
 string words [int] = '{default: "vanakam"};
 initial begin
 $display("words = %p", words['hffff]);
 $display("size = %d", words.size()); // default values does not increase the size
 $display("words = %p", words[0]); //default
  $display("size = %d", words.size());
 $display("words = %p", words[1000]); //default
 words['hffff] = "goodbye";
 words['h0008] = "takecare";
  $display("size = %d", words.size());
 $display("words = %p", words);
 $display("words = %p", words[100]); //default
 end
 endmodule

//# words = "vanakam"
//# size =           0
//# words = "vanakam"
//# size =           0
//# words = "vanakam"
//# size =           2
//# words = '{8:"takecare", 65535:"goodbye" }
//# words = "vanakam"
