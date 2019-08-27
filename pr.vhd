library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pr is
	generic( BITCOUNT: integer := 8 );
	port(
		xExp, yExp: in std_logic_vector((BITCOUNT-1) downto 0);
		xOut, yOut: out std_logic_vector((BITCOUNT-1) downto 0);
		needSwap: out std_logic
	);
end pr;

architecture qwe of pr is
	signal xGTy: std_logic_vector((BITCOUNT-1) downto 0);
	signal yGTx: std_logic_vector((BITCOUNT-1) downto 0);
begin
	xGTy <= xExp and (not yExp);
	yGTx <= (not xExp) and yExp;
	
	xOut <= xGTy;
	yOut <= yGTx;
	
	needSwap_compute: process (xGTy, yGTx)
		variable SW: std_logic;
		variable K: std_logic;
	begin
		SW := '0';
		k := '1';
		for i in (BITCOUNT-1) downto 0 loop
			SW := SW or ((not(xGTy(i)) and yGTx(i)) and K);
			K := K and (not(xGTy(i) and not(yGTx(i))));
		end loop;
		needSwap <= SW;
	end process;

end qwe;

