library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity add_sub is
    Port ( A    : in    STD_LOGIC_VECTOR (3 downto 0);
           B    : in    STD_LOGIC_VECTOR (3 downto 0);
           SUB  : in    STD_LOGIC;
           S    : out   STD_LOGIC_VECTOR (3 downto 0);
           Cout : out   STD_LOGIC);
end add_sub;

architecture Behavioral of add_sub is
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
    signal B_A: STD_LOGIC_VECTOR (3 downto 0);
    
begin
    B_A <= (SUB,SUB,SUB,SUB) XOR B;
    --Instanciar componente
    CFA1: four_bit_adder 
        PORT MAP( 
            A => A, 
            B => (B_A), 
            Cin => SUB,
            Cout => Cout, 
            S => S 
        );

end Behavioral;
