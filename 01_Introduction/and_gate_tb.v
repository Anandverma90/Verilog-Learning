// Code your testbench here
// or browse Examples
module andgate_tb;
  wire t_y;
  reg t_a, t_b;
  andgate andgate_tb(.a(t_a),.b(t_b),.y(t_y));
  initial
    begin
      $monitor("At time %0t: t_a=%b,t_b=%b,t_y=%b",$time,t_a,t_b,t_y);
      $dumpfile("andgate.vcd");
      $dumpvars(0,andgate_tb);
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
      
      
      
      
      
      
      
      
      
