class constraints#(parameter N=4);
  
  randc bit[N-1:0] pattern;
  bit[N-1:0] num_ones;
  
  function void pattern_generation();
    if(num_ones <N)begin
      num_ones++;
    end
    else
      num_ones = 1;
  endfunction
   constraint gen_pattern {
    foreach (pattern[i]) {
      if (i < num_ones) pattern[N-1-i] == 1;
      else              pattern[N-1-i] == 0;
    }
  };
      
      endclass
      
      
      module  constraints_tb();
        
        constraints #(.N(8)) byte_pattern;
        
        initial begin
          
          byte_pattern = new();
          
       
        
        repeat(8) begin
          byte_pattern.randomize();
          $display("%b\n", byte_pattern.pattern);
          
        end
        end
      endmodule