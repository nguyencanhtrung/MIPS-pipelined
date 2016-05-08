----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
-- 
-- Create Date:    18:08:35 05/07/2016 
-- Design Name: 
-- Module Name:    	core - Behavioral 
-- Project Name: 	 	pipeline CPU
-- Target Devices: 	general platform
-- Tool versions: 	Xilinx ISE 14.7
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use work.all;
use work.globalConst.all;

entity core is
	 Generic (	-- current pwd is in folder contain MEM_instruction.vhd
				file_name		: 	in string := "../software/program.rom";
				inst_mem_size	:	integer	:= 512;
				data_mem_size	:	integer	:= 512);
    Port ( 	clk 						: in  	STD_LOGIC;
				rst 						: in  	STD_LOGIC;
				inst_MEM_addr 			: out  	STD_LOGIC_VECTOR (15 downto 0);
				data_from_inst_mem 	: in  	STD_LOGIC_VECTOR (31 downto 0);
				dataMEM_addr 			: out  	STD_LOGIC_VECTOR (15 downto 0);
				dataMEM_to_CORE 		: inout  STD_LOGIC_VECTOR (15 downto 0));
end core;

architecture Behavioral of core is
	-- IF stage
signal pc_Src 		: 	STD_LOGIC;
signal br_addr		: 	STD_LOGIC_VECTOR (15 downto 0);
signal instruction: 	STD_LOGIC_VECTOR (31 downto 0);
signal pc 			:  STD_LOGIC_VECTOR (15 downto 0);
signal IF_DEC_REG : 	STD_LOGIC_VECTOR (47 downto 0);
	-- ID stage
signal write_data : 	STD_LOGIC_VECTOR (15 downto 0);
signal Reg_Des		: 	STD_LOGIC_VECTOR (4 downto 0);
signal RegFileWr_en : 	STD_LOGIC;
signal DEC_EX_Reg : 	STD_LOGIC_VECTOR (79 downto 0);	
	-- EX stage
signal EX_MEM_Reg : 	STD_LOGIC_VECTOR (60 downto 0);
	-- MEM stage
signal MEM_WB_REG : 	STD_LOGIC_VECTOR (40 downto 0);	
	-- WB stage
signal dataSrc		:	STD_LOGIC_VECTOR(1 downto 0);
signal ALU_result : 	STD_LOGIC_VECTOR (15 downto 0);		-- data is calculated in EXphase
signal lessthan	: 	STD_LOGIC;		
signal read_data	: 	STD_LOGIC_VECTOR (15 downto 0);

begin
	IF_stage: entity work.IF_phase
		Port map ( 
					clk 			=> clk,
					rst 			=> rst,
					pc_Src 		=> pc_Src,
					br_addr		=> br_addr,
					instruction =>	instruction,
					pc 			=> pc,
					IF_DEC_REG 	=> IF_DEC_REG);
	
	Inst_Mem: entity work.MEM_Instruction
		Generic map( 		
					file_name	=> file_name,
					size			=> inst_mem_size)
		Port map (		
					addr 			=>	pc,
					data_out 	=> instruction);
	
	ID_stage: entity work.DEC_phase
		Port map(
					IF_DEC_Reg 	=> IF_DEC_REG,
					write_data 	=> write_data,
					write_addr 	=> Reg_Des, 
					write_en 	=>	RegFileWr_en,
					clk 			=> clk,		
					rst 			=> rst,
					DEC_EX_Reg 	=> DEC_EX_Reg);
		
	EX_stage: entity work.EX_phase
		Port map( 
					DEC_EX_Reg 	=> DEC_EX_Reg,
					clk 			=> clk,
					rst 			=> rst,
					EX_MEM_Reg 	=> EX_MEM_Reg);
	
	MEM_stage: entity work.MEM_phase
		Generic map ( data_mem_size => data_mem_size)
		Port map ( 
					clk 			=> clk,
					rst 			=> rst,
					EX_MEM_REG 	=> EX_MEM_Reg,
					MEM_WB_REG 	=> MEM_WB_REG,
					br_tar_addr	=> br_addr,
					pcSrc			=> pc_Src);
	
	-- WB_stage
	dataSrc				<= MEM_WB_REG(39 downto 38);
	ALU_result 			<= MEM_WB_REG(20 downto 5);		-- data is calculated in EXphase
	lessthan				<= MEM_WB_REG(21);		
	read_data			<= MEM_WB_REG(37 downto 22);		-- data read from MEM
	
	RegFileWr_en		<= MEM_WB_REG(40);
	Reg_Des				<= MEM_WB_REG(4 downto 0);
	write_data			<= ALU_result  when dataSrc = fromALU else
								read_data 	when dataSrc = fromMEM
								else (others => '0');  			-- means lessthan
	
end Behavioral;

