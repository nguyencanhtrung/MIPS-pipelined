--------------------------------------------------------------------------------
-- Company: 	
-- Engineer:	Trung C. Nguyen
--
-- Create Date:   07:57:11 03/31/2016
-- Design Name:   
-- Module Name:   /home/ctnguyen/Works/CPU-2016/src/top_CPU/tb_four_bits_CLA_adder.vhd
-- Project Name:  top_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bits_CLA_adder
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
USE ieee.std_logic_arith.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb_four_bits_CLA_adder IS
END tb_four_bits_CLA_adder;
 
ARCHITECTURE behavior OF tb_four_bits_CLA_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bits_CLA_adder
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         c_in : IN  std_logic;
         p_group : OUT  std_logic;
         g_group : OUT  std_logic;
         sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal c_in : std_logic := '0';

 	--Outputs
   signal p_group : std_logic;
   signal g_group : std_logic;
   signal sum 		: std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
	signal clk		: std_logic;
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bits_CLA_adder PORT MAP (
          a => a,
          b => b,
          c_in => c_in,
          p_group => p_group,
          g_group => g_group,
          sum => sum
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
		a 		<= x"8";
		b 		<= x"7";
		c_in 	<= '1';
		wait for 2 * clk_period;
      -- hold reset state for 100 ns.
      -- wait for 100 ns;
		for counter in 1 to 4 loop
			a <= to_stdlogicvector(to_bitvector(a) sll 1);
			b <= b xor a;
			c_in <= not c_in;
			wait for 2*clk_period;
		end loop;
      wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
