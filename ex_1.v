`timescale 1ns / 1ps
module ex_1(a,b,c,d,y);
  input a,b,c,d;   //inputs
  output y;       //outputs
  wire p,q,r,s,t; //wired_outputs for each gates//
  //involving the logic gates that are required//
        nand g1(p,a,b);
        nand g2(q,a,c);
        and g3(r,a,d);
        or g4(t,p,q);
        nor g5(s,r,c);
        and g6(y,t,s);
endmodule

////////////////////////******test_bench_code*********////////////////////

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:34 09/10/2024
// Design Name:   ex_1
// Module Name:   /home/ise/Self_examples/ex_1txt.v
// Project Name:  Self_examples
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex_1txt;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	ex_1 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
	end
  //defining inputs with delay time for each input//
    always #80 a=a+1'b1;
		always #40 b=b+1'b1;
		always #20 c=c+1'b1;
		always #10 d=d+1'b1;
		initial $monitor($time,"a=%b,b=%b,c=%b,d=%b,y=%b",a,b,c,d,y);
		initial #100 $finish;
endmodule


