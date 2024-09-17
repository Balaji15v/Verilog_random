`timescale 1ns / 1ps
module ex_2(a,b,c,x_carry,y_sum);
input a,b,c;
output x_carry,y_sum;
wire p,q,r;
xnor g1(p,a,c);
nand g2(q,a,b);
or g3(r,a,b);
and g4(x_carry,b,p);
and g5(y_sum,r,q);
endmodule

/////////////////////////////////////////////////*******test_bench_code********///////////////////////////////////////////////
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:13:33 09/17/2024
// Design Name:   ex_2
// Module Name:   /home/ise/XOR_XNOR/ex_2tst.v
// Project Name:  XOR_XNOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex_2tst;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire x_carry;
	wire y_sum;

	// Instantiate the Unit Under Test (UUT)
	ex_2 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.x_carry(x_carry), 
		.y_sum(y_sum)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
	end
      always #10 a=a+1'b1;
		always #20 b=b+1'b1;
		always #40 c=c+1'b1;
		initial $monitor($time,"a=%b,b=%b,c=%b,x_carry=%b,y_sum=%b",a,b,c,x_carry,y_sum);
		initial #100 $finish;
endmodule

