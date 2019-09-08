library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Normalizer is

	port(
		SIGN : in std_logic;
		EXP : in std_logic_vector(7 downto 0);
		MANT : in std_logic_vector(47 downto 0);
		SUM_OVERFLOW : in std_logic;
		IEEE_754_SUM : out std_logic_vector(31 downto 0)
	);

end Normalizer;

architecture NormalizerArch of Normalizer is

	component ZeroCounter is
		generic(
			BITCOUNT : integer := 8;
			RES_BITCOUNT : integer := 3 -- MUST BE >= CEIL( LOG2( BITCOUNT ) )
		);
		port(
			X : in std_logic_vector( (BITCOUNT-1) downto 0 );
			Z_COUNT : out std_logic_vector( (RES_BITCOUNT-1) downto 0 );
			ALL_ZEROS : out std_logic
		);
	end component;
	
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
	
	component ShiftLeft48 is
		port(
			N : in std_logic_vector(47 downto 0);
			PLACES : in std_logic_vector(8 downto 0);
			RESULT : out std_logic_vector(47 downto 0)
		);
	end component;

	signal EXP_ADD_LEFT: std_logic_vector(7 downto 0);
	signal EXP_ADD_RIGHT: std_logic_vector(7 downto 0);
	signal EXP_ADD_ISSUB: std_logic;
	
	signal ZERO_COUNT: std_logic_vector(7 downto 0);
	signal ALL_ZEROS: std_logic;
	signal IS_FINAL_EXP_MINIMUM: std_logic;
	
	signal EXP_ADDSUB_RES: std_logic_vector(7 downto 0);
	signal EXP_ADDSUB_OF: std_logic;
	
	signal FINAL_EXP: std_logic_vector(7 downto 0);

	signal LEFT_SHIFT_AMOUNT: std_logic_vector(8 downto 0);
	signal LEFT_SHIFTED_MANT: std_logic_vector(22 downto 0);
	signal LEFT_SHIFTED_MANT_TMP: std_logic_vector(47 downto 0);
	signal RIGHT_SHIFTED_MANT: std_logic_vector(22 downto 0);
	signal FINAL_MANT: std_logic_vector(22 downto 0);

begin

	ZC: ZeroCounter
		generic map ( BITCOUNT => 48, RES_BITCOUNT => 8 )
		port map ( X => MANT, Z_COUNT => ZERO_COUNT, ALL_ZEROS => ALL_ZEROS ); -- ALL_ZEROS can be ignored

	C : Comparator
		generic map ( BITCOUNT => 8 )
		port map ( X_MANT => EXP, Y_MANT => ZERO_COUNT, NEED_SWAP => IS_FINAL_EXP_MINIMUM );
	

	sum_input_process: process (SUM_OVERFLOW, IS_FINAL_EXP_MINIMUM, EXP, ZERO_COUNT)
	begin
		if (SUM_OVERFLOW = '1') then
			EXP_ADD_LEFT <= EXP;
			EXP_ADD_RIGHT <= "00000001";
			EXP_ADD_ISSUB <= '0';
		elsif (IS_FINAL_EXP_MINIMUM = '1') then
			EXP_ADD_LEFT <= "01111111"; --127
			EXP_ADD_RIGHT <= EXP;
			EXP_ADD_ISSUB <= '1';
		else
			EXP_ADD_LEFT <= EXP;
			EXP_ADD_RIGHT <= ZERO_COUNT;
			EXP_ADD_ISSUB <= '1';
		end if;
	end process;

	CLA : AddSub
		generic map ( BITCOUNT => 8 )
		port map ( X => EXP_ADD_LEFT, Y => EXP_ADD_RIGHT, IS_SUB => EXP_ADD_ISSUB, RESULT => EXP_ADDSUB_RES, OVERFLOW => EXP_ADDSUB_OF );

	shift_process: process (IS_FINAL_EXP_MINIMUM, EXP_ADDSUB_RES, ZERO_COUNT)
	begin
		if (IS_FINAL_EXP_MINIMUM = '1') then
			LEFT_SHIFT_AMOUNT <= '0' & EXP_ADDSUB_RES;
		else
			LEFT_SHIFT_AMOUNT <= '0' & ZERO_COUNT;
		end if;
	end process;


	RIGHT_SHIFTED_MANT <= '1' & MANT(47 downto 26);
	SL: ShiftLeft48
		port map ( N => MANT, PLACES => LEFT_SHIFT_AMOUNT, RESULT => LEFT_SHIFTED_MANT_TMP );
	LEFT_SHIFTED_MANT <= LEFT_SHIFTED_MANT_TMP(47 downto 25);
	
	final_process: process (SUM_OVERFLOW, IS_FINAL_EXP_MINIMUM, EXP_ADDSUB_RES, EXP_ADDSUB_OF, RIGHT_SHIFTED_MANT, LEFT_SHIFTED_MANT)
		variable IS_INF : std_logic;
	begin
		if (SUM_OVERFLOW = '1') then
			IS_INF := '1';
			for i in EXP_ADDSUB_RES'range loop
				IS_INF := IS_INF and EXP_ADDSUB_RES(i);
			end loop;
			IS_INF := IS_INF or EXP_ADDSUB_OF;
			
			if (IS_INF = '1') then
				FINAL_EXP <= "11111111";
				FINAL_MANT <= "00000000000000000000000";
			else
				FINAL_EXP <= EXP_ADDSUB_RES;
				FINAL_MANT <= RIGHT_SHIFTED_MANT;
			end if;
		else
			if (IS_FINAL_EXP_MINIMUM = '1') then
				FINAL_EXP <= "00000000";
				FINAL_MANT <= LEFT_SHIFTED_MANT;
			else
				FINAL_EXP <= EXP_ADDSUB_RES;
				FINAL_MANT <= LEFT_SHIFTED_MANT;
			end if;
		end if;
	end process;
	
	IEEE_754_SUM <= SIGN & FINAL_EXP & FINAL_MANT;

end NormalizerArch;

