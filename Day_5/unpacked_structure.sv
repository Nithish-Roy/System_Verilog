module structure();
	struct {
		logic [7:0] a;
		byte b;
		reg [15:0] c;	
		}unpackedstructure;
		
		initial begin 

		$display("the struxture = %p", unpackedstructure);

		unpackedstructure.a = 8'hff;
		unpackedstructure.b = 8'hae;
		unpackedstructure.c = 16'hbaba;
		$display("value a = %h value b = %h value c = %h",unpackedstructure.a,unpackedstructure.b,unpackedstructure.c);

		unpackedstructure = '{8'hfa,8'hce,16'hcacd};
		$display("value a = %h value b = %h value c = %h",unpackedstructure.a,unpackedstructure.b,unpackedstructure.c);

		unpackedstructure = '{ a : 8'hff, b : 8'hbb, c: 16'hbaba};
		$display("value a = %h value b = %h value c = %h",unpackedstructure.a,unpackedstructure.b,unpackedstructure.c);
		
		end
endmodule
//# the struxture = '{a:x, b:0, c:x}
//# value a = ff value b = ae value c = baba
//# value a = fa value b = ce value c = cacd
//# value a = ff value b = bb value c = baba

