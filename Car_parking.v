`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2021 10:33:43
// Design Name: 
// Module Name: Car_parking
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


module Car_parking(
    input [7:0] Cars,
    output [3:0] num,
    output [3:0] available
    );
    reg [3:0] num;
    reg [3:0] available;
    always@(Cars)begin
    num = Cars[7] +Cars[6] + Cars[5] + Cars[4] + Cars[3] + Cars[2] + Cars[1] + Cars[0];
    available = 8 - num;
    end
endmodule
