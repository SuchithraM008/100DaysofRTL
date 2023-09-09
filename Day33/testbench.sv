//Fork and join

module day33();
  
  initial begin
    //Fork different threads
    fork
      //T0
      begin
        print(0,"starting");
        //wait for some time
        #15
        //finish
        print(0,"finished");
      end
      
      //T2
      begin
        print(1,"starting");
        #35;
        print(1,"Finished");
      end
      
      //T2
      begin
        print(2,"starting");
        #30;
        print(2,"finished");
      end
    join
    $display("%t Finished",$time);
  end 
    function automatic void print(int thread_num,string msg);
      $display("%t T%1d %s", $time,thread_num,msg);
    endfunction
    
    endmodule