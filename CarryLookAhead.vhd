library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CarryLookAhead is

	port(
		X, Y : in std_logic_vector(47 downto 0);
		OP : in std_logic;
		RESULT : out std_logic_vector(47 downto 0);
		OVERFLOW : out std_logic
	);
	
end CarryLookAhead;

architecture CarryLookAheadArch of CarryLookAhead is

	--signal OVERFLOW_TMP : std_logic;

	component AddSub is

		generic(
			BITCOUNT : integer := 8
		);
		
		port(
			X, Y : in std_logic_vector((BITCOUNT-1) downto 0);
			IS_SUB : in std_logic := '0';
			RESULT : out std_logic_vector((BITCOUNT-1) downto 0);
			OVERFLOW : out std_logic
		);
		
	end component;

begin

	CLA : AddSub
		generic map (BITCOUNT => 48)
		port map (X => X, Y => Y, IS_SUB => OP, RESULT => RESULT, OVERFLOW => OVERFLOW);

end CarryLookAheadArch;

