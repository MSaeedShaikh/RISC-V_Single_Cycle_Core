`timescale 1ns / 1ps


module processor_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] mem_disp;
	wire [31:0] pc_disp;
	wire [31:0] instruc_disp;
	wire [31:0] read1_disp;
	wire [31:0] read2_disp;
	wire [31:0] imm_disp;

	// Instantiate the Unit Under Test (UUT)
	processor uut (
		.clk(clk), 
		.reset(reset), 
		.mem_disp(mem_disp), 
		.pc_disp(pc_disp),
		.instruc_disp(instruc_disp),
		.read1_disp(read1_disp),
		.read2_disp(read2_disp),
		.imm_disp(imm_disp)
	);

	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		
		#3;
		reset = 0;
		#97;
		$finish;
        
		// Add stimulus here

	end
      
endmodule
