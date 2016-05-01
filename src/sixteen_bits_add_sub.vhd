----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Students: Trung C. Nguyen 
-- 
-- Create Date:    04:24:23 03/30/2016 
-- Design Name: 	 ALU unit
-- Module Name:    sixteen_bits_add_sub - Behavioral 
-- Project Name: 	 Pipeline CPU
-- Target Devices: General Platform
-- Tool versions:  Xilinx ISE 14.7
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;
use work.globalConst.all;

entity sixteen_bits_add_sub is
    Port ( operand_a 	: in  STD_LOGIC_VECTOR (15 downto 0);
           operand_b 	: in  STD_LOGIC_VECTOR (15 downto 0);
           mode 			: in  STD_LOGIC;			
           over_flow 	: out  STD_LOGIC;
			  carry_out 	: out  STD_LOGIC;
           result 		: inout  STD_LOGIC_VECTOR (15 downto 0));
end sixteen_bits_add_sub;

architecture Behavioral of sixteen_bits_add_sub is
signal b_feed		: std_logic_vector(15 downto 0);
signal carry_feed	: std_logic;
begin
	b_feed 		<= operand_b 	when mode = ex_opAdd		
						else not(operand_b);					
	carry_feed 	<= '0' 			when mode = ex_opAdd		
						else '1';								
				
	adder: entity work.sixteen_bits_adder
	Port map ( 
			  operand_a => operand_a,
           operand_b => b_feed,
           sum 		=> result,
			  over_flow	=> over_flow,
           carry_in 	=> carry_feed,
           carry_out => carry_out);
	
end Behavioral;

