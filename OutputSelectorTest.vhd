LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OutputSelectorTest IS
END OutputSelectorTest;
 
ARCHITECTURE behavior OF OutputSelectorTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OutputSelector
    PORT(
         IS_NAN : IN  std_logic;
         IS_ZERO : IN  std_logic;
         IEEE_754_SUM : IN  std_logic_vector(31 downto 0);
         RESULT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IS_NAN : std_logic := '0';
   signal IS_ZERO : std_logic := '0';
   signal IEEE_754_SUM : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal RESULT : std_logic_vector(31 downto 0);
   signal clock : std_logic; 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OutputSelector PORT MAP (
          IS_NAN => IS_NAN,
          IS_ZERO => IS_ZERO,
          IEEE_754_SUM => IEEE_754_SUM,
          RESULT => RESULT
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   test_proc: process
   begin
		IS_NAN <= '0';
		IS_ZERO <= '0';
		IEEE_754_SUM <= "0" & "00111000" & "00000100100010110000110";
      wait for clock_period;
		IS_NAN <= '0';
		IS_ZERO <= '0';
		IEEE_754_SUM <= "1" & "11000010" & "00000011110010111000000";
      wait for clock_period;
		IS_NAN <= '0';
		IS_ZERO <= '1';
		IEEE_754_SUM <= "0" & "00100111" & "01111111100000000000000";
      wait for clock_period;
		IS_NAN <= '0';
		IS_ZERO <= '1';
		IEEE_754_SUM <= "1" & "00000010" & "01110000000000000000111";
      wait for clock_period;
		IS_NAN <= '1';
		IS_ZERO <= '0';
		IEEE_754_SUM <= "0" & "11111111" & "00000000000000000000000";
      wait for clock_period;
		IS_NAN <= '1';
		IS_ZERO <= '0';
		IEEE_754_SUM <= "1" & "00001111" & "10000000000000111100000";
      wait for clock_period;
		IS_NAN <= '1';
		IS_ZERO <= '1';
		IEEE_754_SUM <= "0" & "00110000" & "00000000111000000000011";
      wait for clock_period;
		IS_NAN <= '1';
		IS_ZERO <= '1';
		IEEE_754_SUM <= "1" & "11111111" & "00110011001100110011100";
      wait for clock_period;
	end process;

END;
