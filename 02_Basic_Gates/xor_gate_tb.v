// Code your testbench here
// or browse Examples
module xorgate_tb;
reg t_a,t_b;
  wire t_y;
  xorgate xorgate_tb(.a(t_a),.b(t_b),.y(t_y));
   initial
    begin
      $monitor("At time %0t: t_a=%b,t_b=%b,t_y=%b",$time,t_a,t_b,t_y);
      $dumpfile("xorgate.vcd");
      $dumpvars(0,xorgate_tb);
      t_a=1'b0;
      t_b=1'b0;
       #5
      t_a=1'b0;
      t_b=1'b1;
       #5
       t_a=1'b1;
      t_b=1'b0;
       #5
       t_a=1'b1;
      t_b=1'b1;
    end 
endmodule
