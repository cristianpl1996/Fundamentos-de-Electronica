
-- VHDL Instantiation Created from source file Comparador1bit.vhd -- 15:51:36 12/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_Comparador1bit: Comparador1bit PORT MAP(
		A => ,
		B => ,
		Big_back => ,
		Low_back => ,
		Eq_back => ,
		Bigger => ,
		Lower => ,
		Equal => 
	);


