library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TypeCheck is

	port(
		N : in std_logic_vector(31 downto 0);
		NAN, INF : out std_logic
	);
	
end TypeCheck;

architecture TypeCheckArch of TypeCheck is

	signal G_BUS : std_logic_vector(7 downto 0);
	signal T_BUS : std_logic_vector(22 downto 0);
	signal G : std_logic := '1';
	signal T : std_logic := '0';
	
begin

	G_BUS <= N(30 downto 23);
	T_BUS <= N(22 downto 0);
	
	G_compute: process (G_BUS)
	
		variable G_TMP : std_logic;
		
	begin
	
		G_TMP := '1';
		
		for i in G_BUS'range loop
			G_TMP := G_TMP and G_BUS(i);
		end loop;
		
		G <= G_TMP;
		
	end process;
	
	T_compute: process (T_BUS)
	
		variable T_TMP : std_logic;
		
	begin
	
		T_TMP := '0';
		
		for i in T_BUS'range loop
			T_TMP := T_TMP or T_BUS(i);
		end loop;
		
		T <= T_TMP;
		
	end process;
	
	NAN <= G and T;
	INF <= G and (not T);
	
end TypeCheckArch;

