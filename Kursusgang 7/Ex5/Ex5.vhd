library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ex5 is
	Port ( x, y	: in STD_LOGIC_VECTOR(3 downto 0);
			cin	: in STD_LOGIC;
			cout	: out STD_LOGIC;
			result : out STD_LOGIC_VECTOR (3 downto 0)
	);
end;


architecture Behavioral of Ex5 is

component adder is
	port 
	( x, y, cin: in STD_LOGIC;
			cout, result : out STD_LOGIC
	);
end component;

	signal c: STD_LOGIC_VECTOR(4 downto 0);
	
begin

	u1: adder port map (x => x(0), y => y(0), cin => c(0), result => result(0), cout => c(1));
	
	u2: adder port map (x => x(1), y => y(1), cin => c(1), result => result(1), cout => c(2));

	u3: adder port map (x => x(2), y => y(2), cin => c(2), result => result(2), cout => c(3));
	
	u4: adder port map (x => x(3), y => y(3), cin => c(3), result => result(3), cout => c(4));
	
	c(0) <= cin;
	
	cout <= c(4);
end Behavioral;