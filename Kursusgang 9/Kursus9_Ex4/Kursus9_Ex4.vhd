library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Kursus9_Ex4 is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        binary_input : in STD_LOGIC_VECTOR(3 downto 0);
        segment_output : out STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture Behavioral of Kursus9_Ex4 is
    signal segments : STD_LOGIC_VECTOR(6 downto 0);
    
begin
    process(clk, reset)
    begin
        if reset = '0' then
            segments <= "1111111"; -- Turn off all segments when reset is active
        elsif rising_edge(clk) then
             
case binary_input is
                when "0000" =>
                    segments <= "0000001"; -- Display 0
                when "0001" =>
                    segments <= "1001111"; -- Display 1
                when "0010" =>
                    segments <= "0010010"; -- Display 2
                when "0011" =>
                    segments <= "0000110"; -- Display 3
                when "0100" =>
                    segments <= "1001100"; -- Display 4
                when "0101" =>
                    segments <= "0100100"; -- Display 5
                when "0110" =>
                    segments <= "0100000"; -- Display 6
                when "0111" =>
                    segments <= "0001111"; -- Display 7
                when "1000" =>
                    segments <= "0000000"; -- Display 8
                when "1001" =>
                    segments <= "0000100"; -- Display 9
                when "1010" =>
                    segments <= "0001000"; -- Display A
                when "1011" =>
                    segments <= "1100000"; -- Display B
                when "1100" =>
                    segments <= "0110001"; -- Display C
                when "1101" =>
                    segments <= "1000010"; -- Display D
                when "1110" =>
                    segments <= "0110000"; -- Display E
                when "1111" =>
                    segments <= "0111000"; -- Display F
                when others =>
                    segments <= "1111111"; -- Display "error" for invalid inputs
            end case;
        end if;
    end process;

    segment_output <= segments;

end Behavioral;