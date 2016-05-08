----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--  
-- Module Name:    MEM_phase - Behavioral 
-- Project Name:   Pipeline CPU
-- Target Devices: General Platform
-- Tool versions:  Xilinx ISE 14.7
-- Description: 
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
--====================================================================
		--Pipeline register MEM_WB_Reg
--		4  - 0 	:	RegDes (rt or rd)
--		20 - 5	: 	ALU_result
--		21			: 	lessthan
--		37 - 22	:	Data from memory
--		39 - 38	: 	DataSrc
--		40			:  RegFileWrE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;
use IEEE.NUMERIC_STD.ALL;

entity MEM_phase is
    Port ( clk 			: in  STD_LOGIC;
           rst 			: in  STD_LOGIC;
           EX_MEM_REG 	: in  STD_LOGIC_VECTOR (60 downto 0);
           MEM_WB_REG 	: out STD_LOGIC_VECTOR (40 downto 0);
			  br_tar_addr	: out	STD_LOGIC_VECTOR(15 downto 0);
			  pcSrc			: out	STD_LOGIC);
end MEM_phase;

architecture Behavioral of MEM_phase is
	-- Forwarding signal
signal RegDes				: 	std_logic_vector(4 downto 0);
signal lessthan			: 	std_logic;
signal RegFileWr_en		: 	std_logic;
signal dataSrc				: 	std_logic_vector(1 downto 0);
	-- Memory interfaces
signal write_en			:	std_logic;
signal read_en				:	std_logic;
signal ALU_result			:	std_logic_vector(15 downto 0);
signal write_data			:	std_logic_vector(15 downto 0);
signal read_data			:	std_logic_vector(15 downto 0);

	-- pc source
signal branch_indicator	: std_logic;
signal zero					: std_logic;
			
begin
		-- Extracting from EX_MEM_REG
	RegDes				<= EX_MEM_REG(4 downto 0);
	write_data 			<= EX_MEM_REG(20 downto 5);  -- STORE MEM(rs+ Imm) = rt
	ALU_result			<= EX_MEM_REG(36 downto 21);
	zero					<= EX_MEM_REG(37);
	lessthan				<= EX_MEM_REG(38);
	br_tar_addr			<= EX_MEM_REG(54 downto 39);
	write_en				<= EX_MEM_REG(55);
	read_en				<= EX_MEM_REG(56);
	branch_indicator	<= EX_MEM_REG(57);
	dataSrc				<= EX_MEM_REG(59 downto 58);
	RegFileWr_en		<= EX_MEM_REG(60);

		-- Data memory
	Mem_data : entity work.MEM_data
		Generic map ( size	=> 512) 		-- 1 KB
		Port map( 
				clk 			 => clk,
				write_en 	 => write_en,
				addr 	 		 => ALU_result,
				write_data 	 => write_data,
				read_en 		 => read_en,
				read_data 	 => read_data);
	-- Branch prediction
	pcSrc	<= zero AND branch_indicator;   -- checking beq and bne

	-- Update MEM_WB_REG
	update_MEM_WB_REG: process(clk, rst)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				MEM_WB_REG					<= (others => '0');
			else
				MEM_WB_REG(4 downto 0)	<= RegDes;
				MEM_WB_REG(20 downto 5)	<= ALU_result;		-- data is calculated in EXphase
				MEM_WB_REG(21)				<= lessthan;		
				MEM_WB_REG(37 downto 22)<= read_data;		-- data read from MEM
				MEM_WB_REG(39 downto 38)<= dataSrc;			-- either: ALU, MEM, lessthan
				MEM_WB_REG(40)				<= RegFileWr_en;
			end if;
		end if;
	end process;
end Behavioral;

