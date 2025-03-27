library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity nested_if_max is
    port (
        -- Write your VHDL code to define the entity
        -- declare three 2-bit input signals a, b, c
        a, b, c: in std_logic_vector(1 downto 0);
        -- declare output
        max: out std_logic_vector(1 downto 0)
    );
end nested_if_max;


architecture rtl of nested_if_max is
    -- declare unsigned data type as internal signals for comparison
    signal ua, ub, uc: unsigned(1 downto 0);
    signal umax: unsigned(1 downto 0);
    begin
    -- Write your VHDL code below:
    -- Type casting the three inputs into the unsigned data type
    ua <= unsigned(a);
    ub <= unsigned(b);
    uc <= unsigned(c);
    -- Write your process block below using nested if statements:
    -- Return the max value of the three inputs ua, ub and uc to umax
    -- using a nested if stmts

    -- assign default values to umax
    umax <= "00";
    process(a, b, c)
    begin
        if ua > ub then
            if ua > uc then
                umax <= ua;
            else
                umax <= uc;
            end if;
        else
            if ub > uc then
                umax <= ub;
            else
                umax <= uc;
            end if;
        end if;
    end process;
    -- Write your VHDL below:
    -- assign umax to output max
    max <= std_logic_vector(umax);
end rtl;