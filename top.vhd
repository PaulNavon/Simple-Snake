library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
		selectAxis, reset, ck50M : in STD_LOGIC;
		SPI_DI : in std_logic;
		hex0top, hex1top, hex2top, hex3top, hex4top, hex5top : out STD_LOGIC_VECTOR(7 downto 0);
		SPI_DO, SPI_CS, SPI_CK, resOut : out std_logic );
end top;

architecture vhdl of top is

	-- 7 segments display driver
	Component aff is 
		port(
			ch0, ch1, ch2, ch3, ch4, ch5 : IN STD_LOGIC_VECTOR(3 downto 0);
			hex0, hex1, hex2, hex3, hex4, hex5 : out STD_LOGIC_VECTOR(7 downto 0)
		);
	end Component; 
	
	-- SPI (accelerometer) driver
	Component accelero is
    Port (
		reset, ck50M : in STD_LOGIC;
		start : in std_logic;
		ready : out std_logic;
		Address, wValue : in STD_LOGIC_VECTOR(7 downto 0);
		result_reg : inout STD_LOGIC_VECTOR(7 downto 0);
		SPI_DI : in std_logic;
		SPI_DO, SPI_CS, SPI_CK : out std_logic );
	end Component; 

	
	-- accelero SPI Interface signals
	signal start, ready : std_logic;
	signal address, result, wvalue : std_logic_vector(7 downto 0);
		
	-- save registers for Accelerometer
	signal reg0, reg0_mux, reg1, reg1_mux, reg2, reg2_mux, bufferResult : std_logic_vector(7 downto 0);
	
	
	-- FSM Signals
	type state is (
		INIT,
		INIT_SPI,
		INIT_measure,
		READ_LSB,
		SAVE_LSB,
		READ_MSB,
		SAVE_MSB,
		READ_ID,
		SAVE_ID
	);
	signal currentState, nextState : state;



begin

	-- instanciate 7 segments display
	iaff : aff port map(
		hex0 => hex0top, 
		hex1 => hex1top, 
		hex2 => hex2top, 
		--hex3 => hex3top, 
		hex4 => hex4top, 
		hex5 => hex5top, 
		ch0 => reg1(3 downto 0), 
		ch1 => reg1(7 downto 4), 
		ch2 => reg2(3 downto 0), 
		ch3 => reg2(7 downto 4), 
		ch4 => reg0(3 downto 0), 
		ch5 => reg0(7 downto 4)
	);
	
	-- 1 for negatvi / 0 for positiv
	resOut <= '1' when reg2(3 downto 0) = "1111" else '0';
	
	-- instanciate SPI Driver
	iacc : accelero port map (
		reset,
		ck50M,
		start,
		ready,
		address,
		wvalue,
		result,
		SPI_DI,
		SPI_DO,
		SPI_CS,
		SPI_CK
	);
	

	process(currentState, selectAxis, ready, reg0, reg1, reg2, result, bufferResult)
	begin
		nextState <= currentState;
		
		wvalue <= x"00";
		reg0_mux <= reg0;
		reg1_mux <= reg1;
		reg2_mux <= reg2;
		bufferResult <= result;
		if(selectAxis = '0') then
			hex3top <= "10001001";	
		else
			hex3top <= "10010001";
		end if;
		
		case currentState is
			when INIT => 
				start <= '0';
				if(ready = '1')then
					start <= '1';
					address <= x"31";
					wvalue <= x"00";
					nextState <= INIT_SPI;
				end if;
				
			when INIT_SPI =>
				start <= '0';
				address <= x"31";
				wvalue <= x"03";
				if(ready = '1') then
					start <= '1';
					address <= x"2D";
					wvalue <= x"08";
					nextState <= INIT_MEASURE;						
				end if;
				
			when INIT_measure =>
				start <= '0';
				address <= x"2D";
				wvalue <= x"08";
				if (ready = '1') then
				   start <= '1';
					if(selectAxis = '0') then
						address <= x"32";
					else
						address <= x"34";
					end if;
					nextState <=READ_LSB;
				end if;
				
				
			when READ_LSB =>
				start <= '0';
				if(selectAxis = '0') then
					address <= x"32";
				else
					address <= x"34";
				end if;
				
				if(ready = '1') then
					nextState <= SAVE_LSB;
				end if;
				
			when SAVE_LSB =>
				reg0_mux <= bufferResult;
				if(selectAxis = '0') then
						address <= x"33";
					else
						address <= x"35";
					end if;
				start <= '1';
				nextState <= READ_MSB;

		
			when READ_MSB => 
				start <= '0';
				if(selectAxis = '0') then
					address <= x"33";
				else
					address <= x"35";
				end if;
				if(ready ='1') then
					nextState <= SAVE_MSB;
				end if;
			
			when SAVE_MSB =>
				start <= '1';
				reg1_mux <= bufferResult;
				address <= x"00";
				nextState <= READ_ID;
				
			when READ_ID =>
				start <= '0';
				address <= x"00";
				if(ready = '1') then
					nextState <=SAVE_ID;
				end if;
			
			when SAVE_ID =>
				start <= '1';
				reg2_mux <= bufferResult;
				if(selectAxis = '0') then
					address <= x"32";
				else
					address <= x"34";
				end if;
				nextState <=READ_LSB;
		end case;
	end process;
	
	process(ck50M, reset)
	begin	
		if(reset = '1') then	
			currentState <= INIT;
		elsif(rising_edge(ck50M)) then
			currentState <= nextState;
		end if;
	end process;
	
	-- Register managment (regX_mux handled by FSM)
	reg0 <= (others=>'0') when reset='1' else reg0_mux when rising_edge(ck50M);
	reg1 <= (others=>'0') when reset='1' else reg1_mux when rising_edge(ck50M);
	reg2 <= (others=>'0') when reset='1' else reg2_mux when rising_edge(ck50M);

end vhdl;