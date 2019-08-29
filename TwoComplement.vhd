library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoComplement is
	generic(BITCOUNT : integer := 8);
	port(
		DIFF_EXP_C2 : in std_logic_vector((BITCOUNT-1) downto 0);
		DIFF_EXP_ABS : out std_logic_vector((BITCOUNT-2) downto 0)
	);
end TwoComplement;

architecture TwoComplementArch of TwoComplement is
	signal S : std_logic;
	signal M : std_logic_vector((BITCOUNT-2) downto 0);
begin
	S <= DIFF_EXP_C2(BITCOUNT-1);
	M <= DIFF_EXP_C2((BITCOUNT-2) downto 0);
	
	C2 : process(DIFF_EXP_C2)
	begin
		for i in (BITCOUNT-2) downto 0 loop
			M(i) <= S xor M(i);
		end loop;
	end process;
	
	--sommare 1 a M se S = '1'
	
	DIFF_EXP_ABS <= M;

end TwoComplementArch;

