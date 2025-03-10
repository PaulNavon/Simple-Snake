library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Package MY3 is
	Procedure SQ3(Signal Xcur, Ycur, Xpos, Ypos : in integer;
					 Signal DRAW : out std_logic);
End MY3;

Package BODY MY3 is
	Procedure SQ3(Signal Xcur, Ycur, Xpos, Ypos : in integer;
					 Signal DRAW : out std_logic) is
	Begin
		if(Xcur >= Xpos AND Xcur < (Xpos + 60) AND Ycur >= Ypos AND Ycur < (Ypos + 60)) then
			DRAW <= '1';
		else
			DRAW <= '0';
		end if;
	end SQ3;
end MY3;