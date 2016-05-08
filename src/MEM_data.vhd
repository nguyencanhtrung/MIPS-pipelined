----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--  
-- Module Name:    MEM_data - Behavioral 
-- Project Name:   pipeline CPU
-- Target Devices: general platform
-- Tool versions:  Xilinx ISE 14.7
-- Description: 
-- 		Synchronous read
--			Synchronous write
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.globalConst.ALL;

entity MEM_data is
	 Generic (
				size			: integer	:= 512;  -- 1 KB
				width			: integer	:= 16
	 );
    Port ( clk 			: in  STD_LOGIC;
			  
			  write_en 		: in  STD_LOGIC;
           addr 			: in  STD_LOGIC_VECTOR (15 downto 0);
			  write_data 	: in  STD_LOGIC_VECTOR (15 downto 0);
           
           read_en 		: in  STD_LOGIC;
           read_data 	: out  STD_LOGIC_VECTOR (15 downto 0));
end MEM_data;

architecture Behavioral of MEM_data is

type memory is array (0 to size - 1) of std_logic_vector(width -1 downto 0);
signal data_mem	:	memory;

begin
read_process: process(clk)
	begin
		if falling_edge(clk) then
			if read_en = '1' then
					-- address is unsigned number (absolute address)
				read_data	<=	data_mem(to_integer(unsigned(addr)));
			else
				read_data	<= (others => '0');
			end if;
		end if;
end process;

write_process: process(clk)
	begin
		if falling_edge(clk) then
			if write_en = '1' then
				data_mem(to_integer(unsigned(addr)))	<=	write_data;
			end if;
		end if;
end process;

end Behavioral;

