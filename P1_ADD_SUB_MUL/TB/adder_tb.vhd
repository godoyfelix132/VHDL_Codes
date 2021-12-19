library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_tb is
--  Port ( );
end adder_tb;
    
architecture Behavioral of adder_tb is
    --Generar componente
    COMPONENT adder
    Port ( A    : in STD_LOGIC;
           B    : in STD_LOGIC;
           Cin  : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S    : out STD_LOGIC
          );
    END COMPONENT;
    
    --Generar las señales para la coneción
    SIGNAL  A    : STD_LOGIC;
    SIGNAL  B    : STD_LOGIC;
    SIGNAL  Cin  : STD_LOGIC;
    SIGNAL  Cout : STD_LOGIC;
    SIGNAL  S    : STD_LOGIC;

begin
--instanciar el componente 
    DUT: adder
        PORT MAP(
        A => A,
        B => B,
        Cin => Cin,
        Cout => Cout,
        S => S
        );
        
    estimulos:process
    begin
     A <= '1';
     B <= '0';
     Cin <= '0';
     wait for 10 ns;
     
     A <= '0';
     B <= '1';
     Cin <= '0';
     wait for 10 ns;
     
     A <= '1';
     B <= '1';
     Cin <= '0';
     wait for 10 ns;
     
     A <= '0';
     B <= '0';
     Cin <= '1';
     wait for 10 ns;
     
     A <= '1';
     B <= '0';
     Cin <= '1';
     wait for 10 ns;
     
     A <= '0';
     B <= '1';
     Cin <= '1';
     wait for 10 ns;
     
     A <= '1';
     B <= '1';
     Cin <= '1';
     wait for 10 ns;

    end process;
    
end Behavioral;
