----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen and Wassem Hassan
-- 
-- Create Date:    14:43:05 04/11/2016 
-- Design Name:    	ALU unit
-- Module Name:    	alu_Shift - Behavioral 
-- Project Name: 		Pipeline CPU
-- Target Devices: 
-- Tool versions: 	ISE 14.7
-- Description: 
--					Shift instructions are R-Type   
--					| Opcode (6)| rs(5) | rt(5) | rd(5) | shamt(5) | funct(6)|
--					Inputs : rs and Imm(15 downto 0)
--					Need to extract shamt field
--					rd = rs op shamt;
--					shamt is unsigned in range [0, 31] but need only from [0, 16]
--					sll $r1 r2 14;    <=> $r1 = $r2 sll 14;
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.globalConst.all;

entity alu_Shift is
    Port ( operand_a 	: in  	STD_LOGIC_VECTOR (15 downto 0);
           operand_b 	: in  	STD_LOGIC_VECTOR (15 downto 0);
           shiftOp 		: in  	STD_LOGIC_VECTOR (1 downto 0);
           result 		: out  	STD_LOGIC_VECTOR (15 downto 0));
end alu_Shift;

architecture Behavioral of alu_Shift is
signal	int_shamt	: integer;
begin
		-- Extract shamt field
	int_shamt	<=		to_integer(signed(operand_b(10 downto 6)));	
	result 		<=		to_stdlogicvector(to_bitvector(operand_a) sll int_shamt) when shiftOp = ex_opSll
					else	to_stdlogicvector(to_bitvector(operand_a) srl int_shamt) when shiftOp = ex_opSrl;
				--	else	operand_a sra shamt_int when shiftOp = ex_opSra
				--	else	operand_a slli shamt_int when shiftOp = ex_opSlli;
end Behavioral;

