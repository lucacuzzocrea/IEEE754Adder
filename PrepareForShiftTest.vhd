LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY PrepareForShiftTest IS
END PrepareForShiftTest;
 
ARCHITECTURE behavior OF PrepareForShiftTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PrepareForShift
    PORT(
         X : IN  std_logic_vector(30 downto 0);
         Y : IN  std_logic_vector(30 downto 0);
         DIFF_EXP : OUT  std_logic_vector(8 downto 0);
         NEED_SWAP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(30 downto 0) := (others => '0');
   signal Y : std_logic_vector(30 downto 0) := (others => '0');

 	--Outputs
   signal DIFF_EXP : std_logic_vector(8 downto 0);
   signal NEED_SWAP : std_logic;
   signal clock : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PrepareForShift PORT MAP (
          X => X,
          Y => Y,
          DIFF_EXP => DIFF_EXP,
          NEED_SWAP => NEED_SWAP
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
		X <= "00011100" & "00001110000000000000000";
		Y <= "00100011" & "00100000000000000000000";
      wait for clock_period;
		X <= "00110000" & "00000000111000000000000";
		Y <= "10110000" & "00000001111000000000000";
      wait for clock_period;
		X <= "00001000" & "00000011001100000000000";
		Y <= "00011000" & "00000000100000000001110";
      wait for clock_period;
		X <= "00001100" & "00000000000000000000000";
		Y <= "00001100" & "00000000000000000000000";
      wait for clock_period;
		X <= "00010010" & "00000000011001000100000";
		Y <= "00010010" & "00000010011000000000000";
      wait for clock_period;
		X <= "01011000" & "00000000100000000000000";
		Y <= "01011000" & "00000000000000000000000";
      wait for clock_period;
		X <= "00100110" & "00000000011100001000100";
		Y <= "00001010" & "00000000011100001000100";
      wait for clock_period;
		X <= "01111100" & "00000001110000000101010";
		Y <= "00000100" & "00000101110000100110000";
      wait for clock_period;
		wait for clock_period;
		X <= "00100000" & "00000110000000000000000";
		Y <= "00001000" & "00000000100100100100000";
      wait for clock_period;
	end process;

END;
