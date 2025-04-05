library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hw4_2 is
    port (
        s : in std_logic_vector(1 downto 0);
        z : out std_logic
    );
end entity hw4_2;

architecture rtl of hw4_2 is
begin
    process(s)
    begin
        -- Initialize output signal
        z <= '0';

        -- Check the value of s and assign z accordingly
        -- using case statement
        case s is
            when "00" =>
                z <= '0';
            when "01" =>
                z <= '1';
            when "10" =>
                z <= '0';
            when others =>
                z <= '1';
        end case;
    end process;
    
end rtl;