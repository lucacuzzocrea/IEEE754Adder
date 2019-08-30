LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY SpecialCasesTest IS
END SpecialCasesTest;
 
ARCHITECTURE behavior OF SpecialCasesTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SpecialCasesCheck
    PORT(
         X : IN  std_logic_vector(31 downto 0);
         Y : IN  std_logic_vector(31 downto 0);
         IS_NAN : OUT  std_logic;
         IS_ZERO : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(31 downto 0) := (others => '0');
   signal Y : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal IS_NAN : std_logic;
   signal IS_ZERO : std_logic;
	signal clock : std_logic;
	
	
	signal expectedNaN : std_logic;
	signal expectedZero : std_logic;
	signal error : std_logic;
 
   constant clock_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SpecialCasesCheck PORT MAP (
          X => X,
          Y => Y,
          IS_NAN => IS_NAN,
          IS_ZERO => IS_ZERO
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   test_process :process
   begin
		X <= "01111111111111111111111111111111"; -- NaN
		Y <= "01111111111111111111111111111111"; -- NaN
		expectedNaN <= '1';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01111111111111111111111111111111"; -- NaN
		Y <= "01000101100101100111100101001100"; -- 4815.162342
		expectedNaN <= '1';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01000101100101100111100101001100"; -- 4815.162342
		Y <= "01111111111111111111111111111111"; -- NaN
		expectedNaN <= '1';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01111111111111111111111111111111"; -- NaN
		Y <= "01111111100000000000000000000000"; -- +Inf
		expectedNaN <= '1';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01111111100000000000000000000000"; -- +Inf
		Y <= "01111111100000000000000000000000"; -- +Inf
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01111111100000000000000000000000"; -- +Inf
		Y <= "11111111100000000000000000000000"; -- -Inf
		expectedNaN <= '1';
		expectedZero <= '1';
		wait for clock_period;
		X <= "11111111100000000000000000000000"; -- -Inf
		Y <= "01111111100000000000000000000000"; -- +Inf
		expectedNaN <= '1';
		expectedZero <= '1';
		wait for clock_period;
		X <= "01000101100101100111100101001100"; -- 4815.162342
		Y <= "01111111100000000000000000000000"; -- +Inf
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "11111111100000000000000000000000"; -- -Inf
		Y <= "01000101100101100111100101001100"; -- 4815.162342
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01000101100101100111100101001100"; -- 4815.162342
		Y <= "01000101100101100111100101001100"; -- 4815.162342
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01000101100101100111100101001100"; -- 4815.162342
		Y <= "01111101001101101011100011111101"; -- 1.518e+37
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01000101100101100111100101001100"; -- 4815.162342
		Y <= "11000101100101100111100101001100"; -- -4815.162342
		expectedNaN <= '0';
		expectedZero <= '1';
		wait for clock_period;
		X <= "11000101100101100111100101001100"; -- -4815.162342
		Y <= "01000101100101100111100101001100"; -- 4815.162342
		expectedNaN <= '0';
		expectedZero <= '1';
		wait for clock_period;
		X <= "01111101001101101011100011111101"; -- 1.518e+37
		Y <= "11000101100101100111100101001100"; -- -4815.162342
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "11000101100101100111100101001100"; -- -4815.162342
		Y <= "11000101100101100111100101001100"; -- -4815.162342
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "11000101100101100111100101001100"; -- -4815.162342
		Y <= "11111101001101101011100011111101"; -- -1.518e+37
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "01000101100101100111100101001100"; -- 4815.162342
		Y <= "01111101001101101011100011111101"; -- 1.518e+37
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "00000000000000000000000000000000"; -- 0
		Y <= "00000000000000000000000000000000"; -- 0
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
		X <= "00000000000000000000000000000000"; -- +0
		Y <= "10000000000000000000000000000000"; -- -0
		expectedNaN <= '0';
		expectedZero <= '1';
		wait for clock_period;
		X <= "00000000000000000000000000000000"; -- 0
		Y <= "01000101100101100111100101001100"; -- 4815.162342
		expectedNaN <= '0';
		expectedZero <= '0';
		wait for clock_period;
   end process;

	error <= (expectedNaN xor IS_NAN) or (expectedZero xor IS_ZERO);

END;
