library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PrepareForShift is
	port(
		X, Y: in std_logic_vector(31 downto 0);
		DIFF_EXP: out std_logic_vector(8 downto 0);
		SW: out std_logic
	);
end PrepareForShift;

architecture PrepareForShiftArch of PrepareForShift is
	signal LT: std_logic;
	signal EQ: std_logic;
	
	component Comparator is
		generic( BITCOUNT: integer := 8 );
	port(
		xT, yT: in std_logic_vector((BITCOUNT-1) downto 0);
		needSwap: out std_logic
	);
	end component;
	
begin
	C: Comparator
		port map (xT => X(22 downto 0), yT => Y(22 downto 0), needSwap => LT);
		
	--istaziare sommatore la cui uscita va mappata in X(31 downto 23), Y(31 downto 23), DIFF_EXP
	
	EQ <= '0';
	
	O: process (DIFF_EXP)
	begin
		for i in 8 downto 0 loop
			EQ <= EQ or DIFF_EXP(i);
		end loop;
	end process;

	SW <= DIFF_EXP(8) or (EQ and LT);

end PrepareForShiftArch;

