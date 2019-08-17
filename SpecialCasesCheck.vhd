library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SpecialCasesCheck is
	port(
		X, Y: in std_logic_vector(31 downto 0);
		isNan, isZero: out std_logic
	);
end SpecialCasesCheck;


architecture SpecialCasesCheckArch of SpecialCasesCheck is
	component NaNCheck is
		port(
			X, Y: in std_logic_vector(31 downto 0);
			isNan: out std_logic
		);
	end component;

	signal xSign: std_logic;
	signal ySign: std_logic;
	signal isSameAbsValue: std_logic;
	
begin
	NC: NaNCheck
		port map (X => X, Y => Y, isNan => isNan);

	xSign <= X(31);
	ySign <= Y(31);
	
	isSameAbsValue <= '0'; -- TODO
	
	isZero <= (xSign and (not ySign) and isSameAbsValue) or ((not xSign) and ySign and isSameAbsValue);
end SpecialCasesCheckArch;


