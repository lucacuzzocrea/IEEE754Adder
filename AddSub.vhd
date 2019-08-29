library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AddSub is

	generic(
		BITCOUNT : integer := 8
	);
	
	port(
		X, Y : in std_logic_vector((BITCOUNT-1) downto 0);
		IS_SUB : in std_logic := '0';
		RESULT : out std_logic_vector((BITCOUNT-1) downto 0);
		OVERFLOW : out std_logic
	);
	
end AddSub;


architecture AddSubArch of AddSub is

	component Adder is
	
		generic(
			BITCOUNT : integer := 8
		);
		
		port(
			X, Y : in std_logic_vector((BITCOUNT-1) downto 0);
			CARRY_IN : in std_logic;
			RESULT : out std_logic_vector((BITCOUNT-1) downto 0);
			CARRY_OUT : out std_logic
		);
		
	end component;
	
	signal Y2 : std_logic_vector((BITCOUNT-1) downto 0);
	signal C_OUT : std_logic;
	
begin

	Y2_PROCESS : process(Y, IS_SUB)
	
	begin
	
		for i in Y2'range loop
			Y2(i) <= Y(i) xor IS_SUB;
		end loop;
		
	end process;

	ADD : Adder
		generic map (BITCOUNT => BITCOUNT)
		port map (X => X, Y => Y2, CARRY_IN => IS_SUB, RESULT => RESULT, CARRY_OUT => C_OUT);

	OVERFLOW <= ((not IS_SUB) and C_OUT) or (IS_SUB and (not C_OUT));
	
end AddSubArch;
