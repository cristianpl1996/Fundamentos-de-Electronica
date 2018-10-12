----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:45 12/04/2017 
-- Design Name: 
-- Module Name:    Sumador8bits - Behavioral 
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

entity Sumador8bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end Sumador8bits;

architecture Behavioral of Sumador8bits is

COMPONENT Sumador_Medio
	PORT(
		A : IN std_logic;
		B : IN std_logic;          
		S : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Sumador_Completo
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Cin : IN std_logic;          
		S : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL X,Y,Z,W,P,U,V: std_logic;

begin

Inst_Sumador_Medio: Sumador_Medio PORT MAP(
		A => A(0) ,
		B => B(0),
		S => S(0),
		Cout => X 
	);
	
Inst_Sumador_Completo1: Sumador_Completo PORT MAP(
		A => A(1) ,
		B => B(1),
		Cin => X,
		S => S(1),
		Cout => Y
	);

Inst_Sumador_Completo2: Sumador_Completo PORT MAP(
		A => A(2) ,
		B => B(2),
		Cin => Y,
		S => S(2),
		Cout => Z
	);	
Inst_Sumador_Completo3: Sumador_Completo PORT MAP(
		A => A(3) ,
		B => B(3),
		Cin => Z,
		S => S(3),
		Cout => W
	);	
Inst_Sumador_Completo4: Sumador_Completo PORT MAP(
		A => A(4) ,
		B => B(4),
		Cin => W,
		S => S(4),
		Cout => P
	);	
Inst_Sumador_Completo5: Sumador_Completo PORT MAP(
		A => A(5) ,
		B => B(5),
		Cin => P,
		S => S(5),
		Cout => U
	);	
Inst_Sumador_Completo6: Sumador_Completo PORT MAP(
		A => A(6) ,
		B => B(6),
		Cin => U,
		S => S(6),
		Cout => V
	);	
Inst_Sumador_Completo7: Sumador_Completo PORT MAP(
		A => A(7) ,
		B => B(7),
		Cin => V,
		S => S(7),
		Cout => Cout
	);		


end Behavioral;