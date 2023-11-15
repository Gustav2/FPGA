library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ex4 is
	Port ( x, y, cin: in STD_LOGIC;
			cout, result : out STD_LOGIC
	);
end;


architecture Behavioral of Ex4 is
begin
	result <= (x xor y) xor cin;
	cout <= (x and y) or (cin and (x xor y));
end Behavioral;