library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bin_bcd is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           u : out STD_LOGIC_VECTOR (3 downto 0);
           d : out STD_LOGIC_VECTOR (3 downto 0));
end bin_bcd;

architecture Behavioral of bin_bcd is
--Generar componente
--Generar señales
begin
--Instanciar componente
    process(a)
        -- crear variables internas del proceso
        variable z: STD_LOGIC_VECTOR(11 downto 0);
        begin
            z := "000000000000"; -- := Asignar valor a variable
            z(6 downto 3) := a; -- primeros 3 corrimientos
            for i in 0 to 0 loop
                --unidades
                if z(7 downto 4) > "0100"  then
                    z(7 downto 4) := z(7 downto 4) + "0011";
                end if;
                --decenas
                if z(11 downto 8) > "0100"  then
                    z(11 downto 8) := z(11 downto 8) + "0011";
                end if;
                z(11 downto 1) := z(10 downto 0);
            end loop; 
            u <= z(7 downto 4);
            d <= z(11 downto 8);
    end process;
end Behavioral;
