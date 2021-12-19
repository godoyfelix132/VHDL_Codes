library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Res : out STD_LOGIC_VECTOR (3 downto 0));
end alu;

architecture Behavioral of alu is
--Signals
--SIGNAL Res_temp: std_logic_vector (3 downto 0);

begin
    process(Sel)
    begin
        case (Sel) is
            when "000" => Res <= A + B; 
            when "001" => Res <= A - B;
            when "010" => Res <= A - "0001";
            when "011" => Res <= A + "0001";
            when "100" => Res <= (A AND B);
            when "101" => Res <= (A OR B);
            when "110" => Res <= (NOT A);
            when "111" => Res <= (A XOR B);
            when others => null;
        end case;
    end process;
end Behavioral;
