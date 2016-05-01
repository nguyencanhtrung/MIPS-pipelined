-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.all;
USE work.globalConst.all;

ENTITY tb_ALU_wrapper IS
END tb_ALU_wrapper;

ARCHITECTURE behavior OF tb_ALU_wrapper IS 

 SIGNAL ALU_operand_a : STD_LOGIC_VECTOR (15 downto 0);
 SIGNAL ALU_operand_b : STD_LOGIC_VECTOR (15 downto 0);
 SIGNAL ALU_opcode	 : STD_LOGIC_VECTOR	(2 downto 0);
 SIGNAL ALU_zero 		 : STD_LOGIC;
 SIGNAL ALU_result    : STD_LOGIC_VECTOR (15 downto 0);
 SIGNAL ALU_less_than : STD_LOGIC;

 -- component declaration
 COMPONENT ALU_wrapper
    PORT ( ALU_operand_a 	: in  	STD_LOGIC_VECTOR (15 downto 0);
           ALU_operand_b 	: in  	STD_LOGIC_VECTOR (15 downto 0);
			  ALU_opcode	 	: in	 	STD_LOGIC_VECTOR	(2 downto 0);
           ALU_zero 			: out  	STD_LOGIC;
           ALU_result      : out  	STD_LOGIC_VECTOR (15 downto 0);
           ALU_less_than   : out  	STD_LOGIC);
 END COMPONENT;
BEGIN

-- Component Instantiation
	ALU: ALU_wrapper  PORT MAP(
			ALU_operand_a 	=> ALU_operand_a,
			ALU_operand_b 	=>	ALU_operand_b,
			ALU_opcode		=> ALU_opcode, 	 
			ALU_zero 		=> ALU_zero,		 
			ALU_result  	=> ALU_result,   
			ALU_less_than 	=> ALU_less_than);

--  Test Bench Statements
	tb : PROCESS
	BEGIN
		wait for 10 ns;
			-- Addition operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"0B0D";
		ALU_opcode		<= alu_Add;
		wait for 10 ns;
		ALU_operand_a 	<= x"03CD";
		ALU_operand_b 	<= x"020D";
		ALU_opcode		<= alu_Add;
		wait for 10 ns;
		ALU_operand_a 	<= x"83CD";
		ALU_operand_b 	<= x"822D";
		ALU_opcode		<= alu_Add;
		wait for 10 ns;
		ALU_operand_a 	<= x"03CD";
		ALU_operand_b 	<= x"820D";
		ALU_opcode		<= alu_Add;
		wait for 10 ns;
			-- Sub operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"ABCD";
		ALU_opcode		<= alu_Sub;
		
		wait for 10 ns;
			-- And operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"0B0D";
		ALU_opcode		<= alu_And;
		
		wait for 10 ns;
			-- Or operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"0B0D";
		ALU_opcode		<= alu_Or;
		
		wait for 10 ns;
		-- NOT operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"0B0D";
		ALU_opcode		<= alu_Not;
		
		wait for 10 ns;
			-- Xor operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"0B0D";
		ALU_opcode		<= alu_Xor;
		
		wait for 10 ns;
			-- Sll operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"0B0D";
		ALU_opcode		<= alu_Sll;
		
		wait for 10 ns;
			-- Srl operation
		ALU_operand_a 	<= x"ABCD";
		ALU_operand_b 	<= x"0B0D";
		ALU_opcode		<= alu_Srl;
		
		wait for 10 ns;
		
		assert false report "Simulation Successful" severity failure;
	END PROCESS tb;
--  End Test Bench 

END;
