module data_enum;
    enum {MON,TUE,WED,THU,FRI,SAT,SUN} days;

    initial begin
        $display("DAYS_1 = %0d FIRST_DAY = %0s",days.name(),days.first());
        $display("DAYS_2 = %0d LAST_DAY = %0S",days.name(),days.last());
        days = THU;
        $display(days.next());
        $display(days.prev());
        $display("TOTAL_DAYS",days.num());
    end
endmodule
