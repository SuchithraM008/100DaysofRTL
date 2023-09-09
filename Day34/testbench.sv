//fork and join_any

module day34();
  
  initial begin
    fork
      begin
        print(0,"started");
        #15;
        print(0,"finished");
      end
      
     //T1
      begin
        print(1,"started");
        #24;
        print(1,"finished");
      end
      
      //T2
      begin
        print(2,"started");
        #12;
        print(2,"finished");
      end
    join_any
    $display("After fork .... join_any");
  end
  

  initial begin
    #30;
    $finish();
  end
         
 function automatic void print(int thread_num, string msg);
    $display("%t T%1d - %s", $time, thread_num, msg);
  endfunction
  
endmodule  
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
