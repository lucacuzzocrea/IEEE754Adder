library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EqualCheck is

	generic(
		BITCOUNT: integer := 8
	);
	
	port(
		X, Y : in std_logic_vector((BITCOUNT-1) downto 0);
		IS_EQUAL : out std_logic
	);
	
end EqualCheck;

architecture EqualCheckArch of EqualCheck is

	signal COMP_VEC : std_logic_vector((BITCOUNT-1) downto 0);
	
begin

	COMP_VEC <= X xor Y;
	
	RES_COMPUTE: process (COMP_VEC)
	
		variable RES_TMP : std_logic;
		
	begin
	
		RES_TMP := '0';
		
		for i in COMP_VEC'range loop
			RES_TMP := RES_TMP or COMP_VEC(i);
		end loop;
		
		IS_EQUAL <= not RES_TMP;
		
	end process;

end EqualCheckArch;

