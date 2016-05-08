--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
-- Create Date:   16:57:21 05/07/2016
-- Design Name:   
-- Module Name:   	/home/ctnguyen/Works/pipelineCPU/tb/tb_MEM_data.vhd
-- Project Name:  	pipelineCPU
-- Target Device:  	general platform
-- Tool versions:  	Xilinx ISE 14.7
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEM_data
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_MEM_data IS
END tb_MEM_data;
 
ARCHITECTURE behavior OF tb_MEM_data IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEM_data
    PORT(
         clk 			: IN  std_logic;
         write_en 	: IN  std_logic;
         addr 			: IN  std_logic_vector(15 downto 0);
         write_data 	: IN  std_logic_vector(15 downto 0);
         read_en 		: IN  std_logic;
         read_data 	: OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk 			: std_logic := '0';
   signal write_en 	: std_logic := '0';
   signal addr 		: std_logic_vector(15 downto 0) := (others => '0');
   signal write_data : std_logic_vector(15 downto 0) := (others => '0');
   signal read_en 	: std_logic := '0';

 	--Outputs
   signal read_data 	: std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEM_data PORT MAP (
          clk => clk,
          write_en => write_en,
          addr => addr,
          write_data => write_data,
          read_en => read_en,
          read_data => read_data
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
      -- insert stimulus here 
			-- Checking Write process 
		for i in 0 to 10 loop
			wait until rising_edge(clk);
			write_en		<=	'1';
			addr			<= std_logic_vector(to_unsigned(i,16));
			write_data	<= std_logic_vector(to_unsigned(i,16));
			wait for clk_period;
		end loop;
		
			-- Checking Read process
		for i in 0 to 10 loop
			wait until rising_edge(clk);
			read_en		<=	not(read_en);
			addr			<= std_logic_vector(to_unsigned(i,16));
			wait for clk_period;
		end loop;
		assert false report "Simulation terminated"severity failure;
   end process;

END;
