LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ShiftRight48Test IS
END ShiftRight48Test;
 
ARCHITECTURE behavior OF ShiftRight48Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRight48
    PORT(
         N : IN  std_logic_vector(47 downto 0);
         PLACES : IN  std_logic_vector(8 downto 0);
         RESULT : OUT  std_logic_vector(47 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal N : std_logic_vector(47 downto 0) := (others => '0');
   signal PLACES : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal RESULT : std_logic_vector(47 downto 0);
   signal clock : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRight48 PORT MAP (
          N => N,
          PLACES => PLACES,
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
		N <= "000000000011111000001110000000000000000000000000";
		PLACES <= "000000000"; --0
      wait for clock_period;
		N <= "000000000000001010000100000000000100000000000000";
		PLACES <= "000001000"; --8
      wait for clock_period;
		N <= "000000100000111101000000000000010000000000000000";
		PLACES <= "010011100"; --156
      wait for clock_period;
		N <= "000011100000000001111001101000000000000111110000";
		PLACES <= "000110000"; --48
      wait for clock_period;
		N <= "000000011111110000000001010101000110011000000000";
		PLACES <= "111111111"; --511
      wait for clock_period;
		N <= "000000111000000000011100000000000000011100000000";
		PLACES <= "000100100"; --36
      wait for clock_period;
		N <= "000000000000111110000000000111110000000000011111";
		PLACES <= "000001101"; --13
      wait for clock_period;
		N <= "000001000111100000001100000000111111111111111111";
		PLACES <= "000011111"; --31
      wait for clock_period;
		N <= "000000000011111111111111111111111000000000010001";
		PLACES <= "000000111"; --7
      wait for clock_period;
		N <= "111111111111111111111111111111111111111111111111";
		PLACES <= "001000000"; --64
      wait for clock_period;
		N <= "111111111111111111111111111111111111111111111111";
		PLACES <= "000101111"; --47
      wait for clock_period;
		N <= "000000000000000000000000000000000000000000000011";
		PLACES <= "000000001"; --1
      wait for clock_period;
		N <= "000000000000000000000011111000000000000000000000";
		PLACES <= "000000000"; --0
      wait for clock_period;
		N <= "000000000001111000000000000000000000000000000000";
		PLACES <= "000011011"; --27
      wait for clock_period;
	end process;

END;
