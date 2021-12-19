library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier is
    Port ( A    : in    STD_LOGIC_VECTOR (3 downto 0);
           M    : in    STD_LOGIC_VECTOR (3 downto 0);
           Q  : in    STD_LOGIC;
           S    : out   STD_LOGIC_VECTOR (3 downto 0);
           Cout : out   STD_LOGIC);
end multiplier;

architecture Behavioral of multiplier is
    --Generar componente
    COMPONENT four_bit_adder
        Port (  A       : in    STD_LOGIC_VECTOR (3 downto 0);
                B       : in    STD_LOGIC_VECTOR (3 downto 0);
                Cin     : in    STD_LOGIC;
                Cout    : out   STD_LOGIC;
                S       : out   STD_LOGIC_VECTOR (3 downto 0)
            );
    END COMPONENT;
    --Generar señales
    signal M_A: STD_LOGIC_VECTOR (3 downto 0);
    
begin
    M_A <= (Q,Q,Q,Q) AND M;
    --Instanciar componente
    CFA1: four_bit_adder 
        PORT MAP( 
            A => A, 
            B => (M_A), 
            Cin => '0',
            Cout => Cout, 
            S => S 
        );

end Behavioral;
