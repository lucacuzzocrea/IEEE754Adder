LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY IEEE754AdderTest IS
END IEEE754AdderTest;
 
ARCHITECTURE behavior OF IEEE754AdderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IEEE754Adder
    PORT(
         X : IN  std_logic_vector(31 downto 0);
         Y : IN  std_logic_vector(31 downto 0);
         RESET : IN  std_logic;
         CLK : IN  std_logic;
         RESULT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(31 downto 0) := (others => '0');
   signal Y : std_logic_vector(31 downto 0) := (others => '0');
   signal RESET : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal RESULT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns; -- MESSA A CASO. VALUTARE IL PERIODO GIUSTO
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IEEE754Adder PORT MAP (
          X => X,
          Y => Y,
          RESET => RESET,
          CLK => CLK,
          RESULT => RESULT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      RESET <= '1';
      wait for 2*CLK_period;
		RESET <= '0';

		-- TODO: FINIRE TEST
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00001000000000000000111000000000";
		Y <= "00000010000001111000000000000000";
      wait for CLK_period; 
		X <= "01000000010110011001100110011010";
		Y <= "01100110010001110000110110000001";
      wait for CLK_period; 
		X <= "01111111100000000000000000000000";
		Y <= "11111111100000000000000000000000";
      wait for CLK_period; 
		X <= "01000000100000000000000000000000";
		Y <= "01111111100000000000000000000000";
      wait for CLK_period; 
		X <= "00000000100100000000000000000000";
		Y <= "10000000011111111111111111111111";
      wait for CLK_period; 
		X <= "11001100000111100111101111110100";
		Y <= "11001111111110111111011100110110";
      wait for CLK_period; 
		X <= "01111111011111111111111111111111";
		Y <= "01111110011111111111111111111111";
      wait for CLK_period; 
		X <= "11111111111111111111111111111111";
		Y <= "00111111100000000000000000000000";
      wait for CLK_period; 
		X <= "00110110100111000010111100011010";
		Y <= "11111111111111111111000001111111";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "10000000000000000000000000000000";
      wait for CLK_period; 
		X <= "01001100111010110111100110100011";
		Y <= "11001100111010110111100110100011";
      wait for CLK_period; 
		X <= "01000010001010000000000000000000";
		Y <= "01000001101110000000000000000000";
      wait for CLK_period; 
		X <= "01101000111011011000111011010101";
		Y <= "00011001001011011001100001111101";
      wait;
   end process;

END;
