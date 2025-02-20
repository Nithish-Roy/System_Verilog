module assoc_arr();
	int array [][string];
	initial begin
	array = new[5];

	array [0] = '{"Nithish = ": 20};

	array [1] = '{"Valan = ": 20};

	array [2] = '{"Sriniketh = ": 20};

	array [3] = '{"Kural = ": 20};

	array [4] = '{"Jana = ": 20};

		foreach(array[i])begin 
			foreach(array[i][j])begin 
				$display("array [%0d][%s] = %d", i , j , array[i][j]);
			end
		end

	end
endmodule



//# array [0][Nithish = ] =          20
//# array [1][Valan = ] =          20
//# array [2][Sriniketh = ] =          20
//# array [3][Kural = ] =          20
//# array [4][Jana = ] =          20
