//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2026 21:38:53
// Design Name: 
// Module Name: Car_parking_tb
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


`timescale 1ns / 1ps

module tb_Car_parking();

    // Inputs
    reg [7:0] Cars;

    // Outputs
    wire [3:0] num;
    wire [3:0] available;

    // Instantiate the Unit Under Test (UUT)
    Car_parking uut (
        .Cars(Cars), 
        .num(num),
        .available(available)
    );

    initial begin
        // Initialize display header
        $display("--------------------------------");
        $display("Time\t Cars (Binary)\t Num\t Available");
        $display("--------------------------------");
        $monitor("%0t\t %b\t %0d\t %0d", $time, Cars, num, available);

        // Test 1: No cars parked
        Cars = 8'b00000000; 
        #10;
        
        // Test 2: Single car at different positions
        Cars = 8'b00000001; 
        #10;
        Cars = 8'b10000000; 
        #10;
        
        // Test 3: Multiple cars (lower and upper nibbles)
        Cars = 8'b00001111; 
        #10;
        Cars = 8'b11110000; 
        #10;
        
        // Test 4: Alternating bit patterns
        Cars = 8'b10101010; 
        #10;
        Cars = 8'b01010101; 
        #10;
        
        // Test 5: All spots filled
        Cars = 8'b11111111; 
        #10;
        
        // Test 6: Random configuration
        Cars = 8'b01101001; 
        #10;

        $display("--------------------------------");
        $finish;
    end

endmodule