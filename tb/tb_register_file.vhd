--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
-- Create Date:   11:54:24 04/01/2016
-- Design Name:   
-- Module Name:   /home/ctnguyen/Works/pipelineCPU/tb/tb_register_file.vhd
-- Project Name:  pipelineCPU
-- Target Device:  
-- Tool versions:  ISE 14.7
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_register_file IS
END tb_register_file;
 
ARCHITECTURE behavior OF tb_register_file IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         read_rs_index : IN  std_logic_vector(4 downto 0);
         read_rt_index : IN  std_logic_vector(4 downto 0);
         write_data : IN  std_logic_vector(15 downto 0);
         write_index : IN  std_logic_vector(4 downto 0);
         write_en : IN  std_logic;
         read_data_1 : OUT  std_logic_vector(15 downto 0);
         read_data_2 : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal read_rs_index : std_logic_vector(4 downto 0) := (others => '0');
   signal read_rt_index : std_logic_vector(4 downto 0) := (others => '0');
   signal write_data : std_logic_vector(15 downto 0) := (others => '0');
   signal write_index : std_logic_vector(4 downto 0) := (others => '0');
   signal write_en : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal read_data_1 : std_logic_vector(15 downto 0);
   signal read_data_2 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          read_rs_index => read_rs_index,
          read_rt_index => read_rt_index,
          write_data => write_data,
          write_index => write_index,
          write_en => write_en,
          read_data_1 => read_data_1,
          read_data_2 => read_data_2,
          clk => clk,
          rst => rst
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
		report "Start Simulation of Register File ...";

      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
      wait for clk_period;

      -- insert stimulus here 
			-- Checking write
		for i in 0 to 31 loop
				-- Set write enable
			if ((i mod 2) = 1) then
				write_en <= '0';
			else 
				write_en <= '1';
			end if;
			write_index <= std_logic_vector(to_unsigned(i, 5));
			write_data 	<= std_logic_vector(to_unsigned(i + 938, 16));
			wait for clk_period;
		end loop;
			-- Checking read
		for i in 0 to 15 loop
			read_rs_index <= std_logic_vector(to_unsigned(i, 5));
			read_rt_index <= std_logic_vector(to_unsigned(15 + i, 5));
			wait for clk_period;
		end loop;
		-- End of simulation
      assert false report "Simulation Successful" severity failure;
   end process;

END;
