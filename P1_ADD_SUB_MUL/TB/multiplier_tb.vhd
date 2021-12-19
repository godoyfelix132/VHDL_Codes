library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier_tb is
--  Port ( );
end multiplier_tb;

architecture Behavioral of multiplier_tb is
--Generar componente
    COMPONENT multiplier
    Port ( A    : in    STD_LOGIC_VECTOR (3 downto 0);
           M    : in    STD_LOGIC_VECTOR (3 downto 0);
           Q  : in    STD_LOGIC;
           S    : out   STD_LOGIC_VECTOR (3 downto 0);
           Cout : out   STD_LOGIC);
    END COMPONENT;
    
    --Generar las señales para la coneción
    SIGNAL  A    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  M    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  Q    : STD_LOGIC;
    SIGNAL  S    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  Cout : STD_LOGIC;
    
begin
    --instanciar el componente 
    DUT: multiplier
        PORT MAP(
        A => A,
        M => M,
        Q => Q,
        Cout => Cout,
        S => S
        );
       
    estimulos:process
    begin
        A <= "0000";
        M <= "0001";
        Q <= '1';
        wait for 10 ns;
        
        A <= "1000";
        M <= "0101";
        Q <= '1';
        wait for 10 ns;
        
        A <= "0000";
        M <= "1000";
        Q <= '0';
        wait for 10 ns;
        
        A <= "0000";
        M <= "1111";
        Q <= '1';
        wait for 10 ns;
        
        A <= "0000";
        M <= "1111";
        Q <= '0';
        wait for 10 ns; 
        
        A <= "0000";
        M <= "1101";
        Q <= '1';
        wait for 10 ns;
            
    end process;

end Behavioral;
