library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PipelineStageOne is

	port(
		X, Y : in std_logic_vector(31 downto 0);
		DIFF_EXP_ABS : out std_logic_vector(8 downto 0);
		A, B : out std_logic_vector(31 downto 0);
		IS_NAN, IS_ZERO : out std_logic
	);
	
end PipelineStageOne;

architecture StageOneArch of PipelineStageOne is

	component SpecialCasesCheck is

		port(
			X, Y : in std_logic_vector(31 downto 0);
			IS_NAN, IS_ZERO : out std_logic
		);
		
	end component;
	
	component PrepareForShift is

		port(
			X, Y : in std_logic_vector(30 downto 0);
			DIFF_EXP : out std_logic_vector(8 downto 0);
			NEED_SWAP : out std_logic
		);
		
	end component;
	
	component Swap is

		generic(
			BITCOUNT : integer := 8
		);
		
		port(
			X_IN, Y_IN : in std_logic_vector((BITCOUNT-1) downto 0);
			SW : in std_logic;
			X_OUT, Y_OUT : out std_logic_vector((BITCOUNT-1) downto 0)
		);
		
	end component;
	
	component TwoComplement is

		generic(
			BITCOUNT : integer := 8
		);
		
		port(
			DIFF_EXP_C2 : in std_logic_vector((BITCOUNT-1) downto 0);
			DIFF_EXP : out std_logic_vector((BITCOUNT-1) downto 0)
		);
		
	end component;
	
	signal DIFF_EXP_C2 : std_logic_vector(8 downto 0);
	signal SW : std_logic;

begin

	SPC : SpecialCasesCheck
		port map (X => X, Y => Y, IS_NAN => IS_NAN, IS_ZERO => IS_ZERO);
		
	PFS : PrepareForShift
		port map (X => X(30 downto 0), Y => Y(30 downto 0), DIFF_EXP => DIFF_EXP_C2, NEED_SWAP => SW);

	S : Swap
		generic map (BITCOUNT => 32)
		port map (X_IN => X, Y_IN => Y, SW => SW, X_OUT => A, Y_OUT => B);
		
	C2 : TwoComplement
		generic map (BITCOUNT => 9)
		port map (DIFF_EXP_C2 => DIFF_EXP_C2, DIFF_EXP => DIFF_EXP_ABS);
	
end StageOneArch;

