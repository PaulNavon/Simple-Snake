library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity accelero is
    Port (
		reset, ck50M : in STD_LOGIC;
		start : in std_logic;
		ready : out std_logic;
		Address, wValue : in STD_LOGIC_VECTOR(7 downto 0);
		result_reg : inout STD_LOGIC_VECTOR(7 downto 0);
		SPI_DI : in std_logic;
		SPI_DO, SPI_CS, SPI_CK : out std_logic );
end accelero;

architecture vhdl of accelero is

type state is (
	stIDLE,
	st00, st01, st02, st03, st04, st05, st06, st07, st08, st09,
	st10, st11, st12, st13, st14, st15, st16, st17, st18, st19,
	st20, st21, st22, st23, st24, st25, st26, st27, st28, st29,
	st30, st31, st32, st33, st34, st35
);
signal currentState, nextState : state;
signal cpt1Mhz_mux, cpt1Mhz_reg : std_logic_vector(7 downto 0);
signal p1Mhz : std_logic;

signal address_mux, address_reg, wvalue_mux, wvalue_reg, result_mux : std_logic_vector(7 downto 0);

begin

	-- pulse 1MHz sinon 40 MHz trop rapide pour le SPI
	cpt1Mhz_mux <= std_logic_vector(unsigned(cpt1Mhz_reg)+1) when p1Mhz='0' else (others=>'0');
	cpt1Mhz_reg <= (others=>'0') when reset='1' else cpt1Mhz_mux when rising_edge(ck50M);
	p1Mhz <= '1' when unsigned(cpt1Mhz_reg)>50 else '0';
	
