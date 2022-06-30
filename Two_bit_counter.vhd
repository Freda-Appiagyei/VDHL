----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:55 08/18/2021 
-- Design Name: 
-- Module Name:    Two_bit_counter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Two_bit_counter is
port
(
 clk_250:in std_logic;
 count :out std_logic_vector(1 downto 0)
);
end Two_bit_counter;


architecture Behavioral of Two_bit_counter is
signal countsig: std_logic_vector(1 downto 0);
begin
 
process (clk_250,countsig)
begin
 if(rising_edge(clk_250)) then 
  countsig<=countsig+1;
 end if;
end process;

count<=countsig;

end Behavioral;

