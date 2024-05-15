`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 11:58:02 AM
// Design Name: 
// Module Name: top
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


module topWrapper(
    input CLK, 
    input BTNU,
    input [15:0] SW,
    output [15:0] LED,
    output wire OUT

    );
    
    wire DACoutput;
    DS_DAC myDAC (.CLK(CLK), .magnitude(SW), .OUT(DACoutput), .RST(BTNU));

    assign LED[15] = DACoutput;

endmodule
