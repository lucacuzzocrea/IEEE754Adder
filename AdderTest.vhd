LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY AdderTest IS
END AdderTest;
 
ARCHITECTURE behavior OF AdderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         carry_in : IN  std_logic;
         result : OUT  std_logic_vector(7 downto 0);
         carry_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal carry_in : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   signal carry_out : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
	signal clock: std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          X => X,
          Y => Y,
          carry_in => carry_in,
          result => result,
          carry_out => carry_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 
	x <= "00010101";
	y <= "00001110";

END;
