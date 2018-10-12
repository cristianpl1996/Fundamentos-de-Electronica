
-- VHDL Instantiation Created from source file SSR.vhd -- 20:28:30 12/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SSR
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_SSR: SSR PORT MAP(
		A => ,
		B => ,
		Cout => ,
		S => 
	);


