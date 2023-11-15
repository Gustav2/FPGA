-- Quartus Prime VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ex2 is

	port 
	(
		a	   : in std_logic;
		b	   : in std_logic;
		result : out std_logic_vector(2 downto 0)
	);

end entity;

architecture rtl of Ex2 is
begin

	result(0) <= a and b;
	result(1) <= a or b;
	result(2) <= a xor b;

end rtl;
