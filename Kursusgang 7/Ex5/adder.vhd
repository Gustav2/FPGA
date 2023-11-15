library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
port 
	( x, y, cin: in STD_LOGIC;
			cout, result : out STD_LOGIC
	);
end;

architecture Behavioral of adder is
begin
	result <= (x xor y) xor cin;
	cout <= (x and y) or (cin and (x xor y));
end;