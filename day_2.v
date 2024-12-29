module down_counter(
input clk,rst,
output reg [3:0]count
    );
    
always@(posedge clk)
begin
if(rst)
count<=4'b1111;
else
count<=count-1;


end
endmodule


///TESTBENCH//



module down_counter_tb();
reg clk,rst;
wire [3:0]count;
integer i;
 down_counter dut(.clk(clk),.rst(rst),.count(count));
initial begin
 clk=0;
forever #2 clk=~clk;
  end 
 initial begin
 rst=1;
 #8;
 $display("time=%0t | clk=%clk | rst=%rst | count=%count",$time,clk,rst,count);
 for(i=0;i<16;i=i+1)
 begin
 rst=0;
 #8;
 $display("clk=%clk, rst=%rst,count=%count",clk,rst,count);
 end
 end
 initial begin
 #100
 $finish();
 end
 
endmodule
