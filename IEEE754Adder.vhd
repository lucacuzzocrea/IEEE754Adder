library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IEEE754Adder is

	port(
		X, Y : in std_logic_vector(31 downto 0);
		RESET : in std_logic;
		CLK : in std_logic;
		RESULT : out std_logic_vector(31 downto 0)
	);

end IEEE754Adder;

architecture Behavioral of IEEE754Adder is

	component PipelineStageOne is

		port(
			X, Y : in std_logic_vector(31 downto 0);
			DIFF_EXP_ABS : out std_logic_vector(8 downto 0);
			A, B : out std_logic_vector(31 downto 0);
			IS_NAN, IS_ZERO : out std_logic
		);
		
	end component;

	component PipelineStageTwo is

		port(
			A, B : in std_logic_vector(31 downto 0);
			DIFF_EXP_ABS : in std_logic_vector(8 downto 0);
			IS_NAN_IN, IS_ZERO_IN : in std_logic;
			EXP : out std_logic_vector(7 downto 0);
			SUM_RESULT : out std_logic_vector(47 downto 0);
			SUM_OF : out std_logic;
			RES_SIGN : out std_logic;
			IS_NAN_OUT, IS_ZERO_OUT : out std_logic
		);
		
	end component;

	component PipelineStageThree is

		port(
			RES_SIGN : in std_logic;
			EXP : in std_logic_vector(7 downto 0);
			MANT : in std_logic_vector(47 downto 0);
			MANT_OF : in std_logic;
			IS_NAN, IS_ZERO : in std_logic;
			FINAL_RES : out std_logic_vector(31 downto 0)
		);
		
	end component;
		
	component FlipFlopD is

		port(
			CLK : in std_logic;
			RESET : in std_logic;
			D : in std_logic;
			Q : out std_logic
		);

	end component;

	component FlipFlopDVector is

		generic(
			BITCOUNT : integer := 8
		);

		port(
			CLK : in std_logic;
			RESET : in std_logic;
			D : in std_logic_vector(BITCOUNT-1 downto 0);
			Q : out std_logic_vector(BITCOUNT-1 downto 0)
		);

	end component;

	signal IN_S1_X : std_logic_vector(31 downto 0);
	signal IN_S1_Y : std_logic_vector(31 downto 0);
	
	signal OUT_S1_DIFF_EXP_ABS : std_logic_vector(8 downto 0);
	signal OUT_S1_A : std_logic_vector(31 downto 0);
	signal OUT_S1_B : std_logic_vector(31 downto 0);
	signal OUT_S1_IS_NAN : std_logic;
	signal OUT_S1_IS_ZERO : std_logic;

	signal IN_S2_DIFF_EXP_ABS : std_logic_vector(8 downto 0);
	signal IN_S2_A : std_logic_vector(31 downto 0);
	signal IN_S2_B : std_logic_vector(31 downto 0);
	signal IN_S2_IS_NAN : std_logic;
	signal IN_S2_IS_ZERO : std_logic;
	
	signal OUT_S2_EXP : std_logic_vector(7 downto 0);
	signal OUT_S2_SUM_RESULT : std_logic_vector(47 downto 0);
	signal OUT_S2_SUM_OF : std_logic;
	signal OUT_S2_RES_SIGN : std_logic;
	signal OUT_S2_IS_NAN : std_logic;
	signal OUT_S2_IS_ZERO : std_logic;
	
	signal IN_S3_EXP : std_logic_vector(7 downto 0);
	signal IN_S3_SUM_RESULT : std_logic_vector(47 downto 0);
	signal IN_S3_SUM_OF : std_logic;
	signal IN_S3_RES_SIGN : std_logic;
	signal IN_S3_IS_NAN : std_logic;
	signal IN_S3_IS_ZERO : std_logic;
	
	signal OUT_S3_FINAL_RES : std_logic_vector(31 downto 0);

