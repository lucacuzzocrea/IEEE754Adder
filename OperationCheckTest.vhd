LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OperationCheckTest IS
END OperationCheckTest;
 
ARCHITECTURE behavior OF OperationCheckTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OperationCheck
    PORT(
         X_SIGN : IN  std_logic;
         Y_SIGN : IN  std_logic;
         OP : OUT  std_logic;
         RES_SIGN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X_SIGN : std_logic := '0';
   signal Y_SIGN : std_logic := '0';

 	--Outputs
   signal OP : std_logic;
   signal RES_SIGN : std_logic;
   signal clock : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OperationCheck PORT MAP (
          X_SIGN => X_SIGN,
          Y_SIGN => Y_SIGN,
          OP => OP,
          RES_SIGN => RES_SIGN
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
		X_SIGN <= '0';
		Y_SIGN <= '0';
      wait for clock_period;
		X_SIGN <= '0';
		Y_SIGN <= '1';
      wait for clock_period;
		X_SIGN <= '1';
		Y_SIGN <= '0';
      wait for clock_period;
		X_SIGN <= '1';
		Y_SIGN <= '1';
      wait for clock_period;
	end process;

END;
