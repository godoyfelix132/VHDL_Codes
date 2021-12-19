library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity add_sub_tb is
--  Port ( );
end add_sub_tb;

architecture Behavioral of add_sub_tb is
--Generar componente
    COMPONENT add_sub
    Port ( A    : in    STD_LOGIC_VECTOR (3 downto 0);
           B    : in    STD_LOGIC_VECTOR (3 downto 0);
           SUB  : in    STD_LOGIC;
           S    : out   STD_LOGIC_VECTOR (3 downto 0);
           Cout : out   STD_LOGIC);
    END COMPONENT;
    
    --Generar las señales para la coneción
    SIGNAL  A    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  B    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  SUB  : STD_LOGIC;
    SIGNAL  S    : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL  Cout : STD_LOGIC;
    
begin
    --instanciar el componente 
    DUT: add_sub
        PORT MAP(
        A => A,
        B => B,
        SUB => SUB,
        Cout => Cout,
        S => S
        );
       
    estimulos:process
    begin
        A <= "0100";
        B <= "0010";
        SUB <= '0';
        wait for 10 ns;
        
        A <= "1000";
        B <= "0001";
        SUB <= '1';
        wait for 10 ns;
        
        A <= "0100";
        B <= "0010";
        SUB <= '1';
        wait for 10 ns;
        
        A <= "1111";
        B <= "1110";
        SUB <= '0';
        wait for 10 ns;
        
        A <= "1111";
        B <= "1111";
        SUB <= '0';
        wait for 10 ns; 
        
        A <= "1111";
        B <= "1101";
        SUB <= '1';
        wait for 10 ns;
            
    end process;

end Behavioral;
