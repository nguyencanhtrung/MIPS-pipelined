--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
-- Create Date:   17:43:49 05/07/2016
-- Design Name:   
-- Module Name:   	/home/ctnguyen/Works/pipelineCPU/tb/tb_MEM_phase.vhd
-- Project Name:  	pipelineCPU
-- Target Device:  	General Platform
-- Tool versions:  	Xilinx ISE 14.7
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_MEM_phase IS
END tb_MEM_phase;
 
ARCHITECTURE behavior OF tb_MEM_phase IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEM_phase
    PORT(
         clk 			: IN  std_logic;
         rst 			: IN  std_logic;
         EX_MEM_REG 	: IN  std_logic_vector(60 downto 0);
         MEM_WB_REG 	: OUT  std_logic_vector(40 downto 0);
         br_tar_addr : OUT  std_logic_vector(15 downto 0);
         pcSrc 		: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic 	:= '0';
   signal rst : std_logic 	:= '0';
   signal EX_MEM_REG : std_logic_vector(60 downto 0) := (others => '0');

 	--Outputs
   signal MEM_WB_REG 		: std_logic_vector(40 downto 0);
   signal br_tar_addr 		: std_logic_vector(15 downto 0);
   signal pcSrc 				: std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEM_phase PORT MAP (
          clk => clk,
          rst => rst,
          EX_MEM_REG => EX_MEM_REG,
          MEM_WB_REG => MEM_WB_REG,
          br_tar_addr => br_tar_addr,
          pcSrc => pcSrc
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
		rst	<= '1';
      wait for 100 ns;	
		rst	<= '0';
      wait for clk_period;
      -- insert stimulus here 

      -- End of simulation
      assert false report "Simulation Successful" severity failure;
   end process;

END;
