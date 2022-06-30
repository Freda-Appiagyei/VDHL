----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:50 08/18/2021 
-- Design Name: 
-- Module Name:    Multiplexer - Behavioral 
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

entity Multiplexer is
port
(
A,B,C,D: in std_logic_vector(3 downto 0);
Muxoutput      :out std_logic_vector(3 downto 0);
Sel    :in std_logic_vector(1 downto 0)
);

end Multiplexer;

architecture Behavioral of Multiplexer is

begin
with sel select
 Muxoutput<=A when "00" ,
				B  when "01" , 
				C when "10" ,
				D when others;


end Behavioral;

