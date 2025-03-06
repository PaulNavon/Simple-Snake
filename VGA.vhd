library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity VGA is
	Port(
		CLOCK_50 : in std_logic;
		selAxis : in std_logic;
		StartStop : in std_logic;
		SPI_DI : in std_logic;
		hex0top, hex1top, hex2top, hex3top, hex4top, hex5top : out STD_LOGIC_VECTOR(7 downto 0);
		SPI_DO, SPI_CS, SPI_CK : out std_logic;
		VGA_HS, VGA_VS : out std_logic;
		VGA_R, VGA_G, VGA_B : out std_logic_vector(3 downto 0)
		
	);
End Entity;

Architecture structural of VGA is
 Signal VGACLK : std_logic := '0';

------------------------------------

	Component PLL is
		--Port(
		--	clk_in_clk  : in  std_logic := 'X';
		--	reset_reset : in  std_logic := 'X';
		--	clk_out_clk : out std_logic
		--);
		Port(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		      : OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
		);
	End Component;

------------------------------------
	Component SYNC is
		Port(
			clk, dirXY, resXY, StartStop : in std_logic;
			HSYNC, VSYNC : out std_logic;
			R, G, B : out std_logic_vector(3 downto 0)
		);
	End Component;
	
------------------------------------
   Component top is
		 Port (
			selectAxis, reset, ck50M : in STD_LOGIC;
			SPI_DI : in std_logic;
			hex0top, hex1top, hex2top, hex3top, hex4top, hex5top : out STD_LOGIC_VECTOR(7 downto 0);
			SPI_DO, SPI_CS, SPI_CK, resOut : out std_logic );
	End Component;
	
	Signal resOut : std_logic;
	
Begin

	C1: SYNC port map(VGACLK, selAxis, resOut, StartStop, VGA_HS, VGA_VS, VGA_R, VGA_G, VGA_B);
	C2: PLL  port map(areset => '0',
							inclk0 => CLOCK_50,
							c0		=>  VGACLK);
							
							--locked => );
							
							--CLOCK_50, '0', VGACLK);
	C3: top  port map(selectAxis  => selAxis,
							resOut		=> resOut,
							reset       => '0', 
							ck50M       => CLOCK_50,
							SPI_DI      => SPI_DI,
							hex0top     => hex0top, 
							hex1top     => hex1top,
							hex2top     => hex2top,
							hex3top     => hex3top, 
							hex4top     => hex4top, 
							hex5top     => hex5top,
							SPI_DO      => SPI_DO, 
							SPI_CS      => SPI_CS, 
							SPI_CK      => SPI_CK);

End Architecture;