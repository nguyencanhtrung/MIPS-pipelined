--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
-- Design Name:   
-- Module Name:   /home/ctnguyen/Works/pipelineCPU/tb/tb_EX_phase.vhd
-- Project Name:  pipelineCPU
-- Target Device:  general platform
-- Tool versions:  Xilinx ISE 14.7
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EX_phase
-----------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.globalConst.all;
 
ENTITY tb_EX_phase IS
END tb_EX_phase;
 
ARCHITECTURE behavior OF tb_EX_phase IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EX_phase
    PORT(
         DEC_EX_Reg : IN  std_logic_vector(79 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         EX_MEM_Reg : OUT  std_logic_vector(60 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DEC_EX_Reg : std_logic_vector(79 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal EX_MEM_Reg : std_logic_vector(60 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EX_phase PORT MAP (
          DEC_EX_Reg => DEC_EX_Reg,
          clk => clk,
          rst => rst,
          EX_MEM_Reg => EX_MEM_Reg
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
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
      wait for clk_period;
		
      -- insert stimulus here 
				-- ALU_result = Imm + Rs     
				-- Imm = 16384 , rd_index = 8, rt_index = 4
				-- Rs value = 18, nx_pc =88
				-- Checking result
				-- => ALU_result = 16384 + 18 = 16402
				--  EX_MEM (60 - 55) = 38
				--  EX_MEM (54-39) = branch_target_addr = 88 + 16384 =16472
				--  EX_MEM (20-5) = Rt value = 29;
				--  EX_MEM (4 - 0) = RegDes = Rt_index = 4;
			DEC_EX_Reg(15 downto 0)		<= std_logic_vector(to_unsigned(16384, 16)); -- rd = 01000 = 8
			DEC_EX_Reg(20 downto 16)	<=	std_logic_vector(to_unsigned(4, 5)); -- rt = 4
			DEC_EX_Reg(36 downto 21)	<=	std_logic_vector(to_unsigned(29, 16));
			DEC_EX_Reg(52 downto 37)	<=	std_logic_vector(to_unsigned(18, 16));
			DEC_EX_Reg(68 downto 53)	<=	std_logic_vector(to_unsigned(88, 16));
			DEC_EX_Reg(71 downto 69)	<=	alu_Add;
			DEC_EX_Reg(72)					<= des_Rt;
			DEC_EX_Reg(73)					<= aluSrc_Imm;
			DEC_EX_Reg(79 downto 74)	<= std_logic_vector(to_unsigned(38, 6));
		wait for clk_period;
			DEC_EX_Reg(71 downto 69)	<=	alu_Sub;
			DEC_EX_Reg(72)					<= des_Rd;
			DEC_EX_Reg(73)					<= aluSrc_Rt;
		wait for clk_period;
		assert false report "Simulation Successful" severity failure;
   end process;

END;
