library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity four_bit_adder is
Port (  A       : in    STD_LOGIC_VECTOR (3 downto 0);
        B       : in    STD_LOGIC_VECTOR (3 downto 0);
        Cin     : in    STD_LOGIC;
        Cout    : out   STD_LOGIC;
        S       : out   STD_LOGIC_VECTOR (3 downto 0)
        );
end four_bit_adder;

architecture Behavioral of four_bit_adder is
    --Generar componente
    COMPONENT adder
    Port (  A       : in    STD_LOGIC;
            B       : in    STD_LOGIC;
            Cin     : in    STD_LOGIC;
            S       : out   STD_LOGIC;
            Cout    : out   STD_LOGIC
            );
    END COMPONENT;
    
    --Generar señales
    signal c1,c2,c3: STD_LOGIC;
begin
--Instanciar componentes
    CA1: adder 
        PORT MAP( 
            A => A(0), 
            B => B(0), 
            Cin => Cin,
            Cout => c1, 
            S => S(0) 
        );
     CA2: adder 
        PORT MAP( 
            A => A(1), 
            B => B(1), 
            Cin => c1,
            Cout => c2, 
            S => S(1) 
        );
     CA3: adder 
        PORT MAP( 
            A => A(2), 
            B => B(2), 
            Cin => C2,
            Cout => c3, 
            S => S(2) 
        );
     CA4: adder 
        PORT MAP( 
            A => A(3), 
            B => B(3), 
            Cin => C3,
            Cout => Cout, 
            S => S(3) 
        );       
end Behavioral;
