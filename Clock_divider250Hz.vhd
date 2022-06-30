----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:32 08/18/2021 
-- Design Name: 
-- Module Name:    Clock_divider250Hz - Behavioral 
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

entity Clock_divider250Hz is

port
(
 clk_50m :in std_logic;
 clk_250 :out std_logic
);

end Clock_divider250Hz;

architecture Behavioral of Clock_divider250Hz is

signal sig:std_logic_vector(17 downto 0);
begin

dealyprocess:process(clk_50m)
              begin
               if (rising_edge(clk_50m)) then
                sig<=sig +1;
               end if;
             end process;
				 
 clk_250<=sig(17);


end Behavioral;

