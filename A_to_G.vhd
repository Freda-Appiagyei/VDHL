----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:01:55 08/18/2021 
-- Design Name: 
-- Module Name:    A_to_G - Behavioral 
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

entity A_to_G is

port(
Input : in std_logic_vector(3 downto 0);
S_A_G : out std_logic_vector(6 downto 0)
);
end A_to_G;

architecture Behavioral of A_to_G is

begin
S_A_G<=  "0000001" when Input="0000" else --0
			"1001111" when Input="0001" else --1
			"0010010" when Input="0010" else --2
			"0000110" when Input="0011" else --3
			"1001101" when Input="0100" else --4
			"0100100" when Input="0101" else --5
			"0100000" when Input="0110" else --6
			"0001110" when Input="0111" else --7
			"0000000" when Input="1000" else --8
			"0001100" when Input="1001" else --9
			"0001000" when Input="1010" else --A
			"0000000" when Input="1011" else --B
			"0110001" when Input="1100" else --C
			"0000001" when Input="1101" else --D
			"0110000" when Input="1110" else --E
			"0111000" when Input="1111" else --F
		 --"1101000" when Input="0000" else --16,h
		 --"1001000" when Input="0001" else --17,H
	    --"0011000" when Input="0010" else --18,P
		 --"1000100" when Input="0011" else --19,y
		 --"1110001" when Input="0100" else --20,L
		 --"1111010" when Input="0101" else --21,r
		 --"1101010" when Input="0110" else --22,n
		 --"1100100" when Input="0111" else --23,o
			"0000000";

end Behavioral;

