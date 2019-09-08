library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlopD is

	port(
		CLK : in std_logic;
		RESET : in std_logic;
		D : in std_logic;
		Q : out std_logic
	);

end FlipFlopD;

architecture FlipFlopDArch of FlipFlopD is

begin

	ff: process( CLK )
	begin
		if( CLK'event and CLK = '0' ) then
			if( RESET = '1' ) then
				Q <= '0';
			else
				Q <= D;
			end if;
		end if;
	end process;

end FlipFlopDArch;

