library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my.all;
use work.my2.all;
use work.my3.all;
use work.my4.all;

Entity SYNC is
	Port(
		clk, dirXY, resXY, StartStop : in std_logic;
		HSYNC, VSYNC : out std_logic;
		R, G, B : out std_logic_vector(3 downto 0)
	);
End Entity;

Architecture main of SYNC is

 Signal Rc, Gc, Bc : std_logic_vector(3 downto 0);
 
 -------------------- Permissions to draw --------------------
 Signal DRAW1, DRAW2, DRAW3, DRAW4, DRAW5, DRAW6, DRAW7, DRAW8, DRAW9 : std_logic;
 Signal DRAW10, DRAW11, DRAW12, DRAW13, DRAW14, DRAW15, DRAW16 : std_logic;
 
 -------------------- Cells' patterns --------------------
 Signal SQ_X1, SQ_Y1 : integer range 0 to 799 := 0;
 Signal SQ_X2, SQ_Y2 : integer range 0 to 799 := 0;
 Signal SQ_X3, SQ_Y3 : integer range 0 to 799 := 0;
 Signal SQ_X4, SQ_Y4 : integer range 0 to 799 := 0;
 Signal SQ_X5, SQ_Y5 : integer range 0 to 799 := 0;
 Signal SQ_X6, SQ_Y6 : integer range 0 to 799 := 0;
 Signal SQ_X7, SQ_Y7 : integer range 0 to 799 := 0;
 Signal SQ_X8, SQ_Y8 : integer range 0 to 799 := 0;
 Signal SQ_X9, SQ_Y9 : integer range 0 to 799 := 0;
 Signal SQ_X10, SQ_Y10 : integer range 0 to 799 := 0;
 Signal SQ_X11, SQ_Y11 : integer range 0 to 799 := 0;
 Signal SQ_X12, SQ_Y12 : integer range 0 to 799 := 0;
 Signal SQ_X13, SQ_Y13 : integer range 0 to 799 := 0;
 Signal SQ_X14, SQ_Y14 : integer range 0 to 799 := 0;
 Signal SQ_X15, SQ_Y15 : integer range 0 to 799 := 0;
 Signal SQ_X16, SQ_Y16 : integer range 0 to 799 := 0;
 
  -------------------- Manage Center cells --------------------
 constant Row1: integer := 60;
 constant Row2: integer := 180;
 constant Row3: integer := 300;
 constant Row4: integer := 420;
 constant Column1: integer := 80;
 constant Column2: integer := 240;
 constant Column3: integer := 400;
 constant Column4: integer := 560;
 
 constant MinX: integer := 145;
 constant MinY: integer := 36;
 
 -------------------- Apple's pattern --------------------
 constant SizeAPPDiv2: integer := 15;
 Signal APP_X : integer range 0 to 799 := MinX + Column3 - SizeAPPDiv2;
 Signal APP_Y : integer range 0 to 799 := MinY  + Row3 - SizeAPPDiv2;
 Signal DRAW_APP : std_logic;
 
 -------------------- Snake's pattern --------------------
 constant SizeSNDiv2: integer := 30;
 Signal SN_X : integer range 0 to 799 := 145 + 80 - SizeSNDiv2;
 Signal SN_Y : integer range 0 to 799 := 36  + 60 - SizeSNDiv2;
 Signal DRAW_SN : std_logic;
 
 
 Signal HPOS: integer range 0 to 799 :=0;
 Signal VPOS: integer range 0 to 799 :=0;
 
 
 -------------------- Colors --------------------
 constant R_SQ_LG : std_logic_vector(3 downto 0) := "1011";
 constant G_SQ_LG : std_logic_vector(3 downto 0) := "1111";
 constant B_SQ_LG : std_logic_vector(3 downto 0) := "0101";

 constant R_SQ_DG : std_logic_vector(3 downto 0) := "0101";
 constant G_SQ_DG : std_logic_vector(3 downto 0) := "1101";
 constant B_SQ_DG : std_logic_vector(3 downto 0) := "1000";

 constant R_snake : std_logic_vector(3 downto 0) := "0001";
 constant G_snake : std_logic_vector(3 downto 0) := "0111";
 constant B_snake : std_logic_vector(3 downto 0) := "0100";
 
 constant R_apple : std_logic_vector(3 downto 0) := "1111";
 constant G_apple : std_logic_vector(3 downto 0) := "0000";
 constant B_apple : std_logic_vector(3 downto 0) := "0000";
 
 -------------------- 1sec Clock --------------------
 signal second_counter : integer range 0 to 24_999_999 := 0;
 signal clk_1Hz : std_logic;
 
 -------------------- Random number --------------------
 Component RandomNumberGenerator is
	 Port ( clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  en : in STD_LOGIC;
			  position : in INTEGER range 1 to 16;
			  random_output : out INTEGER range 1 to 16
			  );
 end Component;
 
 signal result_random : integer range 1 to 16;
 signal cell_position : integer range 1 to 16;
 signal en : std_logic := '0';
 
 -------------------- Score --------------------
 Signal DRAW_SCORE : std_logic;
 Signal Points : integer range 0 to 5 := 0;
 signal boolP : std_logic := '1';
 Begin
  
  SQ_X1 <= 145;
  SQ_Y1 <= 36;
  SQ(HPOS, VPOS, SQ_X1, SQ_Y1, DRAW1);
  
  SQ_X2 <= 305;
  SQ_Y2 <= 36;
  SQ(HPOS, VPOS, SQ_X2, SQ_Y2, DRAW2);
  
  SQ_X3 <= 465;
  SQ_Y3 <= 36;
  SQ(HPOS, VPOS, SQ_X3, SQ_Y3,DRAW3);
  
  SQ_X4 <= 625;
  SQ_Y4 <= 36;
  SQ(HPOS, VPOS, SQ_X4, SQ_Y4, DRAW4);
  
  SQ_X5 <= 145;
  SQ_Y5 <= 156;
  SQ(HPOS, VPOS, SQ_X5, SQ_Y5, DRAW5);
  
  SQ_X6 <= 305;
  SQ_Y6 <= 156;
  SQ(HPOS, VPOS, SQ_X6, SQ_Y6, DRAW6);
  
  SQ_X7 <= 465;
  SQ_Y7 <= 156;
  SQ(HPOS, VPOS, SQ_X7, SQ_Y7, DRAW7);
  
  SQ_X8 <= 625;
  SQ_Y8 <= 156;
  SQ(HPOS, VPOS, SQ_X8, SQ_Y8, DRAW8);
  
  SQ_X9 <= 145;
  SQ_Y9 <= 276;
  SQ(HPOS, VPOS, SQ_X9, SQ_Y9, DRAW9);
  
  SQ_X10 <= 305;
  SQ_Y10 <= 276;
  SQ(HPOS, VPOS, SQ_X10, SQ_Y10, DRAW10);
  
  SQ_X11 <= 465;
  SQ_Y11 <= 276;
  SQ(HPOS, VPOS, SQ_X11, SQ_Y11, DRAW11);
  
  SQ_X12 <= 625;
  SQ_Y12 <= 276;
  SQ(HPOS, VPOS, SQ_X12, SQ_Y12, DRAW12);
  
  SQ_X13 <= 145;
  SQ_Y13 <= 396;
  SQ(HPOS, VPOS, SQ_X13, SQ_Y13, DRAW13);
  
  SQ_X14 <= 305;
  SQ_Y14 <= 396;
  SQ(HPOS, VPOS, SQ_X14, SQ_Y14, DRAW14);
  
  SQ_X15 <= 465;
  SQ_Y15 <= 396;
  SQ(HPOS, VPOS, SQ_X15, SQ_Y15, DRAW15);
  
  SQ_X16 <= 625;
  SQ_Y16 <= 396;
  SQ(HPOS, VPOS, SQ_X16, SQ_Y16, DRAW16);
  
  rnd_NB: RandomNumberGenerator port map (clk => clk_1Hz,
														reset => '0',
														en => en,
														position => cell_position,
														random_output => result_random);
														
  clk_1Hz <= '1' when second_counter = 24_999_999 else '0';
  
  process(clk)
    begin
	 

        if rising_edge(clk) then
			  
			  if(result_random = cell_position) then
					en <= '1';
					
					if(boolP = '0') then
						Points <= (Points + 1) mod 6;
						boolP <= '1';
					end if;
					
				else
					en <= '0';
					boolP <= '0';
				end if;
				
					
            if (second_counter = 24_999_999) then
				
					if(StartStop = '1')then
					
						case result_random is
							when 1 =>
								APP_X <= MinX + Column1 - SizeAPPDiv2;
								APP_Y <= MinY + Row1    - SizeAPPDiv2;
							when 2 =>
								APP_X <= MinX + Column2 - SizeAPPDiv2;
								APP_Y <= MinY + Row1    - SizeAPPDiv2;
							when 3 =>
								APP_X <= MinX + Column3 - SizeAPPDiv2;
								APP_Y <= MinY + Row1    - SizeAPPDiv2;
							when 4 =>
								APP_X <= MinX + Column4 - SizeAPPDiv2;
								APP_Y <= MinY + Row1    - SizeAPPDiv2;
							when 5 =>
								APP_X <= MinX + Column1 - SizeAPPDiv2;
								APP_Y <= MinY + Row2    - SizeAPPDiv2;
							when 6 =>
								APP_X <= MinX + Column2 - SizeAPPDiv2;
								APP_Y <= MinY + Row2    - SizeAPPDiv2;
							when 7 =>
								APP_X <= MinX + Column3 - SizeAPPDiv2;
								APP_Y <= MinY + Row2    - SizeAPPDiv2;
							when 8 =>
								APP_X <= MinX + Column4 - SizeAPPDiv2;
								APP_Y <= MinY + Row2    - SizeAPPDiv2;
							when 9 =>
								APP_X <= MinX + Column1 - SizeAPPDiv2;
								APP_Y <= MinY + Row3    - SizeAPPDiv2;
							when 10 =>
								APP_X <= MinX + Column2 - SizeAPPDiv2;
								APP_Y <= MinY + Row3    - SizeAPPDiv2;
							when 11 =>
								APP_X <= MinX + Column3 - SizeAPPDiv2;
								APP_Y <= MinY + Row3    - SizeAPPDiv2;
							when 12 =>
								APP_X <= MinX + Column4 - SizeAPPDiv2;
								APP_Y <= MinY + Row3    - SizeAPPDiv2;
							when 13 =>
								APP_X <= MinX + Column1 - SizeAPPDiv2;
								APP_Y <= MinY + Row4    - SizeAPPDiv2;
							when 14 =>
								APP_X <= MinX + Column2 - SizeAPPDiv2;
								APP_Y <= MinY + Row4    - SizeAPPDiv2;
							when 15 =>
								APP_X <= MinX + Column3 - SizeAPPDiv2;
								APP_Y <= MinY + Row4    - SizeAPPDiv2;
							when 16 =>
								APP_X <= MinX + Column4 - SizeAPPDiv2;
								APP_Y <= MinY + Row4    - SizeAPPDiv2;
							when others =>
								APP_X <= MinX + Column1 - SizeAPPDiv2;
								APP_Y <= MinY + Row1    - SizeAPPDiv2;
						end case;
						
				
					
						if(MinX < SN_X AND  SN_X < (MinX + Column1)) then
						
							if(MinY < SN_Y AND SN_Y < (MinY + Row1)) then
								cell_position <= 1;
								
							elsif ((MinY + Row1) < SN_Y AND SN_Y < (MinY + Row2)) then
								cell_position <= 5;
								
							elsif ((MinY + Row2) < SN_Y AND SN_Y < (MinY + Row3)) then
								cell_position <= 9;
								
							elsif ((MinY + Row3) < SN_Y AND SN_Y < (MinY + Row4)) then
								cell_position <= 13;
							end if;
							
						elsif ((MinX + Column1) < SN_X AND  SN_X < (MinX + Column2)) then
						 
							if(MinY < SN_Y AND SN_Y < (MinY + Row1)) then
								cell_position <= 2;
								
							elsif ((MinY + Row1) < SN_Y AND SN_Y < (MinY + Row2)) then
								cell_position <= 6;
								
							elsif ((MinY + Row2) < SN_Y AND SN_Y < (MinY + Row3)) then
								cell_position <= 10;
								
							elsif ((MinY + Row3) < SN_Y AND SN_Y < (MinY + Row4)) then
								cell_position <= 14;
							end if;
							
						elsif ((MinX + Column2) < SN_X AND  SN_X < (MinX + Column3)) then
						
							if(MinY < SN_Y AND SN_Y < (MinY + Row1)) then
								cell_position <= 3;
								
							elsif ((MinY + Row1) < SN_Y AND SN_Y < (MinY + Row2)) then
								cell_position <= 7;
								
							elsif ((MinY + Row2) < SN_Y AND SN_Y < (MinY + Row3)) then
								cell_position <= 11;
								
							elsif ((MinY + Row3) < SN_Y AND SN_Y < (MinY + Row4)) then
								cell_position <= 15;
							end if;
							
						elsif ((MinX + Column3) < SN_X AND  SN_X < (MinX + Column4)) then
						
							if(MinY < SN_Y AND SN_Y < (MinY + Row1)) then
								cell_position <= 4;
								
							elsif ((MinY + Row1) < SN_Y AND SN_Y < (MinY + Row2)) then
								cell_position <= 8;
								
							elsif ((MinY + Row2) < SN_Y AND SN_Y < (MinY + Row3)) then
								cell_position <= 12;
								
							elsif ((MinY + Row3) < SN_Y AND SN_Y < (MinY + Row4)) then
								cell_position <= 16;
							end if;
							
						end if;
						
					
						-- 0 means X axis 
						if(dirXY = '0') then
							-- 0 means Positive and 1 Negative
							if(resXY = '0') then 
							
								-- Decrease X postion
								if(SN_X > (MinX + Column1 - SizeSNDiv2)) then
									SN_X <= SN_X - 160;
								end if;
							else
							
								-- Increase X postion
								if(SN_X < (MinX + Column4 - SizeSNDiv2)) then
									SN_X <= SN_X + 160;
								end if;
								
							end if;
							
						-- 1 means Y axis
						else
						
							-- 0 means Positive and 1 Negative
							if(resXY = '0') then 
							
								-- Increase Y postion
								if(SN_Y < (MinY + Row4 - SizeSNDiv2)) then
									SN_Y <= SN_Y + 120;
								end if;
							
							else
								-- Decrease Y postion
								if(SN_Y > (MinY + Row1 - SizeSNDiv2)) then
									SN_Y <= SN_Y - 120;
								end if;
								
							end if;
						end if;
						
					-- end StartStop
					end if;
                second_counter <= 0;
            else
                second_counter <= second_counter + 1;
            end if;
        end if;
    end process;
  
  --APP_X <= MinX + Column1 - SizeAPPDiv2;
  --APP_Y <= MinY + Row1    - SizeAPPDiv2;
  SQ2(HPOS, VPOS, APP_X, APP_Y, DRAW_APP);
  
  --SN_X <= MinX + Column1 - SizeSNDiv2;
  --SN_Y <= MinY + Row2    - SizeSNDiv2;
  SQ3(HPOS, VPOS, SN_X, SN_Y, DRAW_SN);
  SQ4(HPOS, VPOS, Points, MinX, MinY, DRAW_SCORE);
  
	Process(clk)
	Begin
			
		if(clk'event AND clk = '1') then
	
		------------------------------- Patterns to draw -------------------------------
			if(DRAW1 = '1' OR DRAW3 = '1'  OR
				DRAW6 = '1' OR DRAW8 = '1'  OR
				DRAW9 = '1' OR DRAW11 = '1' OR
				DRAW14 = '1' OR DRAW16 = '1') then
				
				if(DRAW_SN = '1') then
					Rc<= R_snake;
					Gc<= G_snake;
					Bc<= B_snake;
				else
					if(DRAW_APP = '1') then
						Rc<= R_apple;
						Gc<= G_apple;
						Bc<= B_apple;
					else
						Rc<= R_SQ_LG;
						Gc<= G_SQ_LG;
						Bc<= B_SQ_LG;
					end if;
				end if;

			end if;
			
			if(DRAW2 = '1' OR DRAW4 = '1'   OR
				DRAW5 = '1' OR DRAW7 = '1'   OR
				DRAW10 = '1' OR DRAW12 = '1' OR
				DRAW13 = '1' OR DRAW15 = '1') then 

				if(DRAW_SCORE = '1') then

					Rc<= (others => '0');
					Gc<= (others => '0');
					Bc<= (others => '0');

				elsif(DRAW_SN = '1') then
					Rc<= R_snake;
					Gc<= G_snake;
					Bc<= B_snake;
				else
					if(DRAW_APP = '1') then
						Rc<= R_apple;
						Gc<= G_apple;
						Bc<= B_apple;
					else
						Rc<= R_SQ_DG;
						Gc<= G_SQ_DG;
						Bc<= B_SQ_DG;
					end if;
				end if;
				
			end if;

			if(DRAW1 = '0' AND DRAW2 = '0' AND DRAW3 = '0' AND DRAW4 = '0'     AND
				DRAW5 = '0' AND DRAW6 = '0' AND DRAW7 = '0' AND DRAW8 = '0'     AND
				DRAW9 = '0' AND DRAW10 = '0' AND DRAW11 = '0' AND DRAW12 = '0'  AND
				DRAW13 = '0' AND DRAW14 = '0' AND DRAW15 = '0' AND DRAW16 = '0' AND
				DRAW_APP = '0' AND DRAW_SN = '0' AND DRAW_SCORE = '0') then
				Rc <= (others =>'0');
				Gc <= (others =>'0');
				Bc <= (others =>'0');
			end if;
			------------------------------- Patterns to draw -------------------------------
			
				
		   --------------- Definition des pixels ---------------
			if(HPOS < 799) then
				HPOS <= HPOS + 1;
			else
				HPOS <= 0;
				if(VPOS < 525) then
					VPOS <= VPOS + 1;
				else
					VPOS <= 0;
				end if;
			end if;
			--------------- Definition des pixels ---------------
		end if;
		
		
		
		-- Check HPOS for HSYNC and VPOS for VSYNC --
		if(HPOS >= 0 AND HPOS < 96) then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
		if(VPOS >= 0 AND VPOS < 2) then
			VSYNC <= '1';
		else
			VSYNC <= '0';
		end if;
		---------------------------------------------

		
		-- Adapt RGB state when Hsync and Vsync not on pixels --
		if(HPOS > 144 AND HPOS <= 783 AND VPOS > 35 AND VPOS <= 514) then
			R <= Rc;
			G <= Gc;
			B <= Bc;
		else
			R <= (others =>'0');
			G <= (others =>'0');
			B <= (others =>'0');
		end if;
		-------------------------------------------------------
		
	end process;
end architecture;