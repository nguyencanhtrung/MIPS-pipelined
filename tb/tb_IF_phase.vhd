--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
-- Design Name:   
-- Module Name:   	/home/ctnguyen/Works/pipelineCPU/tb/tb_IF_phase.vhd
-- Project Name:  	pipelineCPU
-- Target Device:  	general platform
-- Tool versions:  	Xilinx ISE 14.7
-- Description:   
-- 	Checking PC adder and PC update
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.globalConst.all;
 
ENTITY tb_IF_phase IS
END tb_IF_phase;
 
ARCHITECTURE behavior OF tb_IF_phase IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IF_phase
    PORT(
         clk 			: IN  	std_logic;
         rst 			: IN  	std_logic;
         pc_Src 		: IN  	std_logic;
         br_addr 		: IN  	std_logic_vector(15 downto 0);
         instruction : IN  	std_logic_vector(31 downto 0);
         pc 			: INOUT  std_logic_vector(15 downto 0);
         IF_DEC_REG 	: OUT  	std_logic_vector(47 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk 				: std_logic := '0';
   signal rst 				: std_logic := '0';
   signal pc_Src 			: std_logic := '0';
   signal br_addr 		: std_logic_vector(15 downto 0) := (others => '0');
   signal instruction 	: std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal pc 				: std_logic_vector(15 downto 0);
   signal IF_DEC_REG 	: std_logic_vector(47 downto 0);

   -- Clock period definitions
   constant clk_period 	: time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IF_phase PORT MAP (
          clk 				=> clk,
          rst 				=> rst,
          pc_Src 			=> pc_Src,
          br_addr 		=> br_addr,
          instruction 	=> instruction,
          pc 				=> pc,
          IF_DEC_REG 	=> IF_DEC_REG
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
		rst			<= 	'1';
      wait for 100 ns;	
		rst			<=		'0';
      wait for clk_period;

      -- insert stimulus here 
		pc_Src 		<= pcSrcNxt;
      br_addr 		<= std_logic_vector(to_unsigned( 45 , 16));
		instruction <= std_logic_vector(to_unsigned( 835869 , 32));
      wait for clk_period * 10;
		pc_Src 		<= pcSrcBr;
		wait for clk_period;
		pc_Src 		<= pcSrcNxt;
		wait for clk_period * 10;
		assert false report "Simulation Successful" severity failure;
   end process;
END;
