module test_bench;
    full_adder_if inst();
    full_adder di(inst);

    initial begin
        $monitor(" a= %b b = %b c = %b sum = %b carry = %b ",inst.a , inst.b, inst.c, inst.sum, inst.carry);
        inst.a = 0; inst.b = 0; inst.c = 0;
        #10;
        inst.a = 0; inst.b = 1; inst.c = 0;
        #10;
        inst.a = 1; inst.b = 0; inst.c = 0;
        #10;
        inst.a = 1; inst.b = 1; inst.c = 1;
        #10;
    end
endmodule
