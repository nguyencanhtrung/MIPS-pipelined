----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Students: Trung C. Nguyen and Waseem Hassan
-- 
-- Create Date:    	13:53:35 04/11/2016 
-- Design Name: 	 	ALU unit
-- Module Name:    	alu_Logic - Behavioral 
-- Project Name: 	 	pipeline CPU
-- Target Devices: 
-- Tool versions: 
-- Description:    	Dedicated module for logic operations including AND, ANDi
--							OR, ORi, NOT, XOR, XORi
--							R-type: AND, OR, XOR: 	 	rd = rs op rt
--							I-type: ANDi, ORi, XORi: 	rt = rs op imm(16bits)
--							Special case: NOT			 	rd = not(rs)
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.globalConst.all;				-- package including encoded logicOp

--use IEEE.NUMERIC_STD.ALL;

entity alu_Logic is
    Port ( operand_a : in  STD_LOGIC_VECTOR (15 downto 0);	-- rs
           operand_b : in  STD_LOGIC_VECTOR (15 downto 0);	-- rt or imm
			  logicOp 	: in  STD_LOGIC_VECTOR (1 downto 0);	
           result 	: out STD_LOGIC_VECTOR (15 downto 0));	--	rd or rt
end alu_Logic;

architecture Behavioral of alu_Logic is

begin
	result	<=			operand_a AND operand_b when logicOp = ex_opAnd
					else	operand_a OR  operand_b when logicOp = ex_opOr
					else	NOT(operand_a) 			when logicOp = ex_opNot
					else	operand_a XOR operand_b when logicOp = ex_opXor;
end Behavioral;

