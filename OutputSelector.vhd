library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OutputSelector is
	
	port(
		IS_NAN : in std_logic;
		IS_ZERO : in std_logic;
		IEEE_754_SUM : in std_logic_vector(31 downto 0);
		RESULT : out std_logic_vector(31 downto 0)		
	);
	
end OutputSelector;

architecture OutputSelectorArch of OutputSelector is

	signal NAN_OUT : std_logic_vector(31 downto 0);

begin

	NAN_OUT <= "0" & "11111111" & "10000000000000000000000";

	SELECT_PROCESS : process (IS_NAN, IS_ZERO, IEEE_754_SUM, NAN_OUT)
	
	begin
	
		for i in 31 downto 0 loop
			RESULT(i) <= (not(IS_NAN) and not(IS_ZERO) and IEEE_754_SUM(i)) or (IS_NAN and NAN_OUT(i));
		end loop;
		
	end process;

end OutputSelectorArch;

