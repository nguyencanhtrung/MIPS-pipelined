--	Package File
-- Create: 30/03/2016
-- Author: Trung C. Nguyen
-- Project: Pipeline CPU
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
------------------------------------
------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package globalConst is
-------------------------------------
	-- OPCODE - INSTRUCTION
		-- Arithmetic
constant	opAdd					:	std_logic_vector(5 downto 0) := "000000";
constant	opAddi				:	std_logic_vector(5 downto 0) := "000001";
constant	opSub					:	std_logic_vector(5 downto 0) := "000010";
		-- Logic
constant	opAnd					:	std_logic_vector(5 downto 0) := "000011";
constant	opOr					:	std_logic_vector(5 downto 0) := "000100";
constant	opNot					:	std_logic_vector(5 downto 0) := "000101";
constant	opXor					:	std_logic_vector(5 downto 0) := "000110";
constant	opAndi				:	std_logic_vector(5 downto 0) := "000111";
constant	opOri					:	std_logic_vector(5 downto 0) := "001000";
constant	opXori				:	std_logic_vector(5 downto 0) := "001001";
		--	Shift
constant	opSll					:	std_logic_vector(5 downto 0) := "001010";
constant	opSrl					:	std_logic_vector(5 downto 0) := "001011";
		-- Data transfer		
constant	opLw					:	std_logic_vector(5 downto 0) := "001100";
constant	opSw					:	std_logic_vector(5 downto 0) := "001101";
		-- Branch		
constant	opBeq					:	std_logic_vector(5 downto 0) := "001110";
constant	opBne					:	std_logic_vector(5 downto 0) := "001111";
		-- Others
constant	opSlt					:	std_logic_vector(5 downto 0) := "010000";	-- set less than
constant	opSlti				:	std_logic_vector(5 downto 0) := "010001";	-- set less than imm
		-- jump
constant	jump					:	std_logic_vector(5 downto 0) := "010010";
		-- nop
constant	nop					:	std_logic_vector(5 downto 0) := "010011";
------------------------------------
------------------------------------
-- INTRS FETCH STAGE
constant pcSrcNxt				:	std_logic := '0';   -- must be zero
constant pcSrcBr				:	std_logic := '1';
------------------------------------
------------------------------------
-- EXECUTION STAGE
	--	ALU operations
constant alu_Add				:  std_logic_vector(2 downto 0) := "000";
constant alu_Sub				:  std_logic_vector(2 downto 0) := "001";
constant alu_And				:  std_logic_vector(2 downto 0) := "010";
constant alu_Or				:  std_logic_vector(2 downto 0) := "011";
constant alu_Not				:  std_logic_vector(2 downto 0) := "100";
constant alu_Xor				:  std_logic_vector(2 downto 0) := "101";
constant alu_Sll				:  std_logic_vector(2 downto 0) := "110";
constant alu_Srl				:  std_logic_vector(2 downto 0) := "111";
	-- ALU source
constant aluSrc_Imm			:  std_logic := '1';   -- I type,  branch, lw,sw, Shift type (extract shamt)
constant aluSrc_Rt			:  std_logic := '0';	  -- R type;
	-- Destination register
constant des_Rt				:	std_logic := '1';	  -- destination is Rt in I-type, lw
constant des_Rd				:	std_logic := '0';
------------------------------------
------------------------------------
-- WRITE BACK STAGE
	-- Data Source either from ALU_result or Mem
constant fromALU				: 	std_logic_vector(1 downto 0) := "00";
constant fromALU_lessthan	: 	std_logic_vector(1 downto 0) := "01";
constant fromMEM				: 	std_logic_vector(1 downto 0) := "10";
------------------------------------
------------------------------------
	-- Control signals for modules INSIDE ALU
		-- Adder and Substracter selection
constant	ex_opAdd				:	std_logic := '0';
constant ex_opSub				:	std_logic := '1';
		-- Logic Operations selection 
constant	ex_opAnd				:	std_logic_vector(1 downto 0) := "00";
constant ex_opOr				:	std_logic_vector(1 downto 0) := "01";
constant	ex_opNot				:	std_logic_vector(1 downto 0) := "10";
constant ex_opXor				:	std_logic_vector(1 downto 0) := "11";
		-- Shifting Operations selection
constant	ex_opSll				:	std_logic_vector(1 downto 0) := "00";
constant	ex_opSrl				:	std_logic_vector(1 downto 0) := "01";
-------------------------------------
-------------------------------------
end globalConst;

package body globalConst is
end globalConst;
