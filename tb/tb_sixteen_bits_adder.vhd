--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:12:31 03/31/2016
-- Design Name:   
-- Module Name:   /home/ctnguyen/Works/CPU-2016/src/top_CPU/tb_sixteen_bits_adder.vhd
-- Project Name:  top_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sixteen_bits_adder
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb_sixteen_bits_adder IS
END tb_sixteen_bits_adder;
 
ARCHITECTURE behavior OF tb_sixteen_bits_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sixteen_bits_adder
    PORT(
         operand_a 	: IN  std_logic_vector(15 downto 0);
         operand_b 	: IN  std_logic_vector(15 downto 0);
         sum 			: OUT  std_logic_vector(15 downto 0);
         over_flow 	: OUT  std_logic;
         carry_in 	: IN  std_logic;
         carry_out 	: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal operand_a 	: std_logic_vector(15 downto 0) := (others => '0');
   signal operand_b 	: std_logic_vector(15 downto 0) := (others => '0');
   signal carry_in 	: std_logic := '0';

 	--Outputs
   signal sum 			: std_logic_vector(15 downto 0);
   signal over_flow 	: std_logic;
   signal carry_out 	: std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clk			: 	std_logic;
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sixteen_bits_adder PORT MAP (
          operand_a => operand_a,
          operand_b => operand_b,
          sum => sum,
          over_flow => over_flow,
          carry_in => carry_in,
          carry_out => carry_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		operand_a <= x"ABC3";
		operand_b <= x"48F3";
		carry_in <= '1';
		wait for clk_period*10;
      -- hold reset state for 100 ns.
      --wait for 100 ns;	
		for count in 1 to 8 loop
			operand_a <= to_stdlogicvector(to_bitvector(operand_a) sll 1);
			operand_b <= operand_b xor operand_a;
			carry_in <= not carry_in;
		
			wait for clk_period*10;
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
