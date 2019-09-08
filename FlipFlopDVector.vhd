library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlopDVector is

	generic(
		BITCOUNT : integer := 8
	);

	port(
		CLK : in std_logic;
		RESET : in std_logic;
		D : in std_logic_vector(BITCOUNT-1 downto 0);
		Q : out std_logic_vector(BITCOUNT-1 downto 0)
	);

end FlipFlopDVector;

architecture FlipFlopDVectorArch of FlipFlopDVector is

begin
	
	ff: process( CLK )
	begin
		if( CLK'event and CLK = '0' ) then
			if( RESET = '1' ) then
				Q <= (BITCOUNT-1 downto 0 => '0');
			else
				Q <= D;
			end if;
		end if;
	end process;

end FlipFlopDVectorArch;

