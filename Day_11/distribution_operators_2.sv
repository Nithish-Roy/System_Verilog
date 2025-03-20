class random;
    rand byte variable;
    constraint variable_dist {variable dist { 1 :/ 15, [2:4] :/ 30,  5 :/ 55};}
endclass

module q2;
    initial begin
        random r1 = new();
            repeat(10) begin
            if(r1.randomize()) begin
              $display("variable :/ %0d ", r1.variable);
            end
            end
    end
endmodule
// variable :/ 2 
// variable :/ 2 
// variable :/ 2 
// variable :/ 1 
// variable :/ 5 
// variable :/ 5 
// variable :/ 5 
// variable :/ 5 
// variable :/ 5 
// variable :/ 5 
