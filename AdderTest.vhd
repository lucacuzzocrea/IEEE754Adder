LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY AdderTest IS
END AdderTest;
 
ARCHITECTURE behavior OF AdderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CarryLookAhead
    PORT(
         X : IN  std_logic_vector(47 downto 0);
         Y : IN  std_logic_vector(47 downto 0);
         OP : IN  std_logic;
         RESULT : OUT  std_logic_vector(47 downto 0);
         OVERFLOW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(47 downto 0) := (others => '0');
   signal Y : std_logic_vector(47 downto 0) := (others => '0');
   signal OP : std_logic := '0';

 	--Outputs
   signal RESULT : std_logic_vector(47 downto 0);
   signal OVERFLOW : std_logic;
   signal clock : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CarryLookAhead PORT MAP (
          X => X,
          Y => Y,
          OP => OP,
          RESULT => RESULT,
          OVERFLOW => OVERFLOW
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
		--test
      wait for clock_period;
	end process;

END;
