LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ZeroCounterTest IS
END ZeroCounterTest;
 
ARCHITECTURE behavior OF ZeroCounterTest IS 
 
    COMPONENT ZeroCounter
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Z_COUNT : OUT  std_logic_vector(2 downto 0);
         ALL_ZEROS : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Z_COUNT : std_logic_vector(2 downto 0);
   signal ALL_ZEROS : std_logic;
 
   constant clock_period : time := 10 ns;
	signal clock: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ZeroCounter PORT MAP (
          X => X,
          Z_COUNT => Z_COUNT,
          ALL_ZEROS => ALL_ZEROS
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   stim_proc: process
   begin
		X <= "00000000";
      wait for clock_period;
		X <= "00000001";
      wait for clock_period;
		X <= "00000010";
      wait for clock_period;
		X <= "00000100";
      wait for clock_period;
		X <= "00001000";
      wait for clock_period;
		X <= "00010000";
      wait for clock_period;
		X <= "00100000";
      wait for clock_period;
		X <= "01000000";
      wait for clock_period;
		X <= "10000000";
      wait for clock_period;
		X <= "00100110";
      wait for clock_period;
		X <= "11111111";
      wait for clock_period;
		X <= "01111111";
      wait for clock_period;
		X <= "00111111";
      wait for clock_period;
		X <= "00101111";
      wait for clock_period;
   end process;

END;
