----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.11.2020 19:45:04
-- Design Name: 
-- Module Name: bin_bcd_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin_bcd_tb is
--  Port ( );
end bin_bcd_tb;

architecture Behavioral of bin_bcd_tb is
--Generar componente
COMPONENT bin_bcd
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           u : out STD_LOGIC_VECTOR (3 downto 0);
           d : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
--Generar señales
SIGNAL a : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL u : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL d : STD_LOGIC_VECTOR (3 downto 0);
begin
--Instanciar componente
    DUT: bin_bcd
        PORT MAP(
            a => a,
            u => u,
            d => d
        ); 
-- Estimulos
    estimulos:process
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
