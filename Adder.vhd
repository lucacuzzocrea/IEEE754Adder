library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Adder is

	generic(
		BITCOUNT : integer := 8
	);
	
	port(
		X, Y : in std_logic_vector((BITCOUNT-1) downto 0);
		CARRY_IN : in std_logic;
		RESULT : out std_logic_vector((BITCOUNT-1) downto 0);
		CARRY_OUT : out std_logic
	);
	
end Adder;

architecture CarryLookAheadArch of Adder is

	signal GENERATION : std_logic_vector((BITCOUNT-1) downto 0);
	signal PROPAGATION : std_logic_vector((BITCOUNT-1) downto 0);
	signal CARRY : std_logic_vector((BITCOUNT-1) downto 0);
	signal SUM_NO_CARRY : std_logic_vector((BITCOUNT-1) downto 0);
	
begin

	GENERATION <= X and Y;
	PROPAGATION <= X or Y;
	SUM_NO_CARRY <= X xor Y;

	CARRY_LOOK_AHEAD_PROCESS : process (GENERATION, PROPAGATION, CARRY_IN)
	
		variable C : std_logic;
		
	begin
	
		C := CARRY_IN;
		CARRY(0) <= C;
		
		for i in 1 to (BITCOUNT-1) loop
			C := GENERATION(i-1) or (PROPAGATION(i-1) and C);
			CARRY(i) <= C;
		end loop;
		
	end process;

	RESULT <= SUM_NO_CARRY xor CARRY;
	CARRY_OUT <= (X(BITCOUNT-1) and Y(BITCOUNT-1)) or (X(BITCOUNT-1) and CARRY(BITCOUNT-1)) or (CARRY(BITCOUNT-1) and Y(BITCOUNT-1));

end CarryLookAheadArch;

