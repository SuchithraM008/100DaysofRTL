1. In certain circumstances, the randomized inputs on a test bench will have greater functional coverage than the directed test cases.
2. Therefore, when we apply constraints on randomized inputs, we would like to randomize the inputs.
3. Using the built-in randomize () method, variables that are declared with the rand and randc keywords are randomized. Functions return 1 in the case of successful randomization and 0 in the case of failure.
4. The virtual in-built method is the sv randomize() method.
5. Pre_randmoize() and post_randmoize() methods will be called before and after when the randmoize() method is called, accordingly.
6. The randomize() function cannot be overridden because it is an internal function, although users can override the pre_randomize and post_randomize.

