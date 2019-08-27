library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Comparator is
	generic( BITCOUNT: integer := 8 );
	port(
		xT, yT: in std_logic_vector((BITCOUNT-1) downto 0);
		needSwap: out std_logic
	);
end Comparator;

architecture ComparatorArch of Comparator is
	signal xGTy: std_logic_vector((BITCOUNT-1) downto 0);
	signal yGTx: std_logic_vector((BITCOUNT-1) downto 0);
begin
	xGTy <= xT and (not yT);
	yGTx <= (not xT) and yT;
	
	needSwap_compute: process (xGTy, yGTx)
		variable SW: std_logic;
		variable K: std_logic;
	begin
		SW := '0';
		K := '1';
		for i in (BITCOUNT-1) downto 0 loop
			SW := SW or ((not(xGTy(i)) and yGTx(i)) and K);
			K := K and (not(xGTy(i) and not(yGTx(i))));
		end loop;
		needSwap <= SW;
	end process;

end ComparatorArch;

