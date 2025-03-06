library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Package MY2 is
	Procedure SQ2(Signal Xcur, Ycur, Xpos, Ypos : in integer;
					 Signal DRAW : out std_logic);
End MY2;

Package BODY MY2 is
	Procedure SQ2(Signal Xcur, Ycur, Xpos, Ypos : in integer;
					 Signal DRAW : out std_logic) is
	Begin
		if((Xcur >= Xpos AND Xcur < (Xpos + 30) AND Ycur >= Ypos AND Ycur < (Ypos + 30)) OR -- main square
			((Xcur >= (Xpos + 5) AND Xcur < (Xpos + 30 - 5))   AND   ((Ycur >= (Ypos - 5) AND Ycur < Ypos)   OR   (Ycur >= (Ypos + 30) AND Ycur < (Ypos + 30 + 5)))) OR -- Left and Right sides
			((Ycur >= (Ypos + 5) AND Ycur < (Ypos + 30 - 5))   AND   ((Xcur >= (Xpos - 5) AND Xcur < Xpos)   OR   (Xcur >= (Xpos + 30) AND Xcur < (Xpos + 30 + 5))))    -- Top and Bottom sides
			) then
			DRAW <= '1';
		else
			DRAW <= '0';
		end if;
	end SQ2;
end MY2;