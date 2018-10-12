----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:41 12/04/2017 
-- Design Name: 
-- Module Name:    Multiplexor2a1_8bits - Behavioral 
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

entity Multiplexor2a1_8bits is

	Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
			 B : in  STD_LOGIC_VECTOR (7 downto 0);
			 Sc : in  STD_LOGIC;
			 S : out  STD_LOGIC_VECTOR (7 downto 0));
			  
end Multiplexor2a1_8bits;

architecture Behavioral of Multiplexor2a1_8bits is

COMPONENT Multiplexor2a1_1bit
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Sc : IN std_logic;          
		S : OUT std_logic
		);
	END COMPONENT;

begin

Inst_Multiplexor2a1_1bit0: Multiplexor2a1_1bit PORT MAP(
		A => A(0),
		B => B(0),
		Sc => Sc,
		S => S(0)
	);

Inst_Multiplexor2a1_1bit1: Multiplexor2a1_1bit PORT MAP(
		A => A(1),
		B => B(1),
		Sc => Sc,
		S => S(1)
	);

Inst_Multiplexor2a1_1bit2: Multiplexor2a1_1bit PORT MAP(
		A => A(2),
		B => B(2),
		Sc => Sc,
		S => S(2)
	);

Inst_Multiplexor2a1_1bit3: Multiplexor2a1_1bit PORT MAP(
		A => A(3),
		B => B(3),
		Sc => Sc,
		S => S(3)
	);

Inst_Multiplexor2a1_1bit4: Multiplexor2a1_1bit PORT MAP(
		A => A(4),
		B => B(4),
		Sc => Sc,
		S => S(4)
	);

Inst_Multiplexor2a1_1bit5: Multiplexor2a1_1bit PORT MAP(
		A => A(5),
		B => B(5),
		Sc => Sc,
		S => S(5)
	);

Inst_Multiplexor2a1_1bit6: Multiplexor2a1_1bit PORT MAP(
		A => A(6),
		B => B(6),
		Sc => Sc,
		S => S(6)
	);

Inst_Multiplexor2a1_1bit7: Multiplexor2a1_1bit PORT MAP(
		A => A(7),
		B => B(7),
		Sc => Sc,
		S => S(7)
	);	


end Behavioral;

