--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
-- Design Name:   
-- Module Name:   	/home/ctnguyen/Works/pipelineCPU/tb/tb_DEC_phase.vhd
-- Project Name:  	pipelineCPU
-- Target Device:  	general platform
-- Tool versions:  	Xilinx ISE 14.7
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.globalConst.ALL;
 
ENTITY tb_DEC_phase IS
END tb_DEC_phase;
 
ARCHITECTURE behavior OF tb_DEC_phase IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEC_phase
    PORT(
         IF_DEC_Reg : IN  std_logic_vector(47 downto 0);
         write_data : IN  std_logic_vector(15 downto 0);
         write_addr : IN  std_logic_vector(4 downto 0);
         write_en : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         DEC_EX_Reg : OUT  std_logic_vector(79 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IF_DEC_Reg : std_logic_vector(47 downto 0) := (others => '0');
   signal write_data : std_logic_vector(15 downto 0) := (others => '0');
   signal write_addr : std_logic_vector(4 downto 0) := (others => '0');
   signal write_en : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal DEC_EX_Reg : std_logic_vector(79 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEC_phase PORT MAP (
          IF_DEC_Reg => IF_DEC_Reg,
          write_data => write_data,
          write_addr => write_addr,
          write_en => write_en,
          clk => clk,
          rst => rst,
          DEC_EX_Reg => DEC_EX_Reg
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
		rst		<= '1';
      wait for 100 ns;	
		rst		<= '0';
      wait for clk_period;
		
			--IF_DEC_Reg(47 downto 32) ---- nx_pc = 88,
			--IF_DEC_Reg(31 downto 26) ---- instr_op = ++,
			--IF_DEC_Reg(25 downto 21) ---- rsReg = 8,
			--IF_DEC_Reg(20 downto 16) ---- rtReg = 6,
			--IF_DEC_Reg(15 downto 0) ----  imm = 16384 => rd = 8
			
		IF_DEC_Reg(47 downto 32)		<= std_logic_vector(to_unsigned(88,16));
		
			-- checking individual opcode
		for i in 0 to 17 loop
			IF_DEC_Reg(31 downto 26)	<= std_logic_vector(to_unsigned(i,6));
			IF_DEC_Reg(25 downto 21)	<= std_logic_vector(to_unsigned(8,5));
			IF_DEC_Reg(20 downto 16)	<= std_logic_vector(to_unsigned(6,5));
			IF_DEC_Reg(15 downto 0)		<= std_logic_vector(to_unsigned(16384,16)); 
			wait for clk_period;
		end loop;
		assert false report "Simulation Successful" severity failure;
   end process;

END;
