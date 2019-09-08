LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY NormalizerTest IS
END NormalizerTest;
 
ARCHITECTURE behavior OF NormalizerTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Normalizer
    PORT(
         SIGN : IN  std_logic;
         EXP : IN  std_logic_vector(7 downto 0);
         MANT : IN  std_logic_vector(47 downto 0);
         SUM_OVERFLOW : IN  std_logic;
         IEEE_754_SUM : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SIGN : std_logic := '0';
   signal EXP : std_logic_vector(7 downto 0) := (others => '0');
   signal MANT : std_logic_vector(47 downto 0) := (others => '0');
   signal SUM_OVERFLOW : std_logic := '0';

 	--Outputs
   signal IEEE_754_SUM : std_logic_vector(31 downto 0);
 
   constant clock_period : time := 10 ns;
	signal clock : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Normalizer PORT MAP (
          SIGN => SIGN,
          EXP => EXP,
          MANT => MANT,
          SUM_OVERFLOW => SUM_OVERFLOW,
          IEEE_754_SUM => IEEE_754_SUM
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		SIGN <= '1';
		EXP <= "10010100";
		MANT <= "100101010001001001000001111101010000001000110001";
		SUM_OVERFLOW <= '1';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "10010100";
		MANT <= "000000000000000000000000000000000000000000000000";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "00000010";
		MANT <= "000000010001001001000001111101010000001000110001";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "11111110";
		MANT <= "111111111111111111111111111111111111111111111111";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "11111110";
		MANT <= "111111111111111111111111111111111111111111111111";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "11111111";
		MANT <= "100101010001001001000001111101010000001000110001";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "11111111";
		MANT <= "100101010001001001000001111101010000001000110001";
		SUM_OVERFLOW <= '1';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "11111111";
		MANT <= "000000000000001001000001111101010000001000110001";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "00000001";
		MANT <= "010101010001001001000001111101010000001000110001";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
		SIGN <= '1';
		EXP <= "00000000";
		MANT <= "100101010001001001000001111101010000001000110001";
		SUM_OVERFLOW <= '0';
      wait for clock_period;
   end process;

END;
