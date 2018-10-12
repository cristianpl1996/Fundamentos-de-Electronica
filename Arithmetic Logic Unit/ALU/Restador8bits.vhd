----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:48 12/04/2017 
-- Design Name: 
-- Module Name:    Restador8bits - Behavioral 
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

entity Restador8bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end Restador8bits;

architecture Behavioral of Restador8bits is

COMPONENT Ca2
	PORT(
		X : IN std_logic_vector(7 downto 0);          
		Xa2 : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

COMPONENT Sumador8bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;	
	
	
Signal AUX:	std_logic_vector(7 downto 0);
	


begin

Inst_Ca2: Ca2 PORT MAP(
		X => B,
		Xa2 => AUX
	);

Inst_Sumador8bits: Sumador8bits PORT MAP(
		A => A,
		B => AUX,
		S => S,
		Cout =>Cout
	);	
	

	

end Behavioral;