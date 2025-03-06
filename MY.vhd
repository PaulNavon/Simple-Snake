library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Package MY is
	Procedure SQ(Signal Xcur, Ycur, Xpos, Ypos : in integer;
					 Signal DRAW : out std_logic);
End MY;

Package BODY MY is
	Procedure SQ(Signal Xcur, Ycur, Xpos, Ypos : in integer;
					 Signal DRAW : out std_logic) is
	Begin
		if(Xcur >= Xpos AND Xcur < (Xpos + 160) AND Ycur >= Ypos AND Ycur < (Ypos + 120)) then
			DRAW <= '1';
		else
			DRAW <= '0';
		end if;
	end SQ;
end MY;