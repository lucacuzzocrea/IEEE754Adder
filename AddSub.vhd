library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AddSub is
	generic( BITCOUNT: integer := 8 );
	port(
		X, Y: in std_logic_vector((BITCOUNT-1) downto 0);
		isSub: in std_logic := '0';
		result: out std_logic_vector((BITCOUNT-1) downto 0);
		overflow: out std_logic
	);
end AddSub;


architecture AddSubArch of AddSub is
	component Adder is
		generic( BITCOUNT: integer := 8 );
		port(
			X, Y: in std_logic_vector((BITCOUNT-1) downto 0);
			carry_in: in std_logic;
			result: out std_logic_vector((BITCOUNT-1) downto 0);
			carry_out: out std_logic
		);
	end component;
	
	signal Y2: std_logic_vector((BITCOUNT-1) downto 0);
	signal C_out: std_logic;
begin

	y2proc: process(Y, isSub)
	begin
		for i in Y2'range loop
			Y2(i) <= Y(i) xor isSub;
		end loop;
	end process;

	ADD: Adder
		generic map ( BITCOUNT => BITCOUNT )
		port map ( X => X, Y => Y2, carry_in => isSub, result => result, carry_out => C_out );

	overflow <= ((not isSub) and C_out) or (isSub and (not C_out));
end AddSubArch;
