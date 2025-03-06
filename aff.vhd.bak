--Wassim BEN JABRIA INGE4 SE
--Ajeenshan SIVANTHAM INGE4 SE

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity aff is 
    Port(
        ch0, ch1, ch2, ch3, ch4, ch5 : in STD_LOGIC_VECTOR(3 downto 0);
        hex0, hex1, hex2, hex3, hex4, hex5 : out STD_LOGIC_VECTOR(7 downto 0)
    );
end aff;

architecture vhdl of aff is

begin

	-- segment off with 1 and on with 0
	hex0 <= "11000000" when ch0="0000" else	-- 0
				"11111001" when ch0="0001" else	-- 1
				"10100100" when ch0="0010" else	-- 2
				"10110000" when ch0="0011" else	-- 3
				"10011001" when ch0="0100" else	-- 4
				"10010010" when ch0="0101" else	-- 5
				"10000010" when ch0="0110" else	-- 6
				"11111000" when ch0="0111" else	-- 7
				"10000000" when ch0="1000" else	-- 8
				"10010000" when ch0="1001" else	-- 9
				"10001000" when ch0="1010" else	-- A
				"10000011" when ch0="1011" else	-- b
				"11000110" when ch0="1100" else	-- C
				"10100001" when ch0="1101" else	-- d
				"10000110" when ch0="1110" else	-- E
				"10001110";								-- F
				
		hex1 <= "11000000" when ch1="0000" else	-- 0
				"11111001" when ch1="0001" else	-- 1
				"10100100" when ch1="0010" else	-- 2
				"10110000" when ch1="0011" else	-- 3
				"10011001" when ch1="0100" else	-- 4
				"10010010" when ch1="0101" else	-- 5
				"10000010" when ch1="0110" else	-- 6
				"11111000" when ch1="0111" else	-- 7
				"10000000" when ch1="1000" else	-- 8
				"10010000" when ch1="1001" else	-- 9
				"10001000" when ch1="1010" else	-- A
				"10000011" when ch1="1011" else	-- b
				"11000110" when ch1="1100" else	-- C
				"10100001" when ch1="1101" else	-- d
				"10000110" when ch1="1110" else	-- E
				"10001110";								-- F
				
--		hex2 <= "11000000" when ch2="0000" else	-- 0
--				"11111001" when ch2="0001" else	-- 1
--				"10100100" when ch2="0010" else	-- 2
--				"10110000" when ch2="0011" else	-- 3
--				"10011001" when ch2="0100" else	-- 4
--				"10010010" when ch2="0101" else	-- 5
--				"10000010" when ch2="0110" else	-- 6
--				"11111000" when ch2="0111" else	-- 7
--				"10000000" when ch2="1000" else	-- 8
--				"10010000" when ch2="1001" else	-- 9
--				"10001000" when ch2="1010" else	-- A
--				"10000011" when ch2="1011" else	-- b
--				"11000110" when ch2="1100" else	-- C
--				"10100001" when ch2="1101" else	-- d
--				"10000110" when ch2="1110" else	-- E
--				"10001110";						-- F
				
		hex2 <= "10111111" when ch2 ="1111" else
				  "11111111";
		
		hex3 <= "11000000" when ch3="0000" else	-- 0
				"11111001" when ch3="0001" else	-- 1
				"10100100" when ch3="0010" else	-- 2
				"10110000" when ch3="0011" else	-- 3
				"10011001" when ch3="0100" else	-- 4
				"10010010" when ch3="0101" else	-- 5
				"10000010" when ch3="0110" else	-- 6
				"11111000" when ch3="0111" else	-- 7
				"10000000" when ch3="1000" else	-- 8
				"10010000" when ch3="1001" else	-- 9
				"10001000" when ch3="1010" else	-- A
				"10000011" when ch3="1011" else	-- b
				"11000110" when ch3="1100" else	-- C
				"10100001" when ch3="1101" else	-- d
				"10000110" when ch3="1110" else	-- E
				"10001110";								-- F
				
		hex4 <= "11000000" when ch4="0000" else	-- 0
				"11111001" when ch4="0001" else	-- 1
				"10100100" when ch4="0010" else	-- 2
				"10110000" when ch4="0011" else	-- 3
				"10011001" when ch4="0100" else	-- 4
				"10010010" when ch4="0101" else	-- 5
				"10000010" when ch4="0110" else	-- 6
				"11111000" when ch4="0111" else	-- 7
				"10000000" when ch4="1000" else	-- 8
				"10010000" when ch4="1001" else	-- 9
				"10001000" when ch4="1010" else	-- A
				"10000011" when ch4="1011" else	-- b
				"11000110" when ch4="1100" else	-- C
				"10100001" when ch4="1101" else	-- d
				"10000110" when ch4="1110" else	-- E
				"10001110";								-- F
		
		hex5 <= "11000000" when ch5="0000" else	-- 0
				"11111001" when ch5="0001" else	-- 1
				"10100100" when ch5="0010" else	-- 2
				"10110000" when ch5="0011" else	-- 3
				"10011001" when ch5="0100" else	-- 4
				"10010010" when ch5="0101" else	-- 5
				"10000010" when ch5="0110" else	-- 6
				"11111000" when ch5="0111" else	-- 7
				"10000000" when ch5="1000" else	-- 8
				"10010000" when ch5="1001" else	-- 9
				"10001000" when ch5="1010" else	-- A
				"10000011" when ch5="1011" else	-- b
				"11000110" when ch5="1100" else	-- C
				"10100001" when ch5="1101" else	-- d
				"10000110" when ch5="1110" else	-- E
				"10001110";								-- F

				
end vhdl;