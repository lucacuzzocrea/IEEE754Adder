library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Swap is

	generic(
		BITCOUNT : integer := 8
	);
	
	port(
		X_IN, Y_IN : in std_logic_vector((BITCOUNT-1) downto 0);
		SW : in std_logic;
		X_OUT, Y_OUT : out std_logic_vector((BITCOUNT-1) downto 0)
	);
	
end Swap;

architecture SwapArch of Swap is

begin

	SWAP_PROCESS: process(X_IN, Y_IN, SW)
	
	begin
	
		for i in (BITCOUNT-1) downto 0 loop
			X_OUT(i) <= (not(SW) and X_IN(i)) or (SW and Y_IN(i));
			Y_OUT(i) <= (not(SW) and Y_IN(i)) or (SW and X_IN(i));
		end loop;
		
	end process;

end SwapArch;

