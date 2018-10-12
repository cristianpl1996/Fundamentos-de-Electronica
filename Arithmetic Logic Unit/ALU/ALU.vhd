----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:13 12/04/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Sc2 : in  STD_LOGIC;
           Sc1 : in  STD_LOGIC;
           Sc0 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

	COMPONENT OR1
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT AND1
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Comparador8bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		Big_back : IN std_logic;
		Low_back : IN std_logic;
		Eq_back : IN std_logic;          
		Bigger : OUT std_logic;
		Lower : OUT std_logic;
		Equal : OUT std_logic;
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT SSL
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT SSR
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(7 downto 0)
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
	
	COMPONENT Restador8bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
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
	
	COMPONENT Multiplexor2a1_1bit
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Sc : IN std_logic;          
		S : OUT std_logic
		);
	END COMPONENT;
	
	signal Sig1, Sig2,Sig3,sig4,Sig5,Sig6,Sig7,Sig8,Sig9,Sig10,Sig11,Sig12,Sig13,Sig14: STD_LOGIC_VECTOR (7 downto 0);
	signal Sigo1, Sigo2,Sigo3,sigo4,Sigo5,Sigo6,Sigo7,Sigo8,Sigo9,Sigo10,Sigo11,Sigo12,Sigo13,Sigo14: STD_LOGIC;
	

begin

Inst_OR1: OR1 PORT MAP(
		A => A,
		B => B,
		Cout => Sigo1,
		S => Sig1
	);
	
Inst_AND1: AND1 PORT MAP(
		A => A,
		B => B,
		Cout => Sigo2,
		S => Sig2
	);	
	
Inst_Comparador8bits: Comparador8bits PORT MAP(
		A => A,
		B => B,
		Big_back => '0',
		Low_back => '0',
		Eq_back => '1',
		Lower => Sigo3,
		S => Sig3
	);

Inst_SSL: SSL PORT MAP(
		A => A,
		B => B,
		Cout => Sigo4,
		S => Sig4
	);

Inst_SSR: SSR PORT MAP(
		A => A,
		B => B,
		Cout => Sigo5 ,
		S => Sig5
	);	


	Inst_Sumador8bits: Sumador8bits PORT MAP(
		A => A,
		B => B,
		S => Sig6,
		Cout => Sigo6 
	);
	
	Inst_Restador8bits1: Restador8bits PORT MAP(
		A => A,
		B => B,
		S => Sig7,
		Cout => Sigo7
	);

	Inst_Restador8bits2: Restador8bits PORT MAP(
		A => B,
		B => A,
		S => Sig8,
		Cout => Sigo8
	);
	
	Inst_Multiplexor2a1_8bits1: Multiplexor2a1_8bits PORT MAP(
		A =>Sig1 ,
		B => Sig2,
		Sc => Sc0,
		S => Sig9
	);
	
	Inst_Multiplexor2a1_8bits2: Multiplexor2a1_8bits PORT MAP(
		A => Sig3,
		B => Sig4,
		Sc => Sc0,
		S => Sig10
	);
	
	Inst_Multiplexor2a1_8bits3: Multiplexor2a1_8bits PORT MAP(
		A => Sig5,
		B => Sig6,
		Sc => Sc0,
		S => Sig11
	);
	
	Inst_Multiplexor2a1_8bits4: Multiplexor2a1_8bits PORT MAP(
		A => Sig7,
		B => Sig8,
		Sc => Sc0,
		S => Sig12
	);
	
	Inst_Multiplexor2a1_8bits5: Multiplexor2a1_8bits PORT MAP(
		A => Sig9,
		B => Sig10,
		Sc => Sc1,
		S => Sig13
	);
	
	Inst_Multiplexor2a1_8bits6: Multiplexor2a1_8bits PORT MAP(
		A => Sig11,
		B => Sig12,
		Sc => Sc1,
		S => Sig14
	);
	
	Inst_Multiplexor2a1_8bits7: Multiplexor2a1_8bits PORT MAP(
		A => Sig13,
		B => Sig14,
		Sc => Sc2,
		S => S
	);
	
	Inst_Multiplexor2a1_1bit1: Multiplexor2a1_1bit PORT MAP(
		A =>Sigo1 ,
		B => Sigo2,
		Sc => Sc0,
		S => Sigo9
	);
	
	Inst_Multiplexor2a1_1bit2: Multiplexor2a1_1bit PORT MAP(
		A => Sigo3,
		B => Sigo4,
		Sc => Sc0,
		S => Sigo10
	);
	
	Inst_Multiplexor2a1_1bit3: Multiplexor2a1_1bit PORT MAP(
		A => Sigo5,
		B => Sigo6,
		Sc => Sc0,
		S => Sigo11
	);
	
	Inst_Multiplexor2a1_1bit4: Multiplexor2a1_1bit PORT MAP(
		A => Sigo7,
		B => Sigo8,
		Sc => Sc0,
		S => Sigo12
	);
	
	Inst_Multiplexor2a1_1bit5: Multiplexor2a1_1bit PORT MAP(
		A => Sigo9,
		B => Sigo10,
		Sc => Sc1,
		S => Sigo13
	);
	
	Inst_Multiplexor2a1_1bit6: Multiplexor2a1_1bit PORT MAP(
		A => Sigo11,
		B => Sigo12,
		Sc => Sc1,
		S => Sigo14
	);
	
	Inst_Multiplexor2a1_1bit7: Multiplexor2a1_1bit PORT MAP(
		A => Sigo13,
		B => Sigo14,
		Sc => Sc2,
		S => Cout
	);

end Behavioral;

