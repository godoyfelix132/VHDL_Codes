library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity state_machine_tb is
--  Port ( );
end state_machine_tb;

architecture Behavioral of state_machine_tb is
    COMPONENT state_machine_top
        Port (  clk  : in STD_LOGIC;
                rst : in STD_LOGIC;
                x    : in    STD_LOGIC;
                z    : out   STD_LOGIC);
    END COMPONENT;
    SIGNAL  clk  : STD_LOGIC := '0';
    SIGNAL  rst  : STD_LOGIC := '1';
    SIGNAL  x  : STD_LOGIC;
    SIGNAL  z  : STD_LOGIC;
begin
    DUT: state_machine_top
    Port map(   clk => clk,
                rst => rst,
                x => x,
                z => z);
    estimulos_clk: process
    begin
        clk <= '1';
        wait for 10 ns;
        clk <= '0';
        wait for 10 ns;
    end process;
    estimulos_rst: process
    begin
        wait for 40 ns;
        rst <= '0';
    end process;
    estimulos: process
    begin
        x <= '1';
        wait for 160 ns;
        x <= '0';
        wait for 160 ns;
        x <= '0';
        wait for 160 ns;
        x <= '1';
        wait for 160 ns;
        x <= '1';
        wait for 160 ns;
        x <= '1';
        wait for 160 ns;
        x <= '0';
        wait for 160 ns;
              
    end process;
end Behavioral;
