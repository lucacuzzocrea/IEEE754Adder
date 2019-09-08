library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PipelineStageTwo is

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
	
end PipelineStageTwo;

architecture StageTwoArch of PipelineStageTwo is

	component SumDataAdapter is

		port(
			X_IN, Y_IN : in std_logic_vector(30 downto 0);
			DIFF_EXP : in std_logic_vector(8 downto 0);
			X_OUT, Y_OUT : out std_logic_vector(47 downto 0)
		);
		
	end component;
		
	component CarryLookAhead is

		port(
			X, Y : in std_logic_vector(47 downto 0);
			OP : in std_logic;
			RESULT : out std_logic_vector(47 downto 0);
			OVERFLOW : out std_logic
		);
		
	end component;
		
	component OperationCheck is

		port(
			X_SIGN, Y_SIGN : in std_logic;
			OP, RES_SIGN : out std_logic
		);
		
	end component;
	
	signal MANT_EXT_A : std_logic_vector(47 downto 0);
	signal MANT_EXT_B : std_logic_vector(47 downto 0);
	signal OP : std_logic;

begin

	SH : SumDataAdapter
		port map (
			X_IN => A(30 downto 0), Y_IN => B(30 downto 0), 
			DIFF_EXP => DIFF_EXP_ABS, X_OUT => MANT_EXT_A, Y_OUT => MANT_EXT_B
		);
		
	OC : OperationCheck
		port map (X_SIGN => A(31), Y_SIGN => B(31), OP => OP, RES_SIGN => RES_SIGN);
		
	CLA : CarryLookAhead
		port map (
			X => MANT_EXT_A, 
			Y => MANT_EXT_B, 
			OP => OP, 
			RESULT => SUM_RESULT, 
			OVERFLOW => SUM_OF
		);

	IS_NAN_OUT <= IS_NAN_IN;
	IS_ZERO_OUT <= IS_ZERO_IN;
	EXP <= A(30 downto 23);

end StageTwoArch;

