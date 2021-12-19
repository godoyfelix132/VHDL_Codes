library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin_7seg is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           seg_0 : out STD_LOGIC_VECTOR (6 downto 0);
           seg_1 : out STD_LOGIC_VECTOR (6 downto 0));
end bin_7seg;

architecture Behavioral of bin_7seg is
--Generate component
COMPONENT bin_bcd
    Port ( a : in   STD_LOGIC_VECTOR (3 downto 0);
           u : out  STD_LOGIC_VECTOR (3 downto 0);
           d : out  STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
COMPONENT bcd_7seg
    Port ( b : in   STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT;
--Generate signal
SIGNAL u: STD_LOGIC_VECTOR (3 downto 0);
SIGNAL d: STD_LOGIC_VECTOR (3 downto 0);

begin
    --Instance component
    C_bin_bcd: bin_bcd
        PORT MAP(
            a => a,
            u => u,
            d => d
        );
    C_tens: bcd_7seg
        PORT MAP(
            b => u,
            s => seg_0
        );
    C_units: bcd_7seg
        PORT MAP(
            b => d,
            s => seg_1
        );
end Behavioral;
