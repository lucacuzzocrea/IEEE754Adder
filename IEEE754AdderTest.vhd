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
   constant CLK_period : time := 100 ns; -- MESSA A CASO. VALUTARE IL PERIODO GIUSTO
 
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
      wait for 400 ns;
		RESET <= '0';

		-- TODO: FINIRE TEST
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00001000000000000000111000000000";
		Y <= "00000010000001111000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait for CLK_period; 
		X <= "00000000000000000000000000000000";
		Y <= "00000000000000000000000000000000";
      wait;
   end process;

END;
