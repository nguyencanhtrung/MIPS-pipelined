--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
-- Create Date:   11:57:04 04/05/2016
-- Design Name:   ALU unit
-- Module Name:   /home/ctnguyen/Works/CPU-2016/tested_src/top_CPU/tb_unsigned_fixedpoint_divider_module.vhd
-- Project Name:  top_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: unsigned_fixedpoint_divider_module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_unsigned_fixedpoint_divider_module IS
	-- Need to change when changing BIT_WIDTH
Generic ( BIT_WIDTH : integer := 16);
END tb_unsigned_fixedpoint_divider_module;
 
ARCHITECTURE behavior OF tb_unsigned_fixedpoint_divider_module IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT unsigned_fixedpoint_divider_module
    Generic ( BIT_WIDTH : integer := 16);
    Port ( operand_a : in 	STD_LOGIC_VECTOR (BIT_WIDTH - 1 downto 0); -- dividend
           operand_b : in 	STD_LOGIC_VECTOR (BIT_WIDTH - 1 downto 0); -- divisor  
           quotient 	: out STD_LOGIC_VECTOR (BIT_WIDTH - 1 downto 0);
			  rem_out 	: out STD_LOGIC_VECTOR (BIT_WIDTH - 1 downto 0);
           start 		: in  STD_LOGIC;
           done 		: out STD_LOGIC;
           rst 		: in  STD_LOGIC;
			  invalidOp	: out STD_LOGIC;	
           clk 		: in  STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal operand_a 	: std_logic_vector(BIT_WIDTH - 1 downto 0) := (others => '0');
   signal operand_b 	: std_logic_vector(BIT_WIDTH - 1 downto 0) := (others => '0');
   signal start 		: std_logic := '0';
   signal rst 			: std_logic := '0';
   signal clk 			: std_logic := '0';

 	--Outputs
   signal quotient 	: std_logic_vector(BIT_WIDTH - 1 downto 0);
	signal rem_out 	: std_logic_vector(BIT_WIDTH - 1 downto 0);
   signal done 		: std_logic;
	signal invalidOp	: std_logic;
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: unsigned_fixedpoint_divider_module PORT MAP (
          operand_a 	=> operand_a,
          operand_b 	=> operand_b,
          quotient 	=> quotient,
			 rem_out		=> rem_out,
          start 		=> start,
          done 		=> done,
          rst 			=> rst,
			 invalidOp	=> invalidOp,
          clk 			=> clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk 	<= '0';
		wait for clk_period/2;
		clk 	<= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process	
   variable counter	: integer;
   begin
		rst 					<= '1';
		wait for clk_period * 10;
		rst 					<= '0';
		counter 				:= 0;
			-- need to change when changing BIT_WIDTH
		operand_a 			<= x"0001"; -- dividend
		operand_b 			<= x"0001"; -- divisor
			-- Untouched
		wait for 10 * clk_period;
		
		while (counter <= 50) loop
			operand_a  		<= std_logic_vector(to_signed((to_integer(signed(operand_a)) * 3),BIT_WIDTH ));
			operand_b  		<= std_logic_vector(to_signed((to_integer(signed(operand_b)) * 2),BIT_WIDTH));
			wait for 5*clk_period;
			start 			<= '1';	
			wait for clk_period;
			start 			<= '0';
			while(done = '0') loop
				wait for clk_period;
			end loop;
			counter := counter + 1;
		end loop;
		assert false report "Simulation Successful" severity failure;
   end process;

END;
