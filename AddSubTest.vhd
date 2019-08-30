LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY AddSubTest IS
END AddSubTest;
 
ARCHITECTURE behavior OF AddSubTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AddSub
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         IS_SUB : IN  std_logic;
         RESULT : OUT  std_logic_vector(7 downto 0);
         OVERFLOW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal IS_SUB : std_logic := '0';

 	--Outputs
   signal RESULT : std_logic_vector(7 downto 0);
   signal OVERFLOW : std_logic;
 
	signal clock: std_logic;
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AddSub PORT MAP (
          X => X,
          Y => Y,
          IS_SUB => IS_SUB,
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
		X <= "00110011";
		Y <= "11001100";
		IS_SUB <= '0';
      wait for clock_period;
		X <= "10010111";
		Y <= "11100011";
		IS_SUB <= '0';
      wait for clock_period;
		X <= "10000101";
		Y <= "01111011";
		IS_SUB <= '0';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		IS_SUB <= '0';
      wait for clock_period;
		X <= "00101011";
		Y <= "00101010";
		IS_SUB <= '0';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		IS_SUB <= '0';
      wait for clock_period;
		X <= "10000000";
		Y <= "10000000";
		IS_SUB <= '0';
      wait for clock_period;
		X <= "00000000";
		Y <= "11111111";
		IS_SUB <= '0';
		X <= "00110011";
		Y <= "11001100";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "10010111";
		Y <= "11100011";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "10000101";
		Y <= "01111011";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "00101011";
		Y <= "00101010";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "10000000";
		Y <= "10000000";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "00000000";
		Y <= "11111111";
		IS_SUB <= '1';
      wait for clock_period;
		X <= "11111111";
		Y <= "00000000";
		IS_SUB <= '1';
      wait for clock_period;
   end process;

END;
