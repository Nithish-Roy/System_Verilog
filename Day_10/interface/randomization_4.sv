class fifo;
rand byte data;
rand bit rw;
function void display;
std::randomize(data);
std::randomize(rw);
$display("the data = %b the signal = %b", data , rw);
endfunction
endclass

module q6;
fifo f1;
initial begin
f1 = new();
repeat(3)
f1.display;
end
endmodule

// the data = 00010110 the signal = 1
// the data = 10001101 the signal = 1
// the data = 00001101 the signal = 0
