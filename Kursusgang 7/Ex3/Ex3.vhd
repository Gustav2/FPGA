library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ex3 is

	port 
	(
		sw0	   : in STD_LOGIC;
		sw1	   : in STD_LOGIC;
		sw2		: in STD_LOGIC;
		sw3		: in STD_LOGIC;
		
		led : out STD_LOGIC
	);

end entity;

architecture rtl of Ex3 is
begin

	led <= (sw0 and sw1) or not (sw2 and sw3);

end rtl;
