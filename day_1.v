`timescale 1ns / 1ps

module up_down_counter(
input clk,rst,up_down,
output reg [3:0] count);
always@(posedge clk) begin
 if(rst)
 count<=4'b0000;
 else if(up_down)
 count<=count+1;
 else
 count<=count-1;
 end
endmodule

//////////////////////////////////////////////////////////////////////////////////
//testbench 


`timescale 1ns / 1ps


module up_down_counter_tb();
reg clk,rst,up_down;
wire [3:0] count;
up_down_counter dut (clk,rst,up_down,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
#10;
rst=0;
#100;
up_down=1;
#100;
up_down=0;
end
initial begin 
#500;
$finish();
end

endmodule
