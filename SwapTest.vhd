LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SwapTest IS
END SwapTest;
 
ARCHITECTURE behavior OF SwapTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Swap
    PORT(
         X_IN : IN  std_logic_vector(7 downto 0);
         Y_IN : IN  std_logic_vector(7 downto 0);
         SW : IN  std_logic;
         X_OUT : OUT  std_logic_vector(7 downto 0);
         Y_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Y_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal SW : std_logic := '0';

 	--Outputs
   signal X_OUT : std_logic_vector(7 downto 0);
   signal Y_OUT : std_logic_vector(7 downto 0);
	signal clock : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Swap PORT MAP (
          X_IN => X_IN,
          Y_IN => Y_IN,
          SW => SW,
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
 

	test_proc: process
   begin
		X_IN <= "00110000";
		Y_IN <= "00010000";
		SW <= '0';
      wait for clock_period;
		X_IN <= "01100000";
		Y_IN <= "01110000";
		SW <= '1';
      wait for clock_period;
		X_IN <= "01101000";
		Y_IN <= "00110110";
		SW <= '1';
      wait for clock_period;
		X_IN <= "00111111";
		Y_IN <= "01000000";
		SW <= '0';
      wait for clock_period;
		X_IN <= "00101001";
		Y_IN <= "00101000";
		SW <= '1';
      wait for clock_period;
		X_IN <= "00000000";
		Y_IN <= "00000000";
		SW <= '1';
      wait for clock_period;
		X_IN <= "00110000";
		Y_IN <= "00110000";
		SW <= '0';
      wait for clock_period;
		X_IN <= "11111111";
		Y_IN <= "00000000";
		SW <= '1';
      wait for clock_period;
	end process;

END;
