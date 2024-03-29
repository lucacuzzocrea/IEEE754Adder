library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.UTILS.ALL;


entity ShiftLeft48 is

	port(
		N : in std_logic_vector(47 downto 0);
		PLACES : in std_logic_vector(8 downto 0);
		RESULT : out std_logic_vector(47 downto 0)
	);

end ShiftLeft48;

architecture ShiftLeftArch of ShiftLeft48 is

begin

	shift_process: process (N, PLACES)
		variable POSSIBLE_SHIFTS : ARRAY_OF_STD_LOGIC48;
	begin
	
		case PLACES is
			when "000000000" => RESULT <= N( 47 downto 0 );
			when "000000001" => RESULT <= N( 46 downto 0 ) & "0";
			when "000000010" => RESULT <= N( 45 downto 0 ) & "00";
			when "000000011" => RESULT <= N( 44 downto 0 ) & "000";
			when "000000100" => RESULT <= N( 43 downto 0 ) & "0000";
			when "000000101" => RESULT <= N( 42 downto 0 ) & "00000";
			when "000000110" => RESULT <= N( 41 downto 0 ) & "000000";
			when "000000111" => RESULT <= N( 40 downto 0 ) & "0000000";
			when "000001000" => RESULT <= N( 39 downto 0 ) & "00000000";
			when "000001001" => RESULT <= N( 38 downto 0 ) & "000000000";
			when "000001010" => RESULT <= N( 37 downto 0 ) & "0000000000";
			when "000001011" => RESULT <= N( 36 downto 0 ) & "00000000000";
			when "000001100" => RESULT <= N( 35 downto 0 ) & "000000000000";
			when "000001101" => RESULT <= N( 34 downto 0 ) & "0000000000000";
			when "000001110" => RESULT <= N( 33 downto 0 ) & "00000000000000";
			when "000001111" => RESULT <= N( 32 downto 0 ) & "000000000000000";
			when "000010000" => RESULT <= N( 31 downto 0 ) & "0000000000000000";
			when "000010001" => RESULT <= N( 30 downto 0 ) & "00000000000000000";
			when "000010010" => RESULT <= N( 29 downto 0 ) & "000000000000000000";
			when "000010011" => RESULT <= N( 28 downto 0 ) & "0000000000000000000";
			when "000010100" => RESULT <= N( 27 downto 0 ) & "00000000000000000000";
			when "000010101" => RESULT <= N( 26 downto 0 ) & "000000000000000000000";
			when "000010110" => RESULT <= N( 25 downto 0 ) & "0000000000000000000000";
			when "000010111" => RESULT <= N( 24 downto 0 ) & "00000000000000000000000";
			when "000011000" => RESULT <= N( 23 downto 0 ) & "000000000000000000000000";
			when "000011001" => RESULT <= N( 22 downto 0 ) & "0000000000000000000000000";
			when "000011010" => RESULT <= N( 21 downto 0 ) & "00000000000000000000000000";
			when "000011011" => RESULT <= N( 20 downto 0 ) & "000000000000000000000000000";
			when "000011100" => RESULT <= N( 19 downto 0 ) & "0000000000000000000000000000";
			when "000011101" => RESULT <= N( 18 downto 0 ) & "00000000000000000000000000000";
			when "000011110" => RESULT <= N( 17 downto 0 ) & "000000000000000000000000000000";
			when "000011111" => RESULT <= N( 16 downto 0 ) & "0000000000000000000000000000000";
			when "000100000" => RESULT <= N( 15 downto 0 ) & "00000000000000000000000000000000";
			when "000100001" => RESULT <= N( 14 downto 0 ) & "000000000000000000000000000000000";
			when "000100010" => RESULT <= N( 13 downto 0 ) & "0000000000000000000000000000000000";
			when "000100011" => RESULT <= N( 12 downto 0 ) & "00000000000000000000000000000000000";
			when "000100100" => RESULT <= N( 11 downto 0 ) & "000000000000000000000000000000000000";
			when "000100101" => RESULT <= N( 10 downto 0 ) & "0000000000000000000000000000000000000";
			when "000100110" => RESULT <= N(  9 downto 0 ) & "00000000000000000000000000000000000000";
			when "000100111" => RESULT <= N(  8 downto 0 ) & "000000000000000000000000000000000000000";
			when "000101000" => RESULT <= N(  7 downto 0 ) & "0000000000000000000000000000000000000000";
			when "000101001" => RESULT <= N(  6 downto 0 ) & "00000000000000000000000000000000000000000";
			when "000101010" => RESULT <= N(  5 downto 0 ) & "000000000000000000000000000000000000000000";
			when "000101011" => RESULT <= N(  4 downto 0 ) & "0000000000000000000000000000000000000000000";
			when "000101100" => RESULT <= N(  3 downto 0 ) & "00000000000000000000000000000000000000000000";
			when "000101101" => RESULT <= N(  2 downto 0 ) & "000000000000000000000000000000000000000000000";
			when "000101110" => RESULT <= N(  1 downto 0 ) & "0000000000000000000000000000000000000000000000";
			when "000101111" => RESULT <= N(           0 ) & "00000000000000000000000000000000000000000000000";
			when others      => RESULT <=                    "000000000000000000000000000000000000000000000000";
		end case;

	end process;

end ShiftLeftArch;

