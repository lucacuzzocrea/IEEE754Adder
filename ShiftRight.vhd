library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ShiftRight48 is
	
	port(
		N : in std_logic_vector(47 downto 0);
		PLACES : in std_logic_vector(5 downto 0);
		RESULT : out std_logic_vector(47 downto 0)
	);

end ShiftRight48;


architecture ShiftRightArch of ShiftRight48 is

begin

	asdf: process (N, PLACES)
	begin
		case PLACES is
			when "000000" => RESULT <= N( 47 downto 0 );
			when "000001" => RESULT <= "0" & N( 47 downto 1 );
			when "000010" => RESULT <= "00" & N( 47 downto 2 );
			when "000011" => RESULT <= "000" & N( 47 downto 3 );
			when "000100" => RESULT <= "0000" & N( 47 downto 4 );
			when "000101" => RESULT <= "00000" & N( 47 downto 5 );
			when "000110" => RESULT <= "000000" & N( 47 downto 6 );
			when "000111" => RESULT <= "0000000" & N( 47 downto 7 );
			when "001000" => RESULT <= "00000000" & N( 47 downto 8 );
			when "001001" => RESULT <= "000000000" & N( 47 downto 9 );
			when "001010" => RESULT <= "0000000000" & N( 47 downto 10 );
			when "001011" => RESULT <= "00000000000" & N( 47 downto 11 );
			when "001100" => RESULT <= "000000000000" & N( 47 downto 12 );
			when "001101" => RESULT <= "0000000000000" & N( 47 downto 13 );
			when "001110" => RESULT <= "00000000000000" & N( 47 downto 14 );
			when "001111" => RESULT <= "000000000000000" & N( 47 downto 15 );
			when "010000" => RESULT <= "0000000000000000" & N( 47 downto 16 );
			when "010001" => RESULT <= "00000000000000000" & N( 47 downto 17 );
			when "010010" => RESULT <= "000000000000000000" & N( 47 downto 18 );
			when "010011" => RESULT <= "0000000000000000000" & N( 47 downto 19 );
			when "010100" => RESULT <= "00000000000000000000" & N( 47 downto 20 );
			when "010101" => RESULT <= "000000000000000000000" & N( 47 downto 21 );
			when "010110" => RESULT <= "0000000000000000000000" & N( 47 downto 22 );
			when "010111" => RESULT <= "00000000000000000000000" & N( 47 downto 23 );
			when "011000" => RESULT <= "000000000000000000000000" & N( 47 downto 24 );
			when "011001" => RESULT <= "0000000000000000000000000" & N( 47 downto 25 );
			when "011010" => RESULT <= "00000000000000000000000000" & N( 47 downto 26 );
			when "011011" => RESULT <= "000000000000000000000000000" & N( 47 downto 27 );
			when "011100" => RESULT <= "0000000000000000000000000000" & N( 47 downto 28 );
			when "011101" => RESULT <= "00000000000000000000000000000" & N( 47 downto 29 );
			when "011110" => RESULT <= "000000000000000000000000000000" & N( 47 downto 30 );
			when "011111" => RESULT <= "0000000000000000000000000000000" & N( 47 downto 31 );
			when "100000" => RESULT <= "00000000000000000000000000000000" & N( 47 downto 32 );
			when "100001" => RESULT <= "000000000000000000000000000000000" & N( 47 downto 33 );
			when "100010" => RESULT <= "0000000000000000000000000000000000" & N( 47 downto 34 );
			when "100011" => RESULT <= "00000000000000000000000000000000000" & N( 47 downto 35 );
			when "100100" => RESULT <= "000000000000000000000000000000000000" & N( 47 downto 36 );
			when "100101" => RESULT <= "0000000000000000000000000000000000000" & N( 47 downto 37 );
			when "100110" => RESULT <= "00000000000000000000000000000000000000" & N( 47 downto 38 );
			when "100111" => RESULT <= "000000000000000000000000000000000000000" & N( 47 downto 39 );
			when "101000" => RESULT <= "0000000000000000000000000000000000000000" & N( 47 downto 40 );
			when "101001" => RESULT <= "00000000000000000000000000000000000000000" & N( 47 downto 41 );
			when "101010" => RESULT <= "000000000000000000000000000000000000000000" & N( 47 downto 42 );
			when "101011" => RESULT <= "0000000000000000000000000000000000000000000" & N( 47 downto 43 );
			when "101100" => RESULT <= "00000000000000000000000000000000000000000000" & N( 47 downto 44 );
			when "101101" => RESULT <= "000000000000000000000000000000000000000000000" & N( 47 downto 45 );
			when "101110" => RESULT <= "0000000000000000000000000000000000000000000000" & N( 47 downto 46 );
			when others   => RESULT <= "000000000000000000000000000000000000000000000000";
		end case;
	end process;


end ShiftRightArch;
