LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY ComparatorTest IS
END ComparatorTest;

ARCHITECTURE behavior OF ComparatorTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         xT : IN  std_logic_vector(7 downto 0);
         yT : IN  std_logic_vector(7 downto 0);
         needSwap : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal xT : std_logic_vector(7 downto 0) := "11111111";
   signal yT : std_logic_vector(7 downto 0) := "11111111";

 	--Outputs
   signal needSwap : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
	signal clock: std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          xT => xT,
          yT => yT,
          needSwap => needSwap
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
