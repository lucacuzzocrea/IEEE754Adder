library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ZeroCounter is
	generic(
		BITCOUNT : integer := 8;
		RES_BITCOUNT : integer := 3 -- MUST BE >= CEIL( LOG2( BITCOUNT ) )
	);
	port(
		X : in std_logic_vector( (BITCOUNT-1) downto 0 );
		Z_COUNT : out std_logic_vector( (RES_BITCOUNT-1) downto 0 );
		ALL_ZEROS : out std_logic
	);
end ZeroCounter;

architecture ZeroCounterArch of ZeroCounter is
begin

	ZEROCOUNT_PROCESS: process (X)
		variable ZC: std_logic_vector((RES_BITCOUNT-1) downto 0);
		variable BIN_N: std_logic_vector((RES_BITCOUNT-1) downto 0);
		variable PART_ZC: std_logic_vector((BITCOUNT-1) downto 0);
	begin
		ZC := ((RES_BITCOUNT-1) downto 0 => '0');
		PART_ZC := ((BITCOUNT-1) downto 0 => '1');

		for N in 1 to (BITCOUNT-1) loop
			-- compute partial logic to add to result's '1' bits
			for p_i in (BITCOUNT-1) downto (BITCOUNT-N) loop
				PART_ZC(N) := PART_ZC(N) and (not X(p_i));
			end loop;
			PART_ZC(N) := PART_ZC(N) and X(BITCOUNT-1-N);
		
			-- add partial logic to result
			BIN_N := std_logic_vector(to_unsigned(N, BIN_N'length));
			for res_i in (RES_BITCOUNT-1) downto 0 loop
				if ( BIN_N(res_i) = '1' ) then 
					ZC(res_i) := ZC(res_i) or PART_ZC(N);
				end if;
			end loop;
		end loop;
		
		Z_COUNT <= ZC;

	end process;
	

	ALLZERO_PROCESS: process (X)
		variable AZ : std_logic;
	begin
		AZ := '1';
		for i in X'range loop
			AZ := AZ and (not X(i));
		end loop;
		ALL_ZEROS <= AZ;
	end process;

end ZeroCounterArch;

