module assoc_arr;
 integer St [string] = '{"Nithish":20, "Valan":20, "Sriniketh":21};
 integer data;
 initial
 begin
 $display("data stored at Nithish = %0d",St["Nithish"]);
 $display("data stored at Valan = %0d",St["Valan"]);
 $display("data stored at Sriniketh = %0d",St["Sriniketh"]);
 St["Varun"] = 20;
 data = St["Varun"]; 
 $display("St=",St);
 end
 endmodule


//# data stored at Nithish = 20
//# data stored at Valan = 20
//# data stored at Sriniketh = 21
//# St= {"Nithish":20} {"Sriniketh":21} {"Valan":20} {"Varun":20}
