library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity state_machine_top is
    Port ( clk  : in    STD_LOGIC;
           rst : in STD_LOGIC;
           x    : in    STD_LOGIC;
           z    : out   STD_LOGIC);
end state_machine_top;

architecture Behavioral of state_machine_top is
COMPONENT state_machine
    Port ( clk  : in    STD_LOGIC;
           x    : in    STD_LOGIC;
           z    : out   STD_LOGIC);
END COMPONENT;
COMPONENT clk_div
    Port ( clk_in : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_out : out STD_LOGIC);
END COMPONENT;
SIGNAL  clk_out : STD_LOGIC;
begin
    C_clock: clk_div
    Port map( clk_in => clk,
               rst => rst,
               clk_out => clk_out);
    C_machine: state_machine
    Port map( clk => clk_out,
               x => x,
               z => z);
end Behavioral;
