library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ZeroCheck is

	port(
		X, Y : in std_logic_vector(31 downto 0);
		IS_ZERO : out std_logic
	);
	
end ZeroCheck;

architecture ZeroCheckArch of ZeroCheck is

	component EqualCheck is
	
		generic(
			BITCOUNT : integer := 8
		);
		
		port(
			X, Y : in std_logic_vector((BITCOUNT-1) downto 0);
			IS_EQUAL : out std_logic
		);
		
	end component;

	signal S_SIGN : std_logic;
	signal Y_SIGN : std_logic;
	signal X_ABS : std_logic_vector(30 downto 0);
	signal Y_ABS : std_logic_vector(30 downto 0);
	signal IS_SAME_ABS_VALUE : std_logic;
	signal IS_SAME_SIGN : std_logic;
	
begin

	S_SIGN <= X(31);
	Y_SIGN <= Y(31);
	X_ABS  <= X(30 downto 0);
	Y_ABS  <= Y(30 downto 0);

	IS_SAME_SIGN <= S_SIGN xnor Y_SIGN;
	
	AbsCheck: EqualCheck
		generic map ( BITCOUNT => 31 )
		port map (X => X_ABS, Y => Y_ABS, IS_EQUAL => IS_SAME_ABS_VALUE);
	
	IS_ZERO <= (not IS_SAME_SIGN) and IS_SAME_ABS_VALUE;
	
end ZeroCheckArch;

