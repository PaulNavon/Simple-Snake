library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RandomNumberGenerator is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
			  en : in std_logic;
			  position : in INTEGER range 1 to 16;
           random_output : out INTEGER range 1 to 16
           );
end RandomNumberGenerator;

architecture Behavioral of RandomNumberGenerator is
	 -- Initial seed value, you can choose any value
    signal rand_seed : INTEGER := 42; 
	 signal check : integer;
	 signal keep  : integer;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            rand_seed <= 42; -- Reset the seed value if reset is asserted
        elsif rising_edge(clk) then
		  
				if(en = '1') then
					rand_seed <= (rand_seed * 3  + 5) mod 25;
					
					rand_seed <= rand_seed + (position mod 4);
					
					-- Scale the random number to fit within the range [1, 16]
					check  <= (rand_seed mod 16) + 1;
					random_output <= check;
				end if;
				
        end if;
    end process;

end Behavioral;