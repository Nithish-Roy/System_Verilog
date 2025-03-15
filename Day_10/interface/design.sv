module full_adder(full_adder_if inst);
    assign inst.sum = inst.a ^inst.b ^ inst.c;
    assign inst.carry = inst.a & inst.b | (inst.a ^ inst.b) & inst.c;
endmodule
