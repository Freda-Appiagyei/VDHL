----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:17 08/18/2021 
-- Design Name: 
-- Module Name:    Decoder_Anode - Behavioral 
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

entity Decoder_Anode is
port
(
AB          : in std_logic_vector(1 downto 0);
Anode_output:out std_logic_vector(3 downto 0)
);
end Decoder_Anode;

architecture Behavioral of Decoder_Anode is

begin
with AB select
Anode_output<="0111" when "00",
              "1011" when "01",
              "1101" when "10",
              "1110" when others;


end Behavioral;

