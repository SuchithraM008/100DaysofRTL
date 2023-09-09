1. Mailbox is a synchronization primitive used for communication between different processes, such as tasks and threads in a simulation or hardware design.
2. Some characteristics of system verilog are:
  a.Message-Based communication: Mailboxes are used for message passing, where one process can send a message to another process through 
  the mailbox.
  b.Blocking and Non-blocking OPerations: System Verilog provides both blocking('put' and 'get') and non-blocking('try_put and 'try_get') 
 operations for mailboxes.
  c.FIFO order: Messages can be sent and received in mailboxes and are typically processed in a first-in, First-out(FIFO)order.
