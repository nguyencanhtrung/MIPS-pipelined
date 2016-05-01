--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:58:10 03/31/2016
-- Design Name:   
-- Module Name:   /home/ctnguyen/Works/CPU-2016/src/top_CPU/tb_carry_look_ahead_block.vhd
-- Project Name:  top_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_look_ahead_block
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
--USE ieee.numeric_std.ALL;
 
ENTITY tb_carry_look_ahead_block IS
END tb_carry_look_ahead_block;
 
ARCHITECTURE behavior OF tb_carry_look_ahead_block IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_look_ahead_block
    PORT(
         c_in : IN  std_logic;
         p_group : IN  std_logic_vector(3 downto 0);
         g_group : IN  std_logic_vector(3 downto 0);
         C_OUT : INOUT  std_logic_vector(4 downto 1)
        );
    END COMPONENT;
    

   --Inputs
   signal c_in 	: std_logic := '0';
   signal p_group : std_logic_vector(3 downto 0) := (others => '0');
   signal g_group : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal C_OUT 	: std_logic_vector(4 downto 1);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clk		: std_logic := '0';
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_look_ahead_block PORT MAP (
          c_in => c_in,
          p_group => p_group,
          g_group => g_group,
          C_OUT => C_OUT
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	--clk <= not(clk) after clk_period/2;

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
		  c_in   <= '1' after 10 ns;
        p_group <=  x"B" after 10 ns;
        g_group <= x"8" after 10 ns;
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
