library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div_tb is
--  Port ( );
end clk_div_tb;

architecture Behavioral of clk_div_tb is
    COMPONENT clk_div
        Port ( clk_in : in STD_LOGIC;
               rst : in STD_LOGIC;
               clk_out : out STD_LOGIC);
    END COMPONENT;
    SIGNAL  clk_in: STD_LOGIC;
    SIGNAL  rst: STD_LOGIC := '1';
    SIGNAL  clk_out: STD_LOGIC;
begin
    DUT: clk_div 
    PORT MAP(
        clk_in => clk_in,
        rst => rst,
        clk_out => clk_out);
    estimulos: process
    begin
         clk_in <= '1';
         rst <= '0';
         wait for 10 ns;
         clk_in <= '0';
         wait for 10 ns;
    end process;
         
end Behavioral;
