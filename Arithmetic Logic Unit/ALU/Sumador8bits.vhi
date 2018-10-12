
-- VHDL Instantiation Created from source file Sumador8bits.vhd -- 20:30:00 12/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sumador8bits
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

	Inst_Sumador8bits: Sumador8bits PORT MAP(
		A => ,
		B => ,
		S => ,
		Cout => 
	);


