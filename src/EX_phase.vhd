----------------------------------------------------------------------------------
-- TU Kaisrslautern 
-- Student: Trung C. Nguyen
-- 
-- Create Date:    	02:15:32 04/12/2016 
-- Design Name: 
-- Module Name:    	EX_phase - Behavioral 
-- Project Name: 		Pipeline CPU
-- Target Devices: 
-- Tool versions: 	Xilinx ISE 14.7
-- Description: 
	--	Pipeline reg DEC/EX - DEC_EX_Reg
--		15 - 0 :	EX - IR(15 - 0) : imm and rd
--		20 - 16: EX - IR(20 -16) : rt
--		36 - 21: EX - Read Data 2 from RegFile (16 bits)
--		52 - 37: EX - Read Data 1 from RegFile (16 bits)
--		68 - 53: EX - PC 16 bits
--		71 - 69: EX - ALU_op (3bits)		
--		72		 : EX - Write to RegFile - RegDes (rd or rt)
--		73		 : EX - ALUsrc (rt or Imm)
--		74		 : MEM- Mem Write enable  (store)
--		75		 : MEM- Mem Read Enable	(load)
--		76		 :	MEM- Branch indicator
--		78 - 77: WB - Data source that write to RegFile(from ALU result or from Memory(Load))
--		79		 : WB - RegFile Write enable	
--====================================================================
		--Pipeline register EX_MEM_Reg
--		4  - 0 	:	RegDes (rt or rd)
--		20 - 5 	: Read Data 2 (rt) write to mem in sw:   Mem(rs + Imm) = rt
--		36 - 21	: ALU result	
--		37		 	: Zero
--		38			: Less than
--		54 - 39	: Branch target addr
--		55		 	: MEM- Mem Write enable  (store)
--		56		 	: MEM- Mem Read Enable	(load)
--		57		 	: MEM- Branch indicator
--		59 - 58 	: WB - Data source that write to RegFile(from ALU result or from Memory(Load))
--		60		 	: WB - RegFile Write enable	
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;
use work.globalConst.all;

entity EX_phase is
    Port ( DEC_EX_Reg 	: in  	STD_LOGIC_VECTOR (79 downto 0);
           clk 			: in  	STD_LOGIC;
           rst 			: in  	STD_LOGIC;
           EX_MEM_Reg 	: out  	STD_LOGIC_VECTOR (60 downto 0));
end EX_phase;

architecture Behavioral of EX_phase is
	--	Branch target addr calculation
signal branch_target_addr	:	std_logic_vector(15 downto 0);
signal branch_overflow_dum	:	std_logic;
signal branch_carryout_dum	: 	std_logic;

signal operand_a		:	std_logic_vector(15 downto 0);
signal operand_b		:	std_logic_vector(15 downto 0);
signal alu_op			:	std_logic_vector(2 downto 0);
signal alu_result		:	std_logic_vector(15 downto 0);
signal alu_zero		:	std_logic;
signal alu_less_than	:	std_logic;
signal alu_src			:	std_logic;
	-- extracted signals
signal imm				:	std_logic_vector(15 downto 0);
signal rd, rt			:	std_logic_vector(4 downto 0);
signal nx_PC			:	std_logic_vector(15 downto 0);
signal readData1		:	std_logic_vector(15 downto 0);
signal readData2		:	std_logic_vector(15 downto 0);
	-- Reg destination Mux
signal regDes_sel		:	std_logic;
signal regDes			:	std_logic_vector(4 downto 0);

begin
Br_addr_cal:	entity work.sixteen_bits_adder
	 Port map ( 
				operand_a 	=> nx_PC,
				operand_b 	=> imm,
				sum 			=> branch_target_addr,
				over_flow	=> branch_overflow_dum,
				carry_in 	=> '0',
				carry_out 	=> branch_carryout_dum);

ALU: entity work.ALU_wrapper
    Port map( 
				ALU_operand_a 	=> operand_a,
				ALU_operand_b 	=> operand_b,
				ALU_opcode	 	=> alu_op, 
				ALU_zero 		=> alu_zero,
				ALU_result     => alu_result,
				ALU_less_than	=>	alu_less_than);
	--	Extract data from pipeline reg DEC/EX - DEC_EX_Reg
imm				<=	DEC_EX_Reg(15 downto 0);
rd					<= DEC_EX_Reg(15 downto 11);	-- index in RegFile
rt					<= DEC_EX_Reg(20 downto 16);	-- index in RegFile
readData1		<= DEC_EX_Reg(52 downto 37);	-- rs
readData2		<= DEC_EX_Reg(36 downto 21);	-- rt
nx_PC				<= DEC_EX_Reg(68 downto 53);
regDes_sel		<=	DEC_EX_Reg(72);
alu_src			<= DEC_EX_Reg(73);
alu_op			<= DEC_EX_Reg(71 downto 69);
operand_a		<= readData1;

		-- Mux ALU source (Rt or Imm)
operand_b 		<= imm 	when 	alu_src = aluSrc_Imm
					else  readData2;
				
		-- Mux Reg Destination (Rd or Rt)
regDes			<= rt		when	regDes_sel = des_Rt
					else rd;

		-- Update to pipeline register EX_MEM_Reg at rising edge of clock
update_EX_MEM_Reg:process(clk,rst)
	begin
		if rising_edge(clk) then
			if(rst = '1') then
				EX_MEM_Reg	<= (others => '0');
			else
				EX_MEM_Reg(4 downto 0) 		<=  regDes;
				EX_MEM_Reg(20 downto 5) 	<=  readData2;
				EX_MEM_Reg(36 downto 21) 	<=  alu_result;
				EX_MEM_Reg(37) 				<=  alu_zero;
				EX_MEM_Reg(38)					<=	 alu_less_than;
				EX_MEM_Reg(54 downto 39) 	<=  branch_target_addr;
				EX_MEM_Reg(60 downto 55) 	<=  DEC_EX_Reg(79 downto 74);
			end if;
		end if;
end process;
end Behavioral;

