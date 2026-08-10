// Code your testbench here
// or browse Examples
module bitwise_xor_tb;
  reg [3:0] a;
  reg [3:0] b;
    wire [3:0] y;
    bitwise_xor bitwise_xor_tb(.a(a),.b(b),.y(y));

    initial begin
        $monitor("Time=%0t | a=%b | b=%b | y=%b", $time, a, b, y);
      $dumpfile("bitwise_xor.vcd");
      $dumpvars(0,bitwise_xor_tb);
        a = 4'b0000;
        b = 4'b0000;
        #10;

        a = 4'b1010;
        b = 4'b1100;
        #10;

        a = 4'b1111; 
        b = 4'b1010;
        #10;

        a = 4'b1111;
        b = 4'b1111;
        #10;

        a = 4'b0101;
        b = 4'b0011;
        #10;

        $finish;
    end
   
endmodule
