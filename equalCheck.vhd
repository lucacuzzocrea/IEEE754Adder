library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EqualCheck is
	generic( BITCOUNT: integer := 8 );
	port(
		X, Y: in std_logic_vector( (BITCOUNT-1) downto 0 );
		isEqual: out std_logic
	);
end EqualCheck;

architecture EqualCheckArch of EqualCheck is
	signal compVec: std_logic_vector( (BITCOUNT-1) downto 0 );
begin
	compVec <= X xor Y;
	
	res_compute: process (compVec)
		variable res_tmp: std_logic;
	begin
		res_tmp := '0';
		for i in compVec'range loop
			res_tmp := res_tmp or compVec(i);
		end loop;
		isEqual <= res_tmp;
	end process;

end EqualCheckArch;

