module tb();
	initial begin 
	byte upa [3:0][2:0][1:0][7:0]; //4d-array
	foreach (upa[i,j,k,l]) begin 
		upa [i][j][k][l] = i **2; //assigning values
	end
	foreach (upa[i,j,k,l]) begin 
		$display("upa[%0d][%0d][%0d][%0d] = %0d",i,j,k,l , upa[i][j][k][l]);
	end
	end
endmodule

//# upa[3][2][1][7] = 9
//# upa[3][2][1][6] = 9
//# upa[3][2][1][5] = 9
//# upa[3][2][1][4] = 9
//# upa[3][2][1][3] = 9
//# upa[3][2][1][2] = 9
//# upa[3][2][1][1] = 9
//# upa[3][2][1][0] = 9
//# upa[3][2][0][7] = 9
//# upa[3][2][0][6] = 9
//# upa[3][2][0][5] = 9
//# upa[3][2][0][4] = 9
//# upa[3][2][0][3] = 9
//# upa[3][2][0][2] = 9
//# upa[3][2][0][1] = 9
//# upa[3][2][0][0] = 9
//# upa[3][1][1][7] = 9
//# upa[3][1][1][6] = 9
//# upa[3][1][1][5] = 9
//# upa[3][1][1][4] = 9
//# upa[3][1][1][3] = 9
//# upa[3][1][1][2] = 9
//# upa[3][1][1][1] = 9
//# upa[3][1][1][0] = 9
//# upa[3][1][0][7] = 9
//# upa[3][1][0][6] = 9
//# upa[3][1][0][5] = 9
//# upa[3][1][0][4] = 9
//# upa[3][1][0][3] = 9
//# upa[3][1][0][2] = 9
//# upa[3][1][0][1] = 9
//# upa[3][1][0][0] = 9
//# upa[3][0][1][7] = 9
//# upa[3][0][1][6] = 9
//# upa[3][0][1][5] = 9
//# upa[3][0][1][4] = 9
//# upa[3][0][1][3] = 9
//# upa[3][0][1][2] = 9
//# upa[3][0][1][1] = 9
//# upa[3][0][1][0] = 9
//# upa[3][0][0][7] = 9
//# upa[3][0][0][6] = 9
//# upa[3][0][0][5] = 9
//# upa[3][0][0][4] = 9
//# upa[3][0][0][3] = 9
//# upa[3][0][0][2] = 9
//# upa[3][0][0][1] = 9
//# upa[3][0][0][0] = 9
//# upa[2][2][1][7] = 4
//# upa[2][2][1][6] = 4
//# upa[2][2][1][5] = 4
//# upa[2][2][1][4] = 4
//# upa[2][2][1][3] = 4
//# upa[2][2][1][2] = 4
//# upa[2][2][1][1] = 4
//# upa[2][2][1][0] = 4
//# upa[2][2][0][7] = 4
//# upa[2][2][0][6] = 4
//# upa[2][2][0][5] = 4
//# upa[2][2][0][4] = 4
//# upa[2][2][0][3] = 4
//# upa[2][2][0][2] = 4
//# upa[2][2][0][1] = 4
//# upa[2][2][0][0] = 4
//# upa[2][1][1][7] = 4
//# upa[2][1][1][6] = 4
//# upa[2][1][1][5] = 4
//# upa[2][1][1][4] = 4
//# upa[2][1][1][3] = 4
//# upa[2][1][1][2] = 4
//# upa[2][1][1][1] = 4
//# upa[2][1][1][0] = 4
//# upa[2][1][0][7] = 4
//# upa[2][1][0][6] = 4
//# upa[2][1][0][5] = 4
//# upa[2][1][0][4] = 4
//# upa[2][1][0][3] = 4
//# upa[2][1][0][2] = 4
//# upa[2][1][0][1] = 4
//# upa[2][1][0][0] = 4
//# upa[2][0][1][7] = 4
//# upa[2][0][1][6] = 4
//# upa[2][0][1][5] = 4
//# upa[2][0][1][4] = 4
//# upa[2][0][1][3] = 4
//# upa[2][0][1][2] = 4
//# upa[2][0][1][1] = 4
//# upa[2][0][1][0] = 4
//# upa[2][0][0][7] = 4
//# upa[2][0][0][6] = 4
//# upa[2][0][0][5] = 4
//# upa[2][0][0][4] = 4
//# upa[2][0][0][3] = 4
//# upa[2][0][0][2] = 4
//# upa[2][0][0][1] = 4
//# upa[2][0][0][0] = 4
//# upa[1][2][1][7] = 1
//# upa[1][2][1][6] = 1
//# upa[1][2][1][5] = 1
//# upa[1][2][1][4] = 1
//# upa[1][2][1][3] = 1
//# upa[1][2][1][2] = 1
//# upa[1][2][1][1] = 1
//# upa[1][2][1][0] = 1
//# upa[1][2][0][7] = 1
//# upa[1][2][0][6] = 1
//# upa[1][2][0][5] = 1
//# upa[1][2][0][4] = 1
//# upa[1][2][0][3] = 1
//# upa[1][2][0][2] = 1
//# upa[1][2][0][1] = 1
//# upa[1][2][0][0] = 1
//# upa[1][1][1][7] = 1
//# upa[1][1][1][6] = 1
//# upa[1][1][1][5] = 1
//# upa[1][1][1][4] = 1
//# upa[1][1][1][3] = 1
//# upa[1][1][1][2] = 1
//# upa[1][1][1][1] = 1
//# upa[1][1][1][0] = 1
//# upa[1][1][0][7] = 1
//# upa[1][1][0][6] = 1
//# upa[1][1][0][5] = 1
//# upa[1][1][0][4] = 1
//# upa[1][1][0][3] = 1
//# upa[1][1][0][2] = 1
//# upa[1][1][0][1] = 1
//# upa[1][1][0][0] = 1
//# upa[1][0][1][7] = 1
