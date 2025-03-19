class dynamic_array;
    rand bit[7 :0] a [];
    constraint for_a_size{ a.size() < 10; a.size() >5; }
    constraint for_a {foreach(a[i]) a[i] == i * i;}
endclass

module randomize_array;;
    dynamic_array d1;
        initial begin
            d1 = new();
             $display("the default array = %p", d1.a);

                if(d1.randomize()) begin
                    $display("the size of the array = %d",d1.a.size());
                    $display("the randomized array = %p", d1.a);
                end
        end
endmodule


//the default array = '{}
//the size of the array =           6
//the randomized array = '{'h0, 'h1, 'h4, 'h9, 'h10, 'h19} 

