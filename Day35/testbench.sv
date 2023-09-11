// fork and join_none

module day35();
  
  
  initial begin
  //Fork three different processes
  fork 
    begin
      $display("%t T0 starting",$time);
      #5
      $display("%t T0 Finished", $time);
    end
    
    begin
      $display("%t T1 starting",$time);
      #2;
      $display(" %t T1 Finished",$time);
    end
    
    begin
      $display("%t T2 starting",$time);
      #7;
      $display(" %t T2 Finished",$time);
    end
    
  join_none
    $display("%t After join_none ",$time); 
    #20;
    $finish();
  end
  
  
endmodule
