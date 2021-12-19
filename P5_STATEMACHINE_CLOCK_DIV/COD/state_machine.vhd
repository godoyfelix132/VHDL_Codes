library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity state_machine is
    Port ( clk  : in    STD_LOGIC;
           x    : in    STD_LOGIC;
           z    : out   STD_LOGIC);
end state_machine;

architecture Behavioral of state_machine is
    type estados is (q0,q1,q2,q3,q4);
    signal edo_presente, edo_futuro: estados;
begin

    proceso_1: process (edo_presente, x) 
    begin
        case edo_presente is
            when q0 => z <= '0';
                if x = '1' then
                    edo_futuro <= q1;
                else
                    edo_futuro <= q4;
                end if; 
            when q1 => z <= '0';
                if x = '1' then
                    edo_futuro <= q2;
                else
                    edo_futuro <= q4;
                end if; 
            when q2 => 
                if x = '1' then
                    edo_futuro <= q3;
                    z <= '1';
                else
                    edo_futuro <= q4;
                    z <= '0';
                end if; 
            when q3 => z <= '0';
                if x = '1' then
                    edo_futuro <= q3;
                else
                    edo_futuro <= q3;
                end if; 
            when q4 => z <= '0';
                if x = '1' then
                    edo_futuro <= q1;
                else
                    edo_futuro <= q4;
                end if; 
        end case;
    end process proceso_1;
    
    proceso_2: process (clk) 
    begin
        if (clk'event and clk='1') then
            edo_presente <= edo_futuro;
        end if;
    end process proceso_2;
    
end Behavioral;
