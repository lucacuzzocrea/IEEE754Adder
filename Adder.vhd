library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Adder is
	generic( BITCOUNT: integer := 8 );
	port(
		X, Y: in std_logic_vector((BITCOUNT-1) downto 0);
		carry_in: in std_logic;
		result: out std_logic_vector((BITCOUNT-1) downto 0);
		carry_out: out std_logic
	);
end Adder;

architecture CarryLookAheadArch of Adder is
	signal generation: std_logic_vector((BITCOUNT-1) downto 0);
	signal propagation: std_logic_vector((BITCOUNT-1) downto 0);
	signal carry: std_logic_vector((BITCOUNT-1) downto 0);
	signal sum_no_carry: std_logic_vector((BITCOUNT-1) downto 0);
begin
	generation <= X and Y;
	propagation <= X or Y;
	sum_no_carry <= X xor Y;

	carry_look_ahead: process (generation, propagation, carry_in)
		variable C: std_logic;
	begin
		C := carry_in;
		carry(0) <= C;
		for i in 1 to (BITCOUNT-1) loop
			C := generation(i-1) or (propagation(i-1) and C);
			carry(i) <= C;
		end loop;
	end process;

	result <= sum_no_carry xor carry;
	carry_out <= (X(BITCOUNT-1) and Y(BITCOUNT-1)) or (X(BITCOUNT-1) and carry(BITCOUNT-1)) or (carry(BITCOUNT-1) and Y(BITCOUNT-1));
end CarryLookAheadArch;

