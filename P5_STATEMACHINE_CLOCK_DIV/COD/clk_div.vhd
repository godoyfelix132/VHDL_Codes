library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clk_div is
    Port ( clk_in : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is
    signal temp: std_logic;
    signal contador: std_logic_vector(25 downto 0) := (others => '0');
begin
    divisor: process (rst, clk_in) 
    begin
        if (rst = '1') then
            temp <= '0';
            contador <= (others => '0');
        elsif rising_edge(clk_in) then
            if (contador = 3) then
                temp <= not(temp);
                contador <= (others => '0');
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;
    clk_out <= temp;

end Behavioral;
