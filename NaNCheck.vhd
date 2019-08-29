library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NaNCheck is

	port(
		X, Y : in std_logic_vector(31 downto 0);
		IS_NAN : out std_logic
	);
	
end NaNCheck;

architecture NaNCheckArch of NaNCheck is

	component TypeCheck is
	
		port(
			N : in std_logic_vector(30 downto 0);
			NAN, INF : out std_logic
		);
		
	end component;
	
	signal X_NAN : std_logic;
	signal X_INF : std_logic;
	signal X_SIGN : std_logic;
	signal Y_NAN : std_logic;
	signal Y_INF : std_logic;
	signal Y_SIGN : std_logic;
	
begin

	xCheck: TypeCheck
		port map (N => X(30 downto 0), NAN => X_NAN, INF => X_INF);
		
	yCheck: TypeCheck
		port map (N => Y(30 downto 0), NAN => Y_NAN, INF => Y_INF);

	X_SIGN <= X(31);
	Y_SIGN <= Y(31);
	
	IS_NAN <= X_NAN or Y_NAN or (X_INF and X_SIGN and Y_INF and (not Y_SIGN)) or (X_INF and (not X_SIGN) and Y_INF and Y_SIGN);
	
end NaNCheckArch;

