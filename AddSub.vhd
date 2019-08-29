library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AddSub is
	generic( BITCOUNT: integer := 8 );
	port(
		X, Y: in std_logic_vector((BITCOUNT-1) downto 0);
		isSub: in std_logic := 0;
		result: out std_logic_vector((BITCOUNT-1) downto 0)
	);
end AddSub;

architecture CLAAddSubArch of AddSub is

begin


end CLAAddSubArch;

