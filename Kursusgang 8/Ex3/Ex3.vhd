library ieee;
use ieee.std_logic_1164.all;

entity Ex3 is

	port(
		SW0	 : in	std_logic;
		SW1	 : in	std_logic;
		SW2	 : in	std_logic;
		SW3	 : in	std_logic;
		EW	 : in	std_logic; --KEY1
		ER	 : in	std_logic; --KEY0
		Led0	 : out	std_logic;	
		Led1	 : out	std_logic;
		Led2	 : out	std_logic;	
		Led3	 : out	std_logic
	);
shared variable buff: std_logic_vector(3 downto 0);

end entity;

architecture rtl of Ex3 is

begin
	process (EW)
	begin
		if (rising_edge(EW)) then
			buff(0):=SW0;
			buff(1):=SW1;
			buff(2):=SW2;
			buff(3):=SW3;
		end if;
	end process;
	
process (ER)
	begin
		if (rising_edge(ER)) then
			Led0<=buff(0);
			Led1<=buff(1);
			Led2<=buff(2);
			Led3<=buff(3);
		end if;
	end process;



end rtl;