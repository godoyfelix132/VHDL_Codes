library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bin_7seg_tb is
--  Port ( );
end bin_7seg_tb;

architecture Behavioral of bin_7seg_tb is
COMPONENT bin_7seg
    Port ( a :      in  STD_LOGIC_VECTOR (3 downto 0);
           seg_0 :  out STD_LOGIC_VECTOR (6 downto 0);
           seg_1 :  out STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT;
SIGNAL a        : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL seg_0    : STD_LOGIC_VECTOR (6 downto 0);
SIGNAL seg_1    : STD_LOGIC_VECTOR (6 downto 0);
begin
    DUT: bin_7seg
        PORT MAP(
                a => a,
                seg_0 => seg_0,
                seg_1 => seg_1); 
    estimulos: process
    begin
        a <= "0111";
        wait for 10 ns;
        
        a <= "1000";
        wait for 10 ns;
        
        a <= "1001";
        wait for 10 ns;
        
        a <= "1010";
        wait for 10 ns;
        
        a <= "1011";
        wait for 10 ns;
        
        a <= "1100";
        wait for 10 ns;
        
        a <= "1101";
        wait for 10 ns;
        
        a <= "1110";
        wait for 10 ns;
        
        a <= "1111";
        wait for 10 ns;
    end process;
end Behavioral;
