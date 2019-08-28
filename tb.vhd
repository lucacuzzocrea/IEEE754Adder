--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:37:57 08/27/2019
-- Design Name:   
-- Module Name:   /home/ise/gianni/IEEE754Adder/tb.vhd
-- Project Name:  IEEE754Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pr
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pr
    PORT(
         xExp : IN  std_logic_vector(7 downto 0);
         yExp : IN  std_logic_vector(7 downto 0);
         xOut : OUT  std_logic_vector(7 downto 0);
         yOut : OUT  std_logic_vector(7 downto 0);
         needSwap : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal xExp : std_logic_vector(7 downto 0) := "01010101";
   signal yExp : std_logic_vector(7 downto 0) := "01010001";

 	--Outputs
   signal xOut : std_logic_vector(7 downto 0);
   signal yOut : std_logic_vector(7 downto 0);
   signal needSwap : std_logic;
	signal clock: std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pr PORT MAP (
          xExp => xExp,
          yExp => yExp,
          xOut => xOut,
          yOut => yOut,
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
