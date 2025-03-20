class random;
    rand byte variable;
    constraint variable_dist {variable dist { 1 := 10, 2 := 20, 3 := 30, 4 := 40, 5 := 50};}
endclass

module q2;
    initial begin
        random r1 = new();
            repeat(10) begin
            if(r1.randomize()) begin
                $display("variable : %d ", r1.variable);
            end
            end
    end
endmodule


//variable :           5 
//variable :           4 
//variable :           4 
//variable :           1 
//variable :           5 
//variable :           3 
//variable :           5 
//variable :           5 
//variable :           5 
//variable :           3 
