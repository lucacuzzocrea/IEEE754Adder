library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Normalizer is

	port(
		SIGN : in std_logic;
		EXP : in std_logic_vector(7 downto 0);
		MANT : in std_logic_vector(47 downto 0);
		OVERFLOW : in std_logic;
		IEEE_754_SUM : out std_logic_vector(31 downto 0)
	);
	
end Normalizer;

architecture NormalizerArch of Normalizer is

begin


end NormalizerArch;

