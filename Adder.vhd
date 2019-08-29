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

	carry_look_ahead: process (generation, propagation, carry, carry_in)
	begin
		carry(0) <= carry_in;
		for i in (BITCOUNT-1) downto 1 loop
			carry(i) <= generation(i) or (propagation(i) and carry(i-1));
		end loop;
	end process;

	result <= sum_no_carry xor carry;
	carry_out <= sum_no_carry(BITCOUNT-1) xor carry(BITCOUNT-1);
end CarryLookAheadArch;

