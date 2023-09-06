// Code your testbench here
// or browse Examples
module events();
  
  event pong;
  event ping;
  
  initial begin
    forever begin
      //Wait for the event
      #1;
      @ping;
      $display("%t:Ping", $time);
      // Wait for some time
      
      //DRive pong event
		 #1;
      ->pong;
               end
               end
               
               
   initial begin
     forever begin
       //Wait for some time
       #2;
       //Drive ping event
       ->ping;
       //Wait for event
		
       @pong;
       $display("%t: Pong", $time);
       
     end
   end
               
   //Finish sim in some time 
               initial begin
                 #10
                 $finish();
               end
               
               endmodule
     