----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:37 08/18/2021 
-- Design Name: 
-- Module Name:    SEG_DISPLAY - Behavioral 
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

entity SEG_DISPLAY is

PORT
(
clk    :in std_logic;
Input1 :in std_logic_vector(7 downto 0);
Input2 :in std_logic_vector(7 downto 0);
anode  :out std_logic_vector(3 downto 0);
ssdec  :out std_logic_vector(6 downto 0)
);
end SEG_DISPLAY;

architecture Behavioral of SEG_DISPLAY is


--segment decoder
component A_to_G 

port(
Input : in std_logic_vector(3 downto 0);
S_A_G : out std_logic_vector(6 downto 0)
);
end component;

--clock divider
component Clock_divider250Hz 
port
(
 clk_50m :in std_logic;
 clk_250 :out std_logic
);
end component;

--2 by 4 anode decoder
component Decoder_Anode 
port
(
AB          : in std_logic_vector(1 downto 0);
Anode_output:out std_logic_vector(3 downto 0)
);
end component;

--Multiplexer
component Multiplexer 
port
(
A,B,C,D: in std_logic_vector(3 downto 0);
Muxoutput      :out std_logic_vector(3 downto 0);
Sel    :in std_logic_vector(1 downto 0)
);
end component;


--Two_bit_counter 
component Two_bit_counter 
port
(
 clk_250:in std_logic;
 count :out std_logic_vector(1 downto 0)
);
end component;

signal muxout:std_logic_vector(3 downto 0);
signal muxsel:std_logic_vector(1 downto 0);
signal clk250:std_logic;


begin
mux1: Multiplexer port map
(
A 		   =>Input1(7 downto 4),
B		   =>Input1(3 downto 0),
C		   =>Input2(7 downto 4),
D		   =>Input2(3 downto 0), 
Muxoutput=>muxout ,
Sel      =>muxsel  
);

Segdecoder:A_to_G 
port map(
Input =>muxout,
S_A_G =>ssdec
);


counter1:Two_bit_counter 
port map
(
 clk_250 =>clk250,
 count   =>muxsel
);

Clkdivider:Clock_divider250Hz 
port map
(
 clk_50m  =>clk,
 clk_250  =>clk250
);


Decoder_Anode1:Decoder_Anode 
port map
(
AB          =>muxsel,
Anode_output=>anode
);

end Behavioral;

