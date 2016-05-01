--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:24:41 04/09/2016
-- Design Name:   
-- Module Name:   /home/waseemh/Xilinx_Proj/CPU-2016/tested_src/top_CPU/tb_updated_reg_file.vhd
-- Project Name:  top_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
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
 
ENTITY tb_updated_reg_file IS
END tb_updated_reg_file;
 
ARCHITECTURE behavior OF tb_updated_reg_file IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         data_in : IN  std_logic_vector(15 downto 0);
         read_reg_a : IN  std_logic_vector(4 downto 0);
         read_reg_b : IN  std_logic_vector(4 downto 0);
         reg_write : IN  std_logic_vector(4 downto 0);
         write_data : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         data_out_a : OUT  std_logic_vector(15 downto 0);
         data_out_b : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal read_reg_a : std_logic_vector(4 downto 0) := (others => '0');
   signal read_reg_b : std_logic_vector(4 downto 0) := (others => '0');
   signal reg_write : std_logic_vector(4 downto 0) := (others => '0');
   signal write_data : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal data_out_a : std_logic_vector(15 downto 0);
   signal data_out_b : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          data_in => data_in,
          read_reg_a => read_reg_a,
          read_reg_b => read_reg_b,
          reg_write => reg_write,
          write_data => write_data,
          clk => clk,
          rst => rst,
          data_out_a => data_out_a,
          data_out_b => data_out_b
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		rst <= '1' after clk_period, '0' after clk_period*20;
		read_reg_a <= "01010" after clk_period*22, "01011" after clk_period*27;
		read_reg_b <= "01011" after clk_period*22, "01010" after clk_period*27;
		reg_write  <= "01010" after clk_period*20, "01011" after clk_period*25;
		data_in <= x"F0F0" after clk_period*21, x"0a0a" after 26*clk_period;
		write_data <= '0' after clk_period, '1' after clk_period*21, '0' after clk_period*22,'1' after clk_period*26, '0' after clk_period*27 ;


      wait;
   end process;

END;
