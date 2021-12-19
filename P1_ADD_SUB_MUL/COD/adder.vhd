----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.10.2020 10:31:29
-- Design Name: 
-- Module Name: adder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder is
    Port ( A    : in STD_LOGIC;
           B    : in STD_LOGIC;
           Cin  : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S    : out STD_LOGIC
          );
end adder;

architecture Behavioral of adder is
begin
    S <= A XOR B XOR Cin ;
    Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
end Behavioral;
