library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoComplement is

	generic(
		BITCOUNT : integer := 8
	);
	
	port(
		DIFF_EXP_C2 : in std_logic_vector((BITCOUNT-1) downto 0);
		DIFF_EXP : out std_logic_vector((BITCOUNT-1) downto 0)
	);
	
end TwoComplement;

architecture TwoComplementArch of TwoComplement is

	signal SIGN : std_logic;
	signal DIFF_EXP_ABS : std_logic_vector((BITCOUNT-2) downto 0);
	
begin

	SIGN <= DIFF_EXP_C2(BITCOUNT-1);
	
	C2_PROCESS : process (DIFF_EXP_C2, SIGN)
	
	begin
	
		for i in (BITCOUNT-2) downto 0 loop
			DIFF_EXP_ABS(i) <= SIGN xor DIFF_EXP_C2(i);
		end loop;
		
	end process;
	
	SUM : process (DIFF_EXP_ABS, SIGN)
	
		variable CARRY : std_logic;
	
	begin
	
		CARRY := SIGN;
	
		for i in 0 to (BITCOUNT-2) loop
			DIFF_EXP(i) <= DIFF_EXP_ABS(i) xor CARRY;
			CARRY := DIFF_EXP_ABS(i) and CARRY;
		end loop;
		
		DIFF_EXP(BITCOUNT-1) <= CARRY;
	
	end process;

end TwoComplementArch;

