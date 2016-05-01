----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
-- 
-- Create Date:    11:22:04 04/09/2016 
-- Design Name: 
-- Module Name:    	ALU_wrapper - Behavioral 
-- Project Name:	 	pipeline CPU 
-- Target Devices: 	General platform
-- Tool versions:  	Xilinx ISE 14.7
-- Description: 
--				ALU module supports: 
--					+ 16-bit signed addition and subtraction
--					+ 16-bit logic operation
--					+ shift logic
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;
use work.globalConst.all;

entity ALU_wrapper is
    Port ( ALU_operand_a 	: in  	STD_LOGIC_VECTOR (15 downto 0);
           ALU_operand_b 	: in  	STD_LOGIC_VECTOR (15 downto 0);
			  ALU_opcode	 	: in	 	STD_LOGIC_VECTOR	(2 downto 0);
           ALU_zero 			: out  	STD_LOGIC;
           ALU_result      : out  	STD_LOGIC_VECTOR (15 downto 0);
           ALU_less_than   : out  	STD_LOGIC);
end ALU_wrapper;

architecture Behavioral of ALU_wrapper is
	-- operation mode
signal opAddSub			:	std_logic;
signal opLogic				:	std_logic_vector(1 downto 0);
signal opShift				:	std_logic_vector(1 downto 0);
	-- result signals
signal resultAddSub		:	std_logic_vector(15 downto 0);
signal resultLogic		:	std_logic_vector(15 downto 0);
signal resultShift		:	std_logic_vector(15 downto 0);
	-- overflow addsub
signal over_flow			: 	std_logic;
signal c_outAddSub_dummy:	std_logic;

begin	
	-- ALU components
ALU_adder_subtracter: entity work.sixteen_bits_add_sub
		Port map ( 
			operand_a 	=>	ALU_operand_a,
         operand_b 	=> ALU_operand_b,
         mode 			=>	opAddSub,
         over_flow 	=>	over_flow,
			carry_out 	=>	c_outAddSub_dummy,
         result 		=>	resultAddSub);

ALU_logic: entity work.alu_Logic
		Port map (
			operand_a 	=>	ALU_operand_a,
         operand_b 	=>	ALU_operand_b,
			logicOp 		=> opLogic,
         result 		=>	resultLogic);

ALU_shift: entity work.alu_Shift
		Port map ( 
			operand_a 	=>	ALU_operand_a,
         operand_b 	=>	ALU_operand_b,
         shiftOp 		=> opShift,
         result 		=>	resultShift);
	-- MUXes for controlling operations
opAddSub			<=		ex_opAdd when 	ALU_opcode = alu_Add
					else	ex_opSub;									-- prevent unintended latch 
opLogic			<=		ex_opAnd when 	ALU_opcode = alu_And
					else	ex_opOr 	when 	ALU_opcode = alu_Or
					else	ex_opNot when 	ALU_opcode = alu_Not
					else	ex_opXor;									-- prevent unintended latch 
opShift			<=		ex_opSll when 	ALU_opcode = alu_Sll
					else	ex_opSrl;									-- prevent unintended latch 
	-- MUXes for ALU result
ALU_result		<=		resultAddSub	when	ALU_opcode = alu_Add or ALU_opcode = alu_Sub
					else 	resultLogic		when	ALU_opcode = alu_And or ALU_opcode = alu_Or 
													or ALU_opcode = alu_Not or ALU_opcode = alu_Xor
					else	resultShift;
	-- Zero
ALU_zero			<= '1' when resultAddSub = x"0000"
					else '0';
	-- Less than  
	-- Operand a < operand b  AND substraction => set less than = 1
	-- Operand a > operand b  AND addition  => set less than = 1
ALU_less_than	<= resultAddSub(15) XOR over_flow;
end Behavioral;

