----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:00 12/04/2017 
-- Design Name: 
-- Module Name:    Comparador8bits - Behavioral 
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

entity Comparador8bits is

Port (     A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
			  Big_back : in  STD_LOGIC;
           Low_back : in  STD_LOGIC;
           Eq_back : in  STD_LOGIC;
           Bigger : out  STD_LOGIC;
           Lower : out  STD_LOGIC;
           Equal : out  STD_LOGIC;
			  S : out  STD_LOGIC_VECTOR (7 downto 0)
			  );

end Comparador8bits;

architecture Behavioral of Comparador8bits is

COMPONENT Comparador1bit
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Big_back : IN std_logic;
		Low_back : IN std_logic;
		Eq_back : IN std_logic;          
		Bigger : OUT std_logic;
		Lower : OUT std_logic;
		Equal : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Multiplexor2a1_8bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		Sc : IN std_logic;          
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
signal X,Y,Z, U,V,W, C,D,E, F,G,H, I,J,K, M,N,O, P,Q,R, Sm : STD_LOGIC;

begin

	Inst_Comparador1bit0: Comparador1bit PORT MAP(
		A => A(7),
		B => B(7),
		Big_back => Big_back,
		Low_back => Low_back,
		Eq_back => Eq_back,
		Bigger => X,
		Lower => Y,
		Equal => Z
	);
	
	Inst_Comparador1bit1: Comparador1bit PORT MAP(
		A => A(6),
		B => B(6),
		Big_back => X,
		Low_back => Y,
		Eq_back => Z,
		Bigger => U,
		Lower => V,
		Equal => W
	);
	
	Inst_Comparador1bit2: Comparador1bit PORT MAP(
		A => A(5),
		B => B(5),
		Big_back => U,
		Low_back => V,
		Eq_back => W,
		Bigger => C,
		Lower => D,
		Equal => E
	);
	
	Inst_Comparador1bit3: Comparador1bit PORT MAP(
		A => A(4),
		B => B(4),
		Big_back => C,
		Low_back => D,
		Eq_back => E,
		Bigger => F,
		Lower => G,
		Equal => H
	);
	
	Inst_Comparador1bit4: Comparador1bit PORT MAP(
		A => A(3),
		B => B(3),
		Big_back => F,
		Low_back => G,
		Eq_back => H,
		Bigger => I,
		Lower => J,
		Equal => K
	);
	
	Inst_Comparador1bit5: Comparador1bit PORT MAP(
		A => A(2),
		B => B(2),
		Big_back => I,
		Low_back => J,
		Eq_back => K,
		Bigger => M,
		Lower => N,
		Equal => O 
	);
	
	Inst_Comparador1bit6: Comparador1bit PORT MAP(
		A => A(1),
		B => B(1),
		Big_back => M,
		Low_back => N,
		Eq_back => O,
		Bigger => P,
		Lower => Q,
		Equal => R
	);
	
	Inst_Comparador1bit7: Comparador1bit PORT MAP(
		A => A(0),
		B => B(0),
		Big_back => P,
		Low_back => Q,
		Eq_back => R,
		Bigger => Sm,
		Lower => Lower,
		Equal => Equal
	);
	
		Inst_Multiplexor2a1_8bits: Multiplexor2a1_8bits PORT MAP(
		A =>A ,
		B => B,
		Sc => Sm,
		S => S
	);	

end Behavioral;

