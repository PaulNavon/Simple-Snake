library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA_Controller is
    Port ( clk_50, rst : in STD_LOGIC;
		     blank : inout std_logic;
           VGA_HS, VGA_VS : out STD_LOGIC;
           VGA_R, VGA_G, VGA_B  : out STD_LOGIC_VECTOR(3 downto 0));
end VGA_Controller;

architecture Behavioral of VGA_Controller is
	Component controlVGA is
		Port(
			 clk : in std_logic;
			 reset : in std_logic;
			 rIn, gIn, bIn : in std_logic_vector(3 downto 0);
			 rOut, gOut, bOut : out std_logic_vector(3 downto 0);
			 beamX, beamY : out std_logic_vector(9 downto 0);
			 beamValid : out std_logic;
			 blank : inout std_logic;
			 vsync : out std_logic;
			 hsync : out std_logic);
	end Component;
	
	Component square is
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
	end Component;
	
	----- Signaux de transmissions
	--Signal sbeamX, sbeamY : std_logic_vector(9 downto 0);
	--Signal srOut, sgOut, sbOut : std_logic_vector(3 downto 0);
	--Signal sbeamValid : std_logic;
	
	----- Constantes pour les couleurs
	signal R_SQ_LG : std_logic_vector(3 downto 0) := "1011";
	signal G_SQ_LG : std_logic_vector(3 downto 0) := "1111";
	signal B_SQ_LG : std_logic_vector(3 downto 0) := "0101";
	
	signal R_SQ_DG : std_logic_vector(3 downto 0) := "1010";
	signal G_SQ_DG : std_logic_vector(3 downto 0) := "1111";
	signal B_SQ_DG : std_logic_vector(3 downto 0) := "0100";
	
	signal R_snake : std_logic_vector(3 downto 0) := "0100";
	signal G_snake : std_logic_vector(3 downto 0) := "1101";
	signal B_snake : std_logic_vector(3 downto 0) := "0101";
	
	----- Signaux pour les loops
	type SquareColorArray is array (natural range <>, natural range <>) of std_logic_vector(3 downto 0);
	Signal srOutArray : SquareColorArray(0 to 11, 0 to 15);
	Signal sgOutArray : SquareColorArray(0 to 11, 0 to 15);
	Signal sbOutArray : SquareColorArray(0 to 11, 0 to 15);
	
	
	type sBeamArray is array (natural range <>, natural range <>) of std_logic_vector(9 downto 0);
	Signal sbeamXArray : sBeamArray(0 to 11, 0 to 15);
	Signal sbeamYArray : sBeamArray(0 to 11, 0 to 15);
	
	type sBeamVArray is array (natural range <>, natural range <>) of std_logic;
	Signal sbeamValidArray : sBeamVArray(0 to 11, 0 to 15);

	
Begin
    gen_squares: for i in 0 to 11 generate
        other_loop : for j in 0 to 15 generate
            bckgrnd : square port map (
            posX      => std_logic_vector(to_unsigned(i*40, 10)),
            posY      => std_logic_vector(to_unsigned(j*40, 10)),
            red       => R_SQ_LG,
            green     => G_SQ_LG,
            blue      => B_SQ_LG,
            beamX     => sbeamXArray(i, j),
            beamY     => sbeamYArray(i, j),
            beamValid => sbeamValidArray(i, j),
            redOut    => srOutArray(i, j),
            greenOut  => sgOutArray(i, j),
            blueOut   => sbOutArray(i, j));
				
					 bckgrndVGA : controlVGA port map (
            clk       => clk_50,
            reset     => rst,
            rIn       => srOutArray(i, j),
            gIn       => sgOutArray(i, j),
            bIn       => sbOutArray(i, j),
            rOut      => VGA_R,
            gOut      => VGA_G,
            bOut      => VGA_B,
            beamX     => sbeamXArray(i, j),
            beamY     => sbeamYArray(i, j),
            beamValid => sbeamValidArray(i, j),
            blank     => blank,
            vsync     => VGA_VS,
            hsync     => VGA_HS);
        end generate other_loop;
    end generate gen_squares;

	
 
end architecture;