ifsm : process(currentState, p1Mhz, start, result_reg, address_reg, wvalue_reg, SPI_DI, address, wvalue)
begin
	nextState<= currentState;
	SPI_CK <= '1'; SPI_CS <= '1'; SPI_DO <= '1'; 
	result_mux <= result_reg;
	address_mux <= address_reg; wvalue_mux <= wvalue_reg;
	ready <= '0';
		
	case currentState is
	-- etat repos (IDLE)
	when stIDLE =>
		-- action 
		ready <= '1';
		-- next state
		if(start='1') then
			address_mux <= address;
			wvalue_mux <= wvalue;
			nextState <= st00; 
		end if;

	-- etat initial
	when st00 =>
		-- action 
		SPI_CK <= '1'; SPI_CS <= '1';
		-- next state
		if(p1Mhz='1') then nextState <= st01; end if;
	-- Engagement communication (cs=0)
	when st01 =>
		-- action 
		SPI_CS <= '0';
		-- next state
		if(p1Mhz='1') then nextState <= st02; end if;
	-- Activation horloge (ck=0)
	when st02 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0';
		-- next state
		if(p1Mhz='1') then nextState <= st03; end if;
	-- Mise ne place bit R/W (ecriture w=0)
	when st03 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(7);
		-- next state
		if(p1Mhz='1') then nextState <= st04; end if;
	-- front montant horloge
	when st04 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(7);
		-- next state
		if(p1Mhz='1') then nextState <= st05; end if;
	-- front descendant horloge + changement de donnée (MB=0)
	when st05 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(6);
		-- next state
		if(p1Mhz='1') then nextState <= st06; end if;
	-- front montant horloge
	when st06 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(6);
		-- next state
		if(p1Mhz='1') then nextState <= st07; end if;
	-- front descendant horloge + changement de donnée bit 5 de l'adresse 0x31(DO=1)
	when st07 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(5);
		-- next state
		if(p1Mhz='1') then nextState <= st08; end if;
	-- front montant horloge
	when st08 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(5);
		-- next state
		if(p1Mhz='1') then nextState <= st09; end if;
	-- front descendant horloge + changement de donnée bit 4 de l'adresse 0x31(DO=1)
	when st09 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(4);
		-- next state
		if(p1Mhz='1') then nextState <= st10; end if;
	-- front montant horloge
	when st10 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(4);
		-- next state
		if(p1Mhz='1') then nextState <= st11; end if;
	-- front descendant horloge + changement de donnée bit 3 de l'adresse 0x31(DO=0)
	when st11 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(3);
		-- next state
		if(p1Mhz='1') then nextState <= st12; end if;
	-- front montant horloge
	when st12 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(3);
		-- next state
		if(p1Mhz='1') then nextState <= st13; end if;
	-- front descendant horloge + changement de donnée bit 2 de l'adresse 0x31(DO=0)
	when st13 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(2);
		-- next state
		if(p1Mhz='1') then nextState <= st14; end if;
	-- front montant horloge
	when st14 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(2);
		-- next state
		if(p1Mhz='1') then nextState <= st15; end if;
	-- front descendant horloge + changement de donnée bit 1 de l'adresse 0x31(DO=0)
	when st15 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(1);
		-- next state
		if(p1Mhz='1') then nextState <= st16; end if;
	-- front montant horloge
	when st16 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(1);
		-- next state
		if(p1Mhz='1') then nextState <= st17; end if;
	-- front descendant horloge + changement de donnée bit 0 de l'adresse 0x31(DO=1)
	when st17 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= address_reg(0);
		-- next state
		if(p1Mhz='1') then nextState <= st18; end if;
	-- front montant horloge
	when st18 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= address_reg(0);
		-- next state
		if(p1Mhz='1') then nextState <= st19; end if;
	-- front descendant horloge + changement de donnée bit 7 du registre DATA_FORMAT(DO=0)
	when st19 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(7); result_mux(7) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st20; end if;
	-- front montant horloge
	when st20 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(7);
		-- next state
		if(p1Mhz='1') then nextState <= st21; end if;
	-- front descendant horloge + changement de donnée bit 6 du registre DATA_FORMAT(DO=1)
	when st21 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(6); result_mux(6) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st22; end if;
	-- front montant horloge
	when st22 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(6);
		-- next state
		if(p1Mhz='1') then nextState <= st23; end if;
	-- front descendant horloge + changement de donnée bit 5 du registre DATA_FORMAT(DO=0)
	when st23 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(5); result_mux(5) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st24; end if;
	-- front montant horloge
	when st24 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(5);
		-- next state
		if(p1Mhz='1') then nextState <= st25; end if;
	-- front descendant horloge + changement de donnée bit 4 du registre DATA_FORMAT(DO=0)
	when st25 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(4); result_mux(4) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st26; end if;
	-- front montant horloge
	when st26 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(4);
		-- next state
		if(p1Mhz='1') then nextState <= st27; end if;
	-- front descendant horloge + changement de donnée bit 3 du registre DATA_FORMAT(DO=0)
	when st27 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(3); result_mux(3) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st28; end if;
	-- front montant horloge
	when st28 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(3);
		-- next state
		if(p1Mhz='1') then nextState <= st29; end if;
	-- front descendant horloge + changement de donnée bit 2 du registre DATA_FORMAT(DO=0)
	when st29 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(2); result_mux(2) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st30; end if;
	-- front montant horloge
	when st30 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(2);
		-- next state
		if(p1Mhz='1') then nextState <= st31; end if;
	-- front descendant horloge + changement de donnée bit 1 du registre DATA_FORMAT(DO=0)
	when st31 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(1); result_mux(1) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st32; end if;
	-- front montant horloge
	when st32 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(1);
		-- next state
		if(p1Mhz='1') then nextState <= st33; end if;
	-- front descendant horloge + changement de donnée bit 0 du registre DATA_FORMAT(DO=0)
	when st33 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '0'; SPI_DO <= wvalue_reg(0); result_mux(0) <= SPI_DI;
		-- next state
		if(p1Mhz='1') then nextState <= st34; end if;
	-- front montant horloge
	when st34 =>
		-- action 
		SPI_CS <= '0'; SPI_CK <= '1'; SPI_DO <= wvalue_reg(0);
		-- next state
		if(p1Mhz='1') then nextState <= st35; end if;
	-- fin de la transaction cs=1
	when st35 =>
		-- action 
		SPI_CS <= '1'; SPI_CK <= '1'; SPI_DO <= '1';  -- result_mux <= wvalue_reg;
		-- next state
		if(p1Mhz='1') then nextState <= stIDLE; end if;
	end case;

end process ifsm;

synchronize : process(ck50M, reset)
begin
	if(reset='1') then currentState <= stIDLE;
	elsif(rising_edge(ck50M)) then currentState<=nextState; end if;
end process synchronize;

result_reg <= (others => '0') when reset='1' else result_mux when rising_edge(ck50M);
address_reg <= (others => '0') when reset='1' else address_mux when rising_edge(ck50M);
wvalue_reg <= (others => '0') when reset='1' else wvalue_mux when rising_edge(ck50M);

end vhdl;