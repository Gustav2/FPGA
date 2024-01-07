-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Kursus9_Ex2 is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 16777216
	);

	port
	(
		clk		  : in std_logic; --Boardclock
		reset	  : in std_logic; --Ik mappet
		enable	  : in std_logic; --SW0
		q		  : out integer range MIN_COUNT to MAX_COUNT
		
	);

end entity;

architecture rtl of Kursus9_Ex2 is
begin

	process (clk)
		variable   cnt		   : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clk)) then

			if reset = '1' then
				-- Reset the counter to 0
				cnt := 0;

			elsif enable = '1' then
				-- Increment the counter if counting is enabled			   
				cnt := cnt + 1;

			end if;
		end if;

		-- Output the current count
		q <= cnt;
	end process;

end rtl;
