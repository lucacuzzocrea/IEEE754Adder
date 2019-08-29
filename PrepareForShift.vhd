library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PrepareForShift is

	port(
		X, Y : in std_logic_vector(30 downto 0);
		DIFF_EXP : out std_logic_vector(8 downto 0);
		NEED_SWAP : out std_logic
	);
	
end PrepareForShift;

architecture PrepareForShiftArch of PrepareForShift is

	signal LT : std_logic;
	signal EQ : std_logic;
	signal RESULT : std_logic_vector(7 downto 0);
	signal OVERFLOW : std_logic;
	
	component Comparator is
	
		generic(
			BITCOUNT: integer := 8
		);
		
		port(
			X_MANT, Y_MANT : in std_logic_vector((BITCOUNT-1) downto 0);
			NEED_SWAP : out std_logic
		);
	
	end component;
	
	component AddSub is

		generic(
			BITCOUNT : integer := 8
		);
		
		port(
			X, Y : in std_logic_vector((BITCOUNT-1) downto 0);
			IS_SUB : in std_logic := '0';
			RESULT : out std_logic_vector((BITCOUNT-1) downto 0);
			OVERFLOW : out std_logic
		);
		
	end component;
	
begin

	C : Comparator
		generic map (BITCOUNT => 23)
		port map (X_MANT => X(22 downto 0), Y_MANT => Y(22 downto 0), NEED_SWAP => LT);
	
	ADD_SUB : AddSub
		generic map (BITCOUNT => 8)
		port map (X => X(30 downto 23), Y => Y(30 downto 23), IS_SUB => '1', RESULT => RESULT, OVERFLOW => OVERFLOW);
	
	EQUAL_EXP_PROCESS : process (RESULT, OVERFLOW)
	
		variable EQ_TMP : std_logic;
	
	begin
	
		EQ_TMP := '0';
	
		for i in 7 downto 0 loop
			EQ_TMP := EQ_TMP or RESULT(i);
		end loop;
		
		EQ_TMP := EQ_TMP or OVERFLOW;
		EQ_TMP := not EQ_TMP;
		EQ <= EQ_TMP;
		
	end process;

	NEED_SWAP <= OVERFLOW or (EQ and LT);
	DIFF_EXP <= OVERFLOW & RESULT;

end PrepareForShiftArch;

