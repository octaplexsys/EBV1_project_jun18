`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Vladimir Efimov 
// 
// Create Date:
// Design Name: 
// Module Name: headgen_out_mux_tb
// Project Name: EtherBlade.net_v1 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Version: 0.01
// Additional Comments:
// 
///////////////////////Testbench output information///////////////////////////////
//	EXPECTED OUTPUTS
//	out_0 (hex): 1,2,3,4,5,6,7,A1,B2,C3,D4,E5
//////////////////////////////////////////////////////////////////////////////////
module headgen_out_mux_tb;


//Internal signals declarations:
reg [8:0]in_0;
reg [15:0]in_1;
reg [15:0]in_2;
wire [7:0]out_0;



// Unit Under Test port map
	headgen_out_mux UUT (
		.in_0(in_0),
		.in_1(in_1),
		.in_2(in_2),
		.out_0(out_0));

initial begin
//1
in_0 = 9'b000000001;
in_1 = 16'b0000010000000101;
in_2 = 16'b0000011000000111;
//2
#20
in_0 = 9'b000000010;
in_1 = 16'b0000010000000101;
in_2 = 16'b0000011000000111;
//3
#20
in_0 = 9'b000000011;
in_1 = 16'b0000010000000101;
in_2 = 16'b0000011000000111;
//4
#20
in_0 = 9'b100000000;
in_1 = 16'b0000010000000101;
in_2 = 16'b0000011000000111;
//5
#20
in_0 = 9'b100000001;
in_1 = 16'b0000010000000101;
in_2 = 16'b0000011000000111;
//6
#20
in_0 = 9'b100000010;
in_1 = 16'b0000010000000101;
in_2 = 16'b0000011000000111;
//7
#20
in_0 = 9'b100000011;
in_1 = 16'b0000010000000101;
in_2 = 16'b0000011000000111;
//A1
#20
in_0 = 9'b010100001;
in_1 = 16'b1011001011000011;
in_2 = 16'b1101010011100101;
//B2
#20
in_0 = 9'b100000000;
in_1 = 16'b1011001011000011;
in_2 = 16'b1101010011100101;
//C3
#20
in_0 = 9'b100000001;
in_1 = 16'b1011001011000011;
in_2 = 16'b1101010011100101;
//D4
#20
in_0 = 9'b100000010;
in_1 = 16'b1011001011000011;
in_2 = 16'b1101010011100101;
//E5
#20
in_0 = 9'b100000111;
in_1 = 16'b1011001011000011;
in_2 = 16'b1101010011100101;

#20
$finish;
end

endmodule
