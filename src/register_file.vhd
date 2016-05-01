----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:13:20 04/08/2016 
-- Design Name: 
-- Module Name:    register_file - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--					Asynchronous Read; Synchronous Write (at the falling edge)
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
    Port ( read_rs_index 		: in  STD_LOGIC_VECTOR (4 downto 0);
           read_rt_index 		: in  STD_LOGIC_VECTOR (4 downto 0);
			  write_data 			: in  STD_LOGIC_VECTOR (15 downto 0);
           write_index			: in  STD_LOGIC_VECTOR (4 downto 0);
           write_en 				: in  STD_LOGIC;
           read_data_1			: out  STD_LOGIC_VECTOR (15 downto 0);
			  read_data_2 			: out  STD_LOGIC_VECTOR (15 downto 0);
			  clk 					: in  STD_LOGIC;
           rst 					: in  STD_LOGIC);
end register_file;

architecture Behavioral of register_file is
type RegFile_size is array (0 to 31) of std_logic_vector(15 downto 0); --32 registers, each 16 bit wide
signal regFile : RegFile_size;
begin
	-- Asynchronous read
read_process: process (read_rs_index, read_rt_index)		
	begin
		read_data_1	<= regFile(to_integer(unsigned(read_rs_index)));
		read_data_2 <= regFile(to_integer(unsigned(read_rt_index)));
end process read_process;

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

