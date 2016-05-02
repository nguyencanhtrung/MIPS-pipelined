----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
-- 
-- Design Name: 	
-- Module Name:    	MEM_Instruction - Behavioral 
-- Project Name: 		pipeline CPU
-- Target Devices: 	general platform
-- Tool versions: 	Xilinx ISE 14.7
-- Description: 
--		Read-Only memory, Asynchronous read
--		Used in simulation of behavior of pipeline CPU
--		memory word = 32 bits
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

entity MEM_Instruction is
	 Generic ( 		-- current pwd is in folder contain MEM_instruction.vhd
					file_name	:	in string	:= "../software/program.rom";
					size			:	integer 	:= 10;  -- 10 words
					width			:	integer	:= 32);
    Port (		addr 			: in  	STD_LOGIC_VECTOR (15 downto 0);
					data_out 	: out  	STD_LOGIC_VECTOR (31 downto 0));
end MEM_Instruction;

architecture Behavioral of MEM_Instruction is
-- construct to have in_simulation and in_synthesis for generates in this module
	constant in_simulation : boolean := false
	-- synthesis translate_off
	or true
	-- synthesis translate_on
	;
	constant in_synthesis : boolean := not in_simulation;
	-- Create memory type
type memory is array (0 to size - 1) of std_logic_vector(width -1 downto 0);

	-- Function to read the content of a text file
impure function init_mem (file_name : in string) return memory is
    FILE input_file : text open read_mode is in file_name;
    variable file_line : line;
    --variable temp_bv : bit_vector(width-1 downto 0);
    variable temp_mem : memory;
		-- Indicator : read function success value
	 variable good     : boolean;
begin
    for i in memory'range loop
		if not endfile(input_file) then
			  readline(input_file, file_line);
			  --read(target_line, temp_bv);
			  --temp_mem(i) := to_stdlogicvector(temp_bv);
			  hread(file_line, temp_mem(i),good);   -- good can be FALSE or TRUE
					-- give a warning when readline is not good
					-- synthesis translate_off
			  assert good report ("Non-good word in memory location " & integer'image(i)) severity warning; 
				   -- synthesis translate_on
		else
				-- EOF but memory not yet full, fill up with zeros
			temp_mem(i) := (others => '0');
		end if;
    end loop;
	 	-- check if program fit into memory
	 if not endfile(input_file) then
			assert false report "memory not large enough for loaded program." severity failure;
	 end if;
    return temp_mem;
end function;

	-- Initialize ROM -- Loading software program to ROM
constant inst_mem	: memory := init_mem(file_name);

begin
read_data:	process(addr)
begin
	data_out		<=	inst_mem(to_integer(unsigned(addr))); 
end process;
end Behavioral;

