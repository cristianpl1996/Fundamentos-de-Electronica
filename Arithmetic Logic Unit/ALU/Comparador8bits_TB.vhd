--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:51:04 12/04/2017
-- Design Name:   
-- Module Name:   C:/Users/fran/Desktop/Proyecto Alu/Proyecto Alu/ALU/Comparador8bits_TB.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparador8bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Comparador8bits_TB IS
END Comparador8bits_TB;
 
ARCHITECTURE behavior OF Comparador8bits_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparador8bits
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Big_back : IN  std_logic;
         Low_back : IN  std_logic;
         Eq_back : IN  std_logic;
         Bigger : OUT  std_logic;
         Lower : OUT  std_logic;
         Equal : OUT  std_logic;
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Big_back : std_logic := '0';
   signal Low_back : std_logic := '0';
   signal Eq_back : std_logic := '0';

 	--Outputs
   signal Bigger : std_logic;
   signal Lower : std_logic;
   signal Equal : std_logic;
   signal S : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparador8bits PORT MAP (
          A => A,
          B => B,
          Big_back => Big_back,
          Low_back => Low_back,
          Eq_back => Eq_back,
          Bigger => Bigger,
          Lower => Lower,
          Equal => Equal,
          S => S
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="11111000";
		B<="00000111";
		Big_back <= '0';
      Low_back <= '0';
      Eq_back <= '1';
		
      wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
