library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NaNCheck is
	port(
		X, Y: in std_logic_vector(31 downto 0);
		isNan: out std_logic
	);
end NaNCheck;

architecture NaNCheckArch of NaNCheck is
	component TypeCheck is
		port(
			N: in std_logic_vector(31 downto 0);
			NaN, INF: out std_logic
		);
	end component;
	
	signal xNan: std_logic;
	signal xInf: std_logic;
	signal xSign: std_logic;
	signal yNan: std_logic;
	signal yInf: std_logic;
	signal ySign: std_logic;
	
begin
	xCheck: TypeCheck
		port map (N => X, NaN => xNan, INF => xInf);
	yCheck: TypeCheck
		port map (N => Y, NaN => yNan, INF => yInf);

	xSign <= X(31);
	ySign <= Y(31);
	
	isNan <= xNan or yNan or (xInf and xSign and yInf and (not ySign)) or (xInf and (not xSign) and yInf and ySign);
	
end NaNCheckArch;
