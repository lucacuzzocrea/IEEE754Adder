LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TwoComplementTest IS
END TwoComplementTest;
 
ARCHITECTURE behavior OF TwoComplementTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TwoComplement
    PORT(
         DIFF_EXP_C2 : IN  std_logic_vector(7 downto 0);
         DIFF_EXP : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DIFF_EXP_C2 : std_logic_vector(7 downto 0) := "00000000";

 	--Outputs
   signal DIFF_EXP : std_logic_vector(7 downto 0);
	signal clock : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TwoComplement PORT MAP (
          DIFF_EXP_C2 => DIFF_EXP_C2,
          DIFF_EXP => DIFF_EXP
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
	
	test_process :process
   begin
		DIFF_EXP_C2 <= "01001110";
		wait for clock_period;
		DIFF_EXP_C2 <= "11111111";
		wait for clock_period;
		DIFF_EXP_C2 <= "10000000";
		wait for clock_period;
		DIFF_EXP_C2 <= "01111111";
		wait for clock_period;
		DIFF_EXP_C2 <= "01100101";
		wait for clock_period;
		DIFF_EXP_C2 <= "10011101";
		wait for clock_period;
		DIFF_EXP_C2 <= "11100010";
		wait for clock_period;
		DIFF_EXP_C2 <= "10010011";
		wait for clock_period;
   end process;

END;
