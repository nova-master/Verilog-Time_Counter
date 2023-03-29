`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2023 00:09:37
// Design Name: 
// Module Name: Time_Counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Time_Counter_tb;
// Inputs
reg Inc;
reg R;
reg clk;
// Outputs
wire [6:0] Q;
// Instantiate the module
Time_Counter DUT (
.Inc(Inc),
.R(R),
.clk(clk),
.Q(Q)
);
// Initialize the inputs
initial begin
Inc = 0;
R = 0;
clk = 0;
end
// Clock generator
always begin
#5 clk = ~clk;
end
// Test case
initial begin
// Wait 100 ns for the reset to propagate
#100;
 Inc = 1'b1;
    
//Inc = 1'b0;
//R = 1'b1;
end
endmodule
