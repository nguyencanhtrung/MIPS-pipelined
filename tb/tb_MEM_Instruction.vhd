--------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--
 
-- Module Name:   /home/ctnguyen/Works/pipelineCPU/tb/tb_MEM_Instruction.vhd
-- Project Name:   pipelineCPU
-- Target Device:  
-- Tool versions:  
-- Description:   
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_MEM_Instruction IS
END tb_MEM_Instruction;
 
ARCHITECTURE behavior OF tb_MEM_Instruction IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEM_Instruction
	 GENERIC( 		-- current pwd is in folder contain MEM_instruction.vhd
					file_name	:	in string	:= "../software/tb_MEM_instr.rom";
					size			:	integer 	:= 10;  -- 10 words
					width			:	integer	:= 32);
    PORT(
					addr 			: IN  std_logic_vector(15 downto 0);
					data_out 	: OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEM_Instruction 
	GENERIC MAP(file_name => "../software/tb_MEM_instr.rom")
	PORT MAP (
          addr => addr,
          data_out => data_out
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		for i in 0 to 9 loop
			addr 	<=	std_logic_vector(to_unsigned(i,16));
			wait for 10 ns;
      end loop;
		
		assert false report "Simulation Successful" severity failure;

   end process;

END;
