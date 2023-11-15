library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ex4 is
	Port ( switches: in STD_LOGIC_VECTOR(7 downto 0);
			LEDs 		: out STD_LOGIC_VECTOR(7 downto 0)
	);
end;


architecture Behavioral of Ex4 is
	signal x : STD_LOGIC_VECTOR(3 downto 0);
	signal y : STD_LOGIC_VECTOR(3 downto 0);
	signal carry : STD_LOGIC_VECTOR(3 downto 0);
	signal result : STD_LOGIC_VECTOR(4 downto 0);

begin
	result := x xor y 
end Behavioral;