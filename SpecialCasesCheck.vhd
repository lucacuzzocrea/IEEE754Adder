library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SpecialCasesCheck is
	port(
		X, Y: in std_logic_vector(31 downto 0);
		isNaN, isZero: out std_logic
	);
end SpecialCasesCheck;


architecture SpecialCasesCheckArch of SpecialCasesCheck is
	component NaNCheck is
		port(
			X, Y: in std_logic_vector(31 downto 0);
			isNaN: out std_logic
		);
	end component;

	component ZeroCheck is
		port(
			X, Y: in std_logic_vector(31 downto 0);
			isZero: out std_logic
		);
	end component;
begin
	NC: NaNCheck
		port map (X => X, Y => Y, isNaN => isNaN);
	ZC: ZeroCheck
		port map (X => X, Y => Y, isZero => isZero);
end SpecialCasesCheckArch;


