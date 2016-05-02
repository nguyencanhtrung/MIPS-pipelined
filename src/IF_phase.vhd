----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
-- 
-- Design Name: 
-- Module Name:    	IF_phase - Behavioral 
-- Project Name: 	 	Pipeline CPU
-- Target Devices: 	General platform
-- Tool versions: 	Xilinx ISE 14.7
-- Description: 
--      IF/DEC pipeline reg
-- 47 - 32:  nx_pc
-- 31 - 26: Inst_opcode
-- 25 - 21: rs_index
-- 20 - 16: rt_index
-- 15 - 0 : imm
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.all;
use work.globalConst.all;

entity IF_phase is
    Port ( clk 			: in  	STD_LOGIC;
           rst 			: in  	STD_LOGIC;
           pc_Src 		: in  	STD_LOGIC;
			  br_addr		: in		STD_LOGIC_VECTOR (15 downto 0);
           instruction 	: in  	STD_LOGIC_VECTOR (31 downto 0);
           pc 				: inout  STD_LOGIC_VECTOR (15 downto 0);
           IF_DEC_REG 	: out  	STD_LOGIC_VECTOR (47 downto 0));
end IF_phase;

architecture Behavioral of IF_phase is
	-- PC Adder
signal nx_pc				:	std_logic_vector(15 downto 0);
signal over_flow_dum		:	std_logic;
signal carry_out_dum		: 	std_logic;
	-- Instruction Mem interfaces

begin
pc_adder: entity work.sixteen_bits_adder
	Port map ( 
			  operand_a => pc,			-- inout
           operand_b => x"0001",
           sum 		=> nx_pc,
			  over_flow	=> over_flow_dum,
           carry_in 	=> '0',
           carry_out => carry_out_dum);
	
	-- Update PC
PC_update: process (clk,rst)
begin
	if rising_edge(clk) then
		if rst = '1' then
			pc		<= (others => '0');
		else
			if (pc_Src = pcSrcNxt) then
				pc	<= nx_pc;
			else
				pc <= br_addr;
			end if;
		end if;
	end if;
end process;

	-- Update pipeline reg at rising edge
IF_DEC_reg_update: process(clk, rst)
begin
	if rising_edge(clk) then
		if rst = '1' then
			IF_DEC_REG							<= (others => '0');
		else
			IF_DEC_REG(47 downto 32)		<= nx_pc;
			IF_DEC_REG(31 downto 0)			<= instruction;
		end if;
	end if;
end process;
end Behavioral;

