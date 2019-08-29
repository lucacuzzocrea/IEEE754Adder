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
         isSub : IN  std_logic;
         result : OUT  std_logic_vector(7 downto 0);
         overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal isSub : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   signal overflow : std_logic;
 
	signal clock: std_logic;
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AddSub PORT MAP (
          X => X,
          Y => Y,
          isSub => isSub,
          result => result,
          overflow => overflow
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
		isSub <= '0';
      wait for clock_period;
		X <= "10010111";
		Y <= "11100011";
		isSub <= '0';
      wait for clock_period;
		X <= "10000101";
		Y <= "01111011";
		isSub <= '0';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		isSub <= '0';
      wait for clock_period;
		X <= "00101011";
		Y <= "00101010";
		isSub <= '0';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		isSub <= '0';
      wait for clock_period;
		X <= "10000000";
		Y <= "10000000";
		isSub <= '0';
      wait for clock_period;
		X <= "00000000";
		Y <= "11111111";
		isSub <= '0';
		X <= "00110011";
		Y <= "11001100";
		isSub <= '1';
      wait for clock_period;
		X <= "10010111";
		Y <= "11100011";
		isSub <= '1';
      wait for clock_period;
		X <= "10000101";
		Y <= "01111011";
		isSub <= '1';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		isSub <= '1';
      wait for clock_period;
		X <= "00101011";
		Y <= "00101010";
		isSub <= '1';
      wait for clock_period;
		X <= "11111111";
		Y <= "11111111";
		isSub <= '1';
      wait for clock_period;
		X <= "10000000";
		Y <= "10000000";
		isSub <= '1';
      wait for clock_period;
		X <= "00000000";
		Y <= "11111111";
		isSub <= '1';
      wait for clock_period;
		X <= "11111111";
		Y <= "00000000";
		isSub <= '1';
      wait for clock_period;
   end process;

END;
