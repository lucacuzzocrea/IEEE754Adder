library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ZeroCheck is
	port(
		X, Y: in std_logic_vector(31 downto 0);
		isZero: out std_logic
	);
end ZeroCheck;

architecture ZeroCheckArch of ZeroCheck is
	component EqualCheck is
		generic( BITCOUNT: integer := 8 );
		port(
			X, Y: in std_logic_vector( (BITCOUNT-1) downto 0 );
			isEqual: out std_logic
		);
	end component;

	signal xSign: std_logic;
	signal ySign: std_logic;
	signal xAbs: std_logic_vector(30 downto 0);
	signal yAbs: std_logic_vector(30 downto 0);
	signal isSameAbsValue: std_logic;
	signal isSameSign: std_logic;
begin
	xSign <= X(31);
	ySign <= Y(31);
	xAbs  <= X(30 downto 0);
	yAbs  <= Y(30 downto 0);

	isSameSign <= xSign xnor ySign;
	AbsCheck: EqualCheck
		generic map ( BITCOUNT => 31 )
		port map (X => xAbs, Y => yAbs, isEqual => isSameAbsValue);
	
	isZero <= (not isSameSign) and isSameAbsValue;
end ZeroCheckArch;

