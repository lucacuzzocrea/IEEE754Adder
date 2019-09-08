library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PipelineStageThree is

	port(
		RES_SIGN : in std_logic;
		EXP : in std_logic_vector(7 downto 0);
		MANT : in std_logic_vector(47 downto 0);
		MANT_OF : in std_logic;
		IS_NAN, IS_ZERO : in std_logic;
		FINAL_RES : out std_logic_vector(31 downto 0)
	);
	
end PipelineStageThree;

architecture StageThreeArch of PipelineStageThree is

	component Normalizer is

		port(
			SIGN : in std_logic;
			EXP : in std_logic_vector(7 downto 0);
			MANT : in std_logic_vector(47 downto 0);
			SUM_OVERFLOW : in std_logic;
			IEEE_754_SUM : out std_logic_vector(31 downto 0)
		);

	end component;
		
	component OutputSelector is
		
		port(
			IS_NAN : in std_logic;
			IS_ZERO : in std_logic;
			IEEE_754_SUM : in std_logic_vector(31 downto 0);
			RESULT : out std_logic_vector(31 downto 0)		
		);
		
	end component;
	
	signal NORMALIZED : std_logic_vector(31 downto 0);

begin

	N : Normalizer
		port map (
			SIGN => RES_SIGN,
			EXP => EXP,
			MANT => MANT,
			SUM_OVERFLOW => MANT_OF,
			IEEE_754_SUM => NORMALIZED
		);
		
	OS : OutputSelector
		port map (
			IS_NAN => IS_NAN,
			IS_ZERO => IS_ZERO,
			IEEE_754_SUM => NORMALIZED,
			RESULT => FINAL_RES
		);

end StageThreeArch;

