--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
-- Design Name:   
-- Module Name:   /home/ctnguyen/Works/pipelineCPU/tb/tb_ALU_wrapper.vhd
-- Project Name:  pipelineCPU
-- Target Device:  General Platform
-- Tool versions:  Xilinx ISE 14.7
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.globalConst.all;
USE ieee.numeric_std.ALL;
 
ENTITY tb_ALU_wrapper IS
END tb_ALU_wrapper;
 
ARCHITECTURE behavior OF tb_ALU_wrapper IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_wrapper
    PORT(
         ALU_operand_a : IN  std_logic_vector(15 downto 0);
         ALU_operand_b : IN  std_logic_vector(15 downto 0);
         ALU_opcode : IN  std_logic_vector(2 downto 0);
         ALU_zero : OUT  std_logic;
         ALU_result : OUT  std_logic_vector(15 downto 0);
         ALU_less_than : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_operand_a : std_logic_vector(15 downto 0) := (others => '0');
   signal ALU_operand_b : std_logic_vector(15 downto 0) := (others => '0');
   signal ALU_opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ALU_zero : std_logic;
   signal ALU_result : std_logic_vector(15 downto 0);
   signal ALU_less_than : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_wrapper PORT MAP (
          ALU_operand_a => ALU_operand_a,
          ALU_operand_b => ALU_operand_b,
          ALU_opcode => ALU_opcode,
          ALU_zero => ALU_zero,
          ALU_result => ALU_result,
          ALU_less_than => ALU_less_than
        );
	
	-- Stimulus process
   stim_proc: process
   begin		
   report " Start Simulation ...";
	--------
	--------
		--	ALU operations
	--constant alu_Add				:  std_logic_vector(2 downto 0) := "000";
	--constant alu_Sub				:  std_logic_vector(2 downto 0) := "001";
	--constant alu_And				:  std_logic_vector(2 downto 0) := "010";
	--constant alu_Or				:  std_logic_vector(2 downto 0) := "011";
	--constant alu_Not				:  std_logic_vector(2 downto 0) := "100";
	--constant alu_Xor				:  std_logic_vector(2 downto 0) := "101";	
	--constant alu_Sll				:  std_logic_vector(2 downto 0) := "110";
	--constant alu_Srl				:  std_logic_vector(2 downto 0) := "111";
	-----
	-----
		-- Addition: 2 positive numbers 
	ALU_opcode			<= alu_Add;
	ALU_operand_a		<= std_logic_vector(to_signed(256 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(556 , 16));
	wait for 10 ns;
		-- Addition: 2 negative numbers 
	ALU_opcode			<= alu_Add;
	ALU_operand_a		<= std_logic_vector(to_signed(-126 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(-2556 , 16));
	wait for 10 ns;
		-- Addition:  positive + negative numbers  => negative result 
	ALU_opcode			<= alu_Add;
	ALU_operand_a		<= std_logic_vector(to_signed(256 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(-556 , 16));
	wait for 10 ns;
		-- Addition:  positive + negative numbers  => positive result 
	ALU_opcode			<= alu_Add;
	ALU_operand_a		<= std_logic_vector(to_signed(-256 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(556 , 16));
	wait for 10 ns;
		-- Addition:  positive + negative numbers  => zero result 
	ALU_opcode			<= alu_Add;
	ALU_operand_a		<= std_logic_vector(to_signed(256 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(-256 , 16));
	wait for 10 ns;
	-----
		-- Subtraction: 2 positive numbers -- negative result
	ALU_opcode			<= alu_Sub;
	ALU_operand_a		<= std_logic_vector(to_signed(256 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(556 , 16));
	wait for 10 ns;
		-- Subtraction: 2 positive numbers -- positive result
	ALU_opcode			<= alu_Sub;
	ALU_operand_a		<= std_logic_vector(to_signed(756 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(556 , 16));
	wait for 10 ns;
		-- Subtraction: 2 negative numbers -- positive result
	ALU_opcode			<= alu_Sub;
	ALU_operand_a		<= std_logic_vector(to_signed(-156 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(-956 , 16));
	wait for 10 ns;
		-- Subtraction: 2 negative numbers -- negatie result
	ALU_opcode			<= alu_Sub;
	ALU_operand_a		<= std_logic_vector(to_signed(-256 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(-156 , 16));
	wait for 10 ns;
	----
		-- AND
	ALU_opcode			<= alu_And;
	ALU_operand_a		<= std_logic_vector(to_signed(3556 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;
		-- AND
	ALU_opcode			<= alu_And;
	ALU_operand_a		<= std_logic_vector(to_signed(0 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;
		-- AND
	ALU_opcode			<= alu_And;
	ALU_operand_a		<= std_logic_vector(to_signed(65535 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;
-----
		-- OR
	ALU_opcode			<= alu_Or;
	ALU_operand_a		<= std_logic_vector(to_signed(0 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;
		-- OR
	ALU_opcode			<= alu_Or;
	ALU_operand_a		<= std_logic_vector(to_signed(65535 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;
-----
		-- NOT
	ALU_opcode			<= alu_Not;
	ALU_operand_a		<= std_logic_vector(to_signed(0 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;
		-- NOT
	ALU_opcode			<= alu_Not;
	ALU_operand_a		<= std_logic_vector(to_signed(65535 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;
		-- NOT
	ALU_opcode			<= alu_Not;
	ALU_operand_a		<= std_logic_vector(to_signed(3556 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(3556 , 16));
	wait for 10 ns;

----
		-- Shift Left logic
	ALU_opcode			<= alu_Sll;
	ALU_operand_a		<= std_logic_vector(to_signed(3 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(64 , 16));	-- Shift left 1
	wait for 10 ns;
		-- Shift Left logic
	ALU_opcode			<= alu_Sll;
	ALU_operand_a		<= std_logic_vector(to_signed(13 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(192 , 16));	-- Shift left 3
	wait for 10 ns;
		-- Shift Left logic
	ALU_opcode			<= alu_Sll;
	ALU_operand_a		<= std_logic_vector(to_signed(132 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(1984 , 16));	-- Shift left -1
	wait for 10 ns;
	
----
		-- Shift Right logic
	ALU_opcode			<= alu_Srl;
	ALU_operand_a		<= std_logic_vector(to_signed(3556 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(64 , 16));	-- Shift right 1
	wait for 10 ns;
		-- Shift Right logic
	ALU_opcode			<= alu_Srl;
	ALU_operand_a		<= std_logic_vector(to_signed(1472 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(192 , 16));	-- Shift right 3
	wait for 10 ns;
		-- Shift Left logic
	ALU_opcode			<= alu_Srl;
	ALU_operand_a		<= std_logic_vector(to_signed(1472 , 16));
	ALU_operand_b		<= std_logic_vector(to_signed(1984 , 16));	-- Shift right -1
	wait for 10 ns;
	
	assert false report "Simulation Successful" severity failure;
	
   end process;

END;
