LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY ComparatorTest IS
END ComparatorTest;

ARCHITECTURE behavior OF ComparatorTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         X_MANT : IN  std_logic_vector(7 downto 0);
         Y_MANT : IN  std_logic_vector(7 downto 0);
         NEED_SWAP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X_MANT : std_logic_vector(7 downto 0) := (others => '0');
   signal Y_MANT : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal NEED_SWAP : std_logic;
	signal clock: std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          X_MANT => X_MANT,
          Y_MANT => Y_MANT,
          NEED_SWAP => NEED_SWAP
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
		X_MANT <= "00000000";
		Y_MANT <= "00000000";
      wait for clock_period;
		X_MANT <= "01011010";
		Y_MANT <= "01100000";
      wait for clock_period;
		X_MANT <= "00111100";
		Y_MANT <= "10000100";
      wait for clock_period;
		X_MANT <= "10000000";
		Y_MANT <= "01111111";
      wait for clock_period;
		X_MANT <= "01110100";
		Y_MANT <= "01101000";
      wait for clock_period;
		X_MANT <= "01111111";
		Y_MANT <= "10000000";
      wait for clock_period;
		X_MANT <= "10101010";
		Y_MANT <= "01010101";
      wait for clock_period;
		X_MANT <= "01010101";
		Y_MANT <= "10101010";
      wait for clock_period;
	end process;

END;
