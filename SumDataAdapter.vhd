library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumDataAdapter is

	port(
		X_IN, Y_IN : in std_logic_vector(30 downto 0);
		DIFF_EXP : in std_logic_vector(8 downto 0);
		X_OUT, Y_OUT : out std_logic_vector(47 downto 0)
	);
	
end SumDataAdapter;

architecture SumDataAdapterArch of SumDataAdapter is

	signal X_FST_BIT : std_logic;
	signal Y_FST_BIT : std_logic;
	signal FILL : std_logic_vector(23 downto 0);
	signal N : std_logic_vector(47 downto 0);
	
	component ShiftRight48 is
	
		port(
			N : in std_logic_vector(47 downto 0);
			PLACES : in std_logic_vector(8 downto 0);
			RESULT : out std_logic_vector(47 downto 0)
		);

	end component;
	
begin

	FILL <= (others => '0');

	X_Y_FST_BIT_PROCESS : process (X_IN, Y_IN)
		
		variable X_FST_TMP : std_logic := '0';
		variable Y_FST_TMP : std_logic := '0';
		
	begin
	
		for i in 30 downto 23 loop
			X_FST_TMP := X_FST_TMP or X_IN(i);
			Y_FST_TMP := Y_FST_TMP or Y_IN(i);
		end loop;
		
		X_FST_BIT <= X_FST_TMP;
		Y_FST_BIT <= Y_FST_TMP;
	
	end process;
	
	N <= Y_FST_BIT & Y_IN(22 downto 0) & FILL;
	
	SHIFTER : ShiftRight48
		port map (N => N, PLACES => DIFF_EXP, RESULT => Y_OUT);

	--X_OUT <= X_FST_BIT & X_IN(22 downto 0) & FILL;
	
end SumDataAdapterArch;

