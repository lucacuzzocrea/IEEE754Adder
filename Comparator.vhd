library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Comparator is

	generic(
		BITCOUNT : integer := 8
	);
	
	port(
		X_MANT, Y_MANT : in std_logic_vector((BITCOUNT-1) downto 0);
		NEED_SWAP : out std_logic
	);
	
end Comparator;

architecture ComparatorArch of Comparator is

	signal X_GT_Y : std_logic_vector((BITCOUNT-1) downto 0);
	signal Y_GT_X : std_logic_vector((BITCOUNT-1) downto 0);
	
begin

	X_GT_Y <= X_MANT and (not Y_MANT);
	Y_GT_X <= (not X_MANT) and Y_MANT;
	
	NEED_SWAP_PROCESS : process (X_GT_Y, Y_GT_X)
	
		variable SWAP : std_logic;
		variable SWAP_CARRY : std_logic;
	
	begin
	
		SWAP := '0';
		SWAP_CARRY := '1';
		
		for i in (BITCOUNT-1) downto 0 loop
			SWAP := SWAP or ((not(X_GT_Y(i)) and Y_GT_X(i)) and SWAP_CARRY);
			SWAP_CARRY := SWAP_CARRY and (not(X_GT_Y(i) and not(Y_GT_X(i))));
		end loop;
		
		NEED_SWAP <= SWAP;
		
	end process;

end ComparatorArch;

