LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SumDataAdapterTest IS
END SumDataAdapterTest;
 
ARCHITECTURE behavior OF SumDataAdapterTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SumDataAdapter
    PORT(
         X_IN : IN  std_logic_vector(30 downto 0);
         Y_IN : IN  std_logic_vector(30 downto 0);
         DIFF_EXP : IN  std_logic_vector(8 downto 0);
         X_OUT : OUT  std_logic_vector(47 downto 0);
         Y_OUT : OUT  std_logic_vector(47 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_IN : std_logic_vector(30 downto 0) := (others => '0');
   signal Y_IN : std_logic_vector(30 downto 0) := (others => '0');
   signal DIFF_EXP : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal X_OUT : std_logic_vector(47 downto 0);
   signal Y_OUT : std_logic_vector(47 downto 0);
   signal clock : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SumDataAdapter PORT MAP (
          X_IN => X_IN,
          Y_IN => Y_IN,
          DIFF_EXP => DIFF_EXP,
          X_OUT => X_OUT,
          Y_OUT => Y_OUT
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;
	
	test_process :process
   begin
		X_IN <= "111111110000010001000100000000";
		Y_IN <= "001001000000000010001000000000";
		DIFF_EXP <= "000000000"; --0
		wait for clock_period;
		X_IN <= "000000000000100000000001000000";
		Y_IN <= "000000000000001111111000000000";
		DIFF_EXP <= "000001000"; --8
		wait for clock_period;
		X_IN <= "000000000000000000111000000000";
		Y_IN <= "000010000000000000000000000111";
		DIFF_EXP <= "010011100"; --156
		wait for clock_period;
		X_IN <= "000000100000000000000000000000";
		Y_IN <= "000000001000000001111111111111";
		DIFF_EXP <= "000110000"; --48
		wait for clock_period;
		X_IN <= "000000000000000000000000010000";
		Y_IN <= "000000000000000000011100000000";
		DIFF_EXP <= "111111111"; --511
		wait for clock_period;
		X_IN <= "000000000000000000000000000000";
		Y_IN <= "000000000000011100000000000000";
		DIFF_EXP <= "000100100"; --36
		wait for clock_period;
		X_IN <= "000000000000000000000000000000";
		Y_IN <= "000000000000000000000000000000";
		DIFF_EXP <= "000001101"; --13
		wait for clock_period;
		X_IN <= "000000000000000001110001100100";
		Y_IN <= "000000000000000000000011110000";
		DIFF_EXP <= "000011111"; --31
		wait for clock_period;
   end process;

END;
