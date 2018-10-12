----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:33 12/04/2017 
-- Design Name: 
-- Module Name:    Comparador1bit - Behavioral 
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

entity Comparador1bit is

Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Big_back : in  STD_LOGIC;
           Low_back : in  STD_LOGIC;
           Eq_back : in  STD_LOGIC;
           
			Bigger : out  STD_LOGIC;
           Lower : out  STD_LOGIC;
           Equal : out  STD_LOGIC);

end Comparador1bit;

architecture Behavioral of Comparador1bit is

begin

Bigger <= Big_back or (Eq_back and (A and not(B)));
Lower <= Low_back or (Eq_back and (not(A) and (B)));
Equal <= Eq_back  and (A xnor B);

end Behavioral;

