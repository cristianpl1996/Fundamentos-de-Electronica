----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:28 12/04/2017 
-- Design Name: 
-- Module Name:    Multiplexor2a1_1bit - Behavioral 
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

entity Multiplexor2a1_1bit is

Port ( A : in  STD_LOGIC;
       B : in  STD_LOGIC;
       Sc : in  STD_LOGIC;
       S : out  STD_LOGIC);

end Multiplexor2a1_1bit;

architecture Behavioral of Multiplexor2a1_1bit is

begin

S <= ((not Sc) and A) or (Sc and B);

end Behavioral;

