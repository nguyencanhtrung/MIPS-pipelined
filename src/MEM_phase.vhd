----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Student: Trung C. Nguyen
--  
-- Module Name:    MEM_phase - Behavioral 
-- Project Name:   Pipeline CPU
-- Target Devices: General Platform
-- Tool versions:  Xilinx ISE 14.7
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEM_phase is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           EX_MEM_REG : in  STD_LOGIC_VECTOR (60 downto 0);
           MEM_WB_REG : out  STD_LOGIC_VECTOR (40 downto 0));
end MEM_phase;

architecture Behavioral of MEM_phase is

begin


end Behavioral;

