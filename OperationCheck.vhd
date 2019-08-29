library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OperationCheck is

	port(
		X_SIGN, Y_SIGN : in std_logic;
		OP, RES_SIGN : out std_logic
	);
	
end OperationCheck;

architecture OperationCheckArch of OperationCheck is

begin

	OP <= X_SIGN xor Y_SIGN;
	RES_SIGN <= X_SIGN;

end OperationCheckArch;

