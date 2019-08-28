LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FullAdderTest IS
END FullAdderTest;
 
ARCHITECTURE behavior OF FullAdderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullAdder
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         C_IN : IN  std_logic;
         S : OUT  std_logic;
         C_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal C_IN : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal C_OUT : std_logic;
	signal clock : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          X => X,
          Y => Y,
          C_IN => C_IN,
          S => S,
          C_OUT => C_OUT
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
		X <= '0';
		Y <= '0';
		C_IN <= '0';
		wait for clock_period;
		X <= '1';
		Y <= '0';
		C_IN <= '0';
		wait for clock_period;
		X <= '0';
		Y <= '1';
		C_IN <= '0';
		wait for clock_period;
		X <= '0';
		Y <= '0';
		C_IN <= '1';
		wait for clock_period;
		X <= '1';
		Y <= '1';
		C_IN <= '0';
		wait for clock_period;
		X <= '1';
		Y <= '0';
		C_IN <= '1';
		wait for clock_period;
		X <= '0';
		Y <= '1';
		C_IN <= '1';
		wait for clock_period;
		X <= '1';
		Y <= '1';
		C_IN <= '1';
		wait for clock_period;
   end process;

END;
