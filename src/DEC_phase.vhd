----------------------------------------------------------------------------------
-- TU Kaiserslautern	
-- Student: Trung C. Nguyen
-- 
-- Create Date:    11:29:10 04/10/2016 
-- Design Name: 
-- Module Name:    decode_phase - Behavioral 
-- Project Name:   pipeline CPU
-- Target Devices: 
-- Tool versions:   ISE 14.7
-- Description: 
--	reg DEC/EX - DEC_EX_Reg
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
----------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;
use work.globalConst.all;
--use IEEE.NUMERIC_STD.ALL;

entity DEC_phase is
    Port ( IF_DEC_Reg 			: in  STD_LOGIC_VECTOR (47 downto 0);
           write_data 			: in  STD_LOGIC_VECTOR (15 downto 0);
           write_addr 			: in  STD_LOGIC_VECTOR (4 downto 0);
           write_en 				: in  STD_LOGIC;
           clk 					: in  STD_LOGIC;
			  rst 					: in  STD_LOGIC;
			  DEC_EX_Reg 			: out STD_LOGIC_VECTOR (79 downto 0));
end DEC_phase;

architecture Behavioral of DEC_phase is

	-- signals fed to RegFile
signal rsReg, rtReg				:	std_logic_vector(4 downto 0);
	-- output signals of RegFile
signal read_data1					:	std_logic_vector(15 downto 0); -- rs
signal read_data2					:	std_logic_vector(15 downto 0); -- rt
	--  decode controller
signal EX_alu_op					:	std_logic_vector(2 downto 0);
signal EX_alu_src					:	std_logic;
signal EX_regDes					: 	std_logic;
signal MEM_branch_indicator	:	std_logic;
signal MEM_read_en				:	std_logic;
signal MEM_write_en				:	std_logic;
signal WB_data_source			:	std_logic_vector(1 downto 0);
signal WB_toRegFile_en			:	std_logic;
	--	signals forwarded to pipeline reg
signal imm							:	std_logic_vector(15 downto 0);
signal nx_pc						:	std_logic_vector(15 downto 0);
	-- others
signal instr_opcode				:	std_logic_vector(5 downto 0);

begin
	-- Extract from IF_DEC pipeline reg
nx_pc				<= IF_DEC_Reg(47 downto 32);
instr_opcode	<= IF_DEC_Reg(31 downto 26);
rsReg				<= IF_DEC_Reg(25 downto 21);
rtReg				<= IF_DEC_Reg(20 downto 16);
imm				<= IF_DEC_Reg(15 downto 0);

regFile: entity work.register_file
    Port map ( 
				write_data 			=>	write_data,		-- data written to Regfile
				read_rs_index 		=>	rsReg,				-- index of rs
				read_rt_index 		=>	rtReg,				-- index of rt
				write_index			=>	write_addr,		--	index of destination reg: either rd (R-Type) or rt (I-Type)
				write_en  			=>	write_en,			-- enable signal for writing data to RegFile
				clk 					=>	clk,					
				rst 					=> rst,
				read_data_1	 		=>	read_data1,		-- rs
				read_data_2 		=>	read_data2);	-- rt

decode_and_control:process(instr_opcode, IF_DEC_Reg)
begin
	case instr_opcode is
		when opAdd 	=>
							EX_alu_op				<= alu_Add;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opAddi =>
							EX_alu_op				<= alu_Add;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rt;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opSub 	=>
							EX_alu_op				<= alu_Sub;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opAnd 	=>
							EX_alu_op				<= alu_And;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opOr 	=>
							EX_alu_op				<= alu_Or;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<= des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opXor 	=>
							EX_alu_op				<= alu_Xor;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opNot 	=>
							EX_alu_op				<= alu_Not;
							EX_alu_src				<= aluSrc_Rt;  -- don't care
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opAndi =>
							EX_alu_op				<= alu_And;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rt;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opXori =>
							EX_alu_op				<= alu_Xor;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rt;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opOri 	=>
							EX_alu_op				<= alu_Or;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rt;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opSll 	=>
							EX_alu_op				<= alu_Sll;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opSrl 	=>
							EX_alu_op				<= alu_Srl;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '1';
		when opLw 	=>
							EX_alu_op				<= alu_Add;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rt;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '1';		-- change
							MEM_write_en			<= '0';
							WB_data_source			<= fromMEM;
							WB_toRegFile_en		<= '1';
		when opSw 	=>
							EX_alu_op				<= alu_Add;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rt;				-- don't care
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '1';
							WB_data_source			<= fromALU; -- don't care
							WB_toRegFile_en		<= '0';		-- disable write back
		when opBeq 	=>
							EX_alu_op				<= alu_Sub;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rt;	-- don't care
							
							MEM_branch_indicator	<= '1';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU; -- don't care
							WB_toRegFile_en		<= '0';		-- disable write back
		when opBne 	=>
							EX_alu_op				<= alu_Sub;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rt;	-- don't care
							
							MEM_branch_indicator	<= '1';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU; -- don't care
							WB_toRegFile_en		<= '0';		-- disable write back
		when opSlt 	=>
							EX_alu_op				<= alu_Sub;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rd;	-- status reg
							
							MEM_branch_indicator	<= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU_lessthan;		-- need to check here
							WB_toRegFile_en		<= '1';
		when opSlti =>
							EX_alu_op				<= alu_Sub;
							EX_alu_src				<= aluSrc_Imm;
							EX_regDes				<=	des_Rt;	-- status reg_
							
							MEM_branch_indicator	<= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU_lessthan;		-- need to check here;
							WB_toRegFile_en		<= '1';
		when others =>																-- prevent unintended latch
							EX_alu_op				<= alu_Add;
							EX_alu_src				<= aluSrc_Rt;
							EX_regDes				<=	des_Rd;
							
							MEM_branch_indicator <= '0';
							MEM_read_en				<= '0';
							MEM_write_en			<= '0';
							WB_data_source			<= fromALU;
							WB_toRegFile_en		<= '0';
	end case;	
end process;
----------------------------------------
	-- update to DEC_EX pipeline register
update_DEC_EX_Reg:process(clk,rst)	
	begin
		if rising_edge(clk) then
			if (rst = '1') then
				DEC_EX_Reg						<= (others => '0');
			else
				DEC_EX_Reg(15 downto 0)		<= imm;
				DEC_EX_Reg(20 downto 16)	<=	rtReg;
				DEC_EX_Reg(36 downto 21)	<=	read_data2;
				DEC_EX_Reg(52 downto 37)	<=	read_data1;
				DEC_EX_Reg(68 downto 53)	<=	nx_pc;
				DEC_EX_Reg(71 downto 69)	<=	EX_alu_op;
				DEC_EX_Reg(72)					<= EX_regDes;
				DEC_EX_Reg(73)					<= EX_alu_src;
				DEC_EX_Reg(74)					<= MEM_write_en;
				DEC_EX_Reg(75)					<= MEM_read_en;
				DEC_EX_Reg(76)					<= MEM_branch_indicator;
				DEC_EX_Reg(78 downto 77)	<= WB_data_source;
				DEC_EX_Reg(79)					<= WB_toRegFile_en;
		end if;
	end if;
end process;
end Behavioral;

