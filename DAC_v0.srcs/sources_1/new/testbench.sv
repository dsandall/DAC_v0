`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 12:20:12 PM
// Design Name: 
// Module Name: testbench
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


module testbench(
    );
    
    reg CLK = 0, OUT;
    reg [15:0] SW, LED;

    topWrapper wrapperInstance (.CLK(CLK), .SW(SW), .LED(LED), .OUT(OUT));

    initial forever  #5  CLK =  !CLK; 
   
    
    initial begin
        SW = 15'b0;

        //btnc=1;
        //#600 

      //$finish;
    end
    
    
       
  /*  initial begin
         if(ld_use_hazard)
            $display("%t -------> stall ",$time);
        if(branch_taken)
            $display("%t -------> branch taken",$time); 
      end*/
endmodule
