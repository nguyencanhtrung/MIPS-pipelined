----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
-- 
-- Create Date:    00:13:20 04/08/2016 
-- Design Name: 
-- Module Name:    register_file - Behavioral 
-- Project Name:   pipelineCPU
-- Target Devices: 
-- Tool versions:  ISE 14.7
-- Description: 
--		Register File is a set of 32 16-bit registers
--		READ/WRITE on register file:
--				-	Asynchronous Read; 
--				-	Synchronous Write (at the falling edge)
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

entity register_file is
	 Generic (REG_WIDTH			: integer := 16;
				 REG_FILE_SIZE		: integer := 32);
    Port ( read_rs_index 		: in  STD_LOGIC_VECTOR (4 downto 0);
           read_rt_index 		: in  STD_LOGIC_VECTOR (4 downto 0);
			  write_data 			: in  STD_LOGIC_VECTOR (REG_WIDTH - 1 downto 0);
           write_index			: in  STD_LOGIC_VECTOR (4 downto 0);
           write_en 				: in  STD_LOGIC;
           read_data_1			: out  STD_LOGIC_VECTOR (REG_WIDTH - 1 downto 0);
			  read_data_2 			: out  STD_LOGIC_VECTOR (REG_WIDTH - 1 downto 0);
			  clk 					: in  STD_LOGIC;
           rst 					: in  STD_LOGIC);
end register_file;

architecture Behavioral of register_file is
type memory is array (0 to REG_FILE_SIZE - 1) of std_logic_vector(REG_WIDTH - 1 downto 0); --32 registers, each 16 bit wide
signal regFile : memory;
begin
	-- Asynchronous read
	read_data_1	<= regFile(to_integer(unsigned(read_rs_index)));
	read_data_2 <= regFile(to_integer(unsigned(read_rt_index)));
	
	-- Synchronous write
write_process: process (clk, rst)
begin
	if falling_edge (clk) then
		if rst ='1' then
			regFile <= (others => (others=>'0'));		--synch reset
		else
			if write_en ='1' then
					regFile(to_integer(unsigned(write_index))) <= write_data;
			end if;
		end if;
	end if;
end process write_process;

end Behavioral;

