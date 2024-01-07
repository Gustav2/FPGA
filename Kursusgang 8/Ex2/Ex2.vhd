library ieee;
use ieee.std_logic_1164.all;

entity Ex2 is

	port(
		clk		 : in	std_logic; --KEY0
		input	 : in	std_logic; --SW0
		Led0	 : out	std_logic;
		Led1	 : out	std_logic;
		Led2	 : out	std_logic;	
		Led3	 : out	std_logic
	);

end entity;

architecture rtl of Ex2 is
begin
	process (clk)
variable buff: std_logic_vector(3 downto 0);
	begin
		if (rising_edge(clk)) then
			buff(3):=buff(2);
			buff(2):=buff(1);
			buff(1):=buff(0);
			buff(0):=input;
			
			Led0<=buff(0);
			Led1<=buff(1);
			Led2<=buff(2);
			Led3<=buff(3);
		end if;
	end process;



end rtl;
