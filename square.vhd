library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity square is
    Port ( 
        posX : in  STD_LOGIC_VECTOR (9 downto 0);
        posY : in  STD_LOGIC_VECTOR (9 downto 0);
        beamX : in  STD_LOGIC_VECTOR (9 downto 0);
        beamY : in  STD_LOGIC_VECTOR (9 downto 0);
        beamValid : in std_logic;
        red : in  STD_LOGIC_VECTOR (3 downto 0);
        green : in  STD_LOGIC_VECTOR (3 downto 0);
        blue : in  STD_LOGIC_VECTOR (3 downto 0);
        redOut : out  STD_LOGIC_VECTOR (3 downto 0);
        greenOut : out  STD_LOGIC_VECTOR (3 downto 0);
        blueOut : out  STD_LOGIC_VECTOR (3 downto 0) 
    );
end entity;

architecture vhdl of square is
    signal newPosX : std_logic_vector(10 downto 0);
    signal newPosY : std_logic_vector(10 downto 0);
    signal sigValid : std_logic;
	

begin
    newPosX <= std_logic_vector(('0'&unsigned(beamX))-('0'&unsigned(posX)));
    newPosY <= std_logic_vector(('0'&unsigned(beamY))-('0'&unsigned(posY)));
	 --sigValid <= '1' when signed(newPosX) >= 0 and signed(newPosX) < 640 and signed(newPosY) >= 0 and signed(newPosY) < 480 and beamValid = '1' else '0';
	 sigValid <= '1' when signed(newPosX) >= posX and signed(newPosX) < std_logic_vector(signed(posX) + 40) and 
								 signed(newPosY) >= posY and signed(newPosY) < std_logic_vector(signed(posY) + 40) and 
								 beamValid = '1' else '0';

    redOut <= red when sigValid = '1' else (others => '0');
    greenOut <= green when sigValid = '1' else (others => '0');
    blueOut <= blue when sigValid = '1' else (others => '0');

end vhdl;
