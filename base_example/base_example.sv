/* The following example comes from https://www.youtube.com/watch?v=WEA4Ds1WAh4
 
   It is the base UVM class example that provides the following service mechanisms:
   - Reporter.
   - Factory.
   - Configuration Database.
   - Simulation Execution Manager.
 
 This module can be compiled with VCS with the following command:
   $ vcs -sverilog -ntb_opts uvm $filename.sv
 And simulate with:
   $ simv +UVM_TESTNAME=hello_world_test
 */

program automatic test_program; // Can be a module
   import uvm_pkg::*;


class hello_world_test extends uvm_test;
   
   /* Start Macro and associated constructor from UVM Factory */
   `uvm_component_utils(hello_world_test)
     function new( string name, uvm_component_parent); // <- Constructor
	super.new(name, parent); // <- Constructor
     endfunction // new
   /* End Macro and associated constructor from UVM Factory */

   /* Start Simulation Execution Manager */
   virtual task run_phase(uvm_phase phase);
      `uvm_info("DEMO", "Hello, World!", UVM_MEDIUM); // <- Reporter
   endtask // run_phase
   /* End Simulation Execution Manager */
   
endclass // hello_world_test

   initial begin
      run_test();
   end

endprogram // automatic
   
   