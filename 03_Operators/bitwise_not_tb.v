// Code your testbench here
// or browse Examples
module bitwise_not_tb;
  reg [3:0] a;
    wire [3:0] y;
    bitwise_not bitwise_not_tb(.a(a),.y(y));

    initial begin
      $monitor("Time=%0t | a=%b | y=%b", $time, a, y);
      $dumpfile("bitwise_not.vcd");
      $dumpvars(0,bitwise_not_tb);
       a = 4'b0000;
#10;

a = 4'b1010;
#10;

a = 4'b1111;
#10;

a = 4'b0011;
#10;

a = 4'b0101;
#10;

$finish;
    end
   
endmodule
