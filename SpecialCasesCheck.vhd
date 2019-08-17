library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TypeCheck is
	port(
		N: in std_logic_vector(31 downto 0);
		NaN, INF: out std_logic
	);
end TypeCheck;

architecture TypeCheckArch of TypeCheck is
	signal G_Bus: std_logic_vector(7 downto 0);
	signal T_Bus: std_logic_vector(22 downto 0);
	signal G: std_logic := '1';
	signal T: std_logic := '0';
begin
	G_Bus <= N(30 downto 23);
	T_Bus <= N(22 downto 0);
	
	G_compute: process (G_Bus)
		variable G_tmp: std_logic;
	begin
		G_tmp := '1';
		for i in G_Bus'range loop
			G_tmp := G_tmp and G_Bus(i);
		end loop;
		G <= G_tmp;
	end process;
	
	T_compute: process (T_Bus)
		variable T_tmp: std_logic;
	begin
		T_tmp := '0';
		for i in T_Bus'range loop
			T_tmp := T_tmp or T_Bus(i);
		end loop;
		T <= T_tmp;
	end process;
	
	NaN <= G and T;
	INF <= G and (not T);
end TypeCheckArch;



--entity SpecialCasesCheck is
--	port(
--		X, Y: in std_logic_vector(31 downto 0);
--		isNan, isZero: out std_logic
--	);
--end SpecialCasesCheck;
--
--
--architecture SpecialCasesCheckArch of SpecialCasesCheck is
--
--begin
--
--end SpecialCasesCheckArch;

