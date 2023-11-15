library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Intro is

	port 
	(
		a	   : in std_logic;
		b	   : in std_logic;
		c : in std_logic;
		d : in std_logic;
		l_a : out std_logic;
		l_b : out std_logic;
		l_c : out std_logic;
		l_d : out std_logic
	);

end entity;

architecture rtl of Intro is
begin
	l_a <= not a;
	l_b <= not b;
	l_c <= not c;
	l_d <= not d;
	

end rtl;
