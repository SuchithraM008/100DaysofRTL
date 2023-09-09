//Mailbox

module day30();
  
  mailbox pong;
  mailbox ping;
  
  int sum;
  
  //Communicate between two intial blocks
  
  initial begin
    sum = 0;
    forever begin
      // Wait for mailbox
      ping.get(sum);
      $display("%t:Sum-ping : 0x%8x",$time,sum);
      //wait for some time
      #1;
      //Increment sum
      sum++;
      //put the new sum into mailbox
      pong.put(sum);
    end
  end
  
  initial begin
    forever begin
      //Wait for some time
      #1;
      //put into ping mailbox
      ping.put(sum);
      //wait for pong mailbox
      pong.get(sum);
      //Increment the sum
      sum++;
      $display("%t :sum-pong:0x%8x", $time,sum);
    end
  end
  
    // Finish sim in some time
  initial begin
    #10;
    $finish();
  end
  
endmodule
