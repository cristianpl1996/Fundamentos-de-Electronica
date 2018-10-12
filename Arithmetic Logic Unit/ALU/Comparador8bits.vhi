
-- VHDL Instantiation Created from source file Comparador8bits.vhd -- 21:57:34 12/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_Comparador8bits: Comparador8bits PORT MAP(
		A => ,
		B => ,
		Big_back => ,
		Low_back => ,
		Eq_back => ,
		Bigger => ,
		Lower => ,
		Equal => ,
		S => 
	);


