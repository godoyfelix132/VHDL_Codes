library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity four_bit_adder_tb is
--  Port ( );
end four_bit_adder_tb;

architecture Behavioral of four_bit_adder_tb is
--Generar componente
    COMPONENT four_bit_adder
    Port (  A       : in    STD_LOGIC_VECTOR (3 downto 0);
            B       : in    STD_LOGIC_VECTOR (3 downto 0);
            Cin     : in    STD_LOGIC;
            Cout    : out   STD_LOGIC;
            S       : out   STD_LOGIC_VECTOR (3 downto 0)
            );
    END COMPONENT;
    
    --Generar las señales para la coneción
    SIGNAL  A    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  B    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  Cin  : STD_LOGIC;
    SIGNAL  Cout : STD_LOGIC;
    SIGNAL  S    : STD_LOGIC_VECTOR (3 downto 0);

begin
--instanciar el componente 
    DUT: four_bit_adder
        PORT MAP(
        A => A,
        B => B,
        Cin => Cin,
        Cout => Cout,
        S => S
        );
       
    estimulos:process
    begin
        A <= "0100";
        B <= "0100";
        Cin <= '0';
        wait for 10 ns;
        
        A <= "0000";
        B <= "0000";
        Cin <= '1';
        wait for 10 ns;
        
        A <= "0100";
        B <= "0100";
        Cin <= '1';
        wait for 10 ns;
        
        A <= "1111";
        B <= "1110";
        Cin <= '0';
        wait for 10 ns;
        
        A <= "1111";
        B <= "1111";
        Cin <= '0';
        wait for 10 ns; 
        
        A <= "1111";
        B <= "1111";
        Cin <= '1';
        wait for 10 ns;
            
    end process;


end Behavioral;
