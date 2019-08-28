library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
	port(
		X, Y, C_IN : in std_logic;
		S, C_OUT : out std_logic
	);
end FullAdder;

architecture FullAdderArch of FullAdder is

begin
	S <= C_IN xor X xor Y;
	C_OUT <= (C_IN and X) or (C_IN and Y) or (X and Y);

end FullAdderArch;

