LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity leddec2 is
port(
    dig : in std_logic_vector(1 downto 0);
    data : in std_logic_vector(3 downto 0);
    anode : out std_logic_vector(0 to 3); -- changed downto -> to
    seg : out std_logic_vector(0 to 6)); -- changed downto -> to
end leddec2;

architecture Behavioral of leddec2 is

begin
	seg <= "0000001" WHEN data = "0000" ELSE --0
	       "1001111" WHEN data = "0001" ELSE --1
	       "0010010" WHEN data = "0010" ELSE --2
	       "0000110" WHEN data = "0011" ELSE --3
	       "1001100" WHEN data = "0100" ELSE --4
	       "0100100" WHEN data = "0101" ELSE --5
	       "0100000" WHEN data = "0110" ELSE --6
	       "0001111" WHEN data = "0111" ELSE --7
	       "0000000" WHEN data = "1000" ELSE --8
	       "0000100" WHEN data = "1001" ELSE --9
	       "0001000" WHEN data = "1010" ELSE --A
	       "1100000" WHEN data = "1011" ELSE --B
	       "0110001" WHEN data = "1100" ELSE --C
	       "1000010" WHEN data = "1101" ELSE --D
	       "0110000" WHEN data = "1110" ELSE --E
	       "0111000" WHEN data = "1111" ELSE --F
	       "1111111";
	   
    anode <= "0111" WHEN dig = "00" ELSE --0  changed which display is active
	     "1011" WHEN dig = "01" ELSE --1
	     "1101" WHEN dig = "10" ELSE --2
	     "1110" WHEN dig = "11" ELSE --3
	     "1111";
end Behavioral;
