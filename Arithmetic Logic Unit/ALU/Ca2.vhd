----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:27 12/04/2017 
-- Design Name: 
-- Module Name:    Ca2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity Ca2 is
    Port ( X : in  STD_LOGIC_VECTOR(7 downto 0);
           Xa2 : out  STD_LOGIC_VECTOR(7 downto 0));
end Ca2;

architecture Behavioral of Ca2 is

	COMPONENT Sumador8bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

begin

Inst_Sumador8bits: Sumador8bits PORT MAP(
		A => NOT X,
		B => "00000001",
		S => Xa2
	);

end Behavioral;