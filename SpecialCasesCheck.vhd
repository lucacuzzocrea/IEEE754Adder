library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SpecialCasesCheck is

	port(
		X, Y : in std_logic_vector(31 downto 0);
		IS_NAN, IS_ZERO : out std_logic
	);
	
end SpecialCasesCheck;


architecture SpecialCasesCheckArch of SpecialCasesCheck is

	component NaNCheck is
	
		port(
			X, Y : in std_logic_vector(31 downto 0);
			IS_NAN : out std_logic
		);
		
	end component;

	component ZeroCheck is
	
		port(
			X, Y : in std_logic_vector(31 downto 0);
			IS_ZERO : out std_logic
		);
		
	end component;
	
begin

	NC: NaNCheck
		port map (X => X, Y => Y, IS_NAN => IS_NAN);
		
	ZC: ZeroCheck
		port map (X => X, Y => Y, IS_ZERO => IS_ZERO);
		
end SpecialCasesCheckArch;