begin

	DFF_INP1_X : FlipFlopDVector
		generic map (BITCOUNT => 32)
		port map ( CLK => CLK, RESET => RESET, D => X, Q => IN_S1_X);

	DFF_INP1_Y : FlipFlopDVector
		generic map (BITCOUNT => 32)
		port map ( CLK => CLK, RESET => RESET, D => Y, Q => IN_S1_Y);

	P1 : PipelineStageOne
		port map (
			X => IN_S1_X,
			Y => IN_S1_Y,
			DIFF_EXP_ABS => OUT_S1_DIFF_EXP_ABS,
			A => OUT_S1_A,
			B => OUT_S1_B,
			IS_NAN => OUT_S1_IS_NAN,
			IS_ZERO => OUT_S1_IS_ZERO
		);
		
	DFF_P1P2_DIFF_EXP_ABS : FlipFlopDVector
		generic map (BITCOUNT => 9)
		port map ( CLK => CLK, RESET => RESET, D => OUT_S1_DIFF_EXP_ABS, Q => IN_S2_DIFF_EXP_ABS);

	DFF_P1P2_A : FlipFlopDVector
		generic map (BITCOUNT => 32)
		port map ( CLK => CLK, RESET => RESET, D => OUT_S1_A, Q => IN_S2_A);

	DFF_P1P2_B : FlipFlopDVector
		generic map (BITCOUNT => 32)
		port map ( CLK => CLK, RESET => RESET, D => OUT_S1_B, Q => IN_S2_B);

	DFF_P1P2_IS_NAN : FlipFlopD
		port map ( CLK => CLK, RESET => RESET, D => OUT_S1_IS_NAN, Q => IN_S2_IS_NAN);

	DFF_P1P2_IS_ZERO : FlipFlopD
		port map ( CLK => CLK, RESET => RESET, D => OUT_S1_IS_ZERO, Q => IN_S2_IS_ZERO);




	P2 : PipelineStageTwo
		port map (
			A => IN_S2_A,
			B => IN_S2_B,
			DIFF_EXP_ABS => IN_S2_DIFF_EXP_ABS,
			IS_NAN_IN => IN_S2_IS_NAN,
			IS_ZERO_IN => IN_S2_IS_ZERO,
			EXP => OUT_S2_EXP,
			SUM_RESULT => OUT_S2_SUM_RESULT,
			SUM_OF => OUT_S2_SUM_OF,
			RES_SIGN => OUT_S2_RES_SIGN,
			IS_NAN_OUT => OUT_S2_IS_NAN,
			IS_ZERO_OUT => OUT_S2_IS_ZERO
		);

	DFF_P2P3_EXP : FlipFlopDVector
		generic map (BITCOUNT => 8)
		port map ( CLK => CLK, RESET => RESET, D => OUT_S2_EXP, Q => IN_S3_EXP);

	DFF_P2P3_SUM_RESULT : FlipFlopDVector
		generic map (BITCOUNT => 48)
		port map ( CLK => CLK, RESET => RESET, D => OUT_S2_SUM_RESULT, Q => IN_S3_SUM_RESULT);

	DFF_P2P3_SUM_OF : FlipFlopD
		port map ( CLK => CLK, RESET => RESET, D => OUT_S2_SUM_OF, Q => IN_S3_SUM_OF);

	DFF_P2P3_RES_SIGN : FlipFlopD
		port map ( CLK => CLK, RESET => RESET, D => OUT_S2_RES_SIGN, Q => IN_S3_RES_SIGN);

	DFF_P2P3_IS_NAN : FlipFlopD
		port map ( CLK => CLK, RESET => RESET, D => OUT_S2_IS_NAN, Q => IN_S3_IS_NAN);

	DFF_P2P3_IS_ZERO : FlipFlopD
		port map ( CLK => CLK, RESET => RESET, D => OUT_S2_IS_ZERO, Q => IN_S3_IS_ZERO);




	P3 : PipelineStageThree
		port map (
			RES_SIGN => IN_S3_RES_SIGN,
			EXP => IN_S3_EXP,
			MANT => IN_S3_SUM_RESULT,
			MANT_OF => IN_S3_SUM_OF,
			IS_NAN => IN_S3_IS_NAN,
			IS_ZERO => IN_S3_IS_ZERO,
			FINAL_RES => OUT_S3_FINAL_RES
		);
		
	DFF_P3OUT_RESULT : FlipFlopDVector
		generic map (BITCOUNT => 32)
		port map ( CLK => CLK, RESET => RESET, D => OUT_S3_FINAL_RES, Q => RESULT);

end Behavioral;

