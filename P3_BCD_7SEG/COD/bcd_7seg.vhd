library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_7seg is
    Port ( b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (6 downto 0));
end bcd_7seg;

architecture Behavioral of bcd_7seg is
--Generate component
--Generate signals
begin
--instance component
    process(b)
    begin
        case b is
            when "0000" => s <= "0111111";--0
            when "0001" => s <= "0000110";--1
            when "0010" => s <= "1011011";--2
            when "0011" => s <= "1001111";--3
            when "0100" => s <= "1100110";--4
            when "0101" => s <= "1101101";--5
            when "0110" => s <= "1111101";--6
            when "0111" => s <= "0000111";--7
            when "1000" => s <= "1111111";--8
            when "1001" => s <= "1101111";--9
            when others => s <= "0000000";--default
        end case;
    end process;
end Behavioral;
