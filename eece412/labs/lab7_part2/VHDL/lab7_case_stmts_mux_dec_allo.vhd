library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity case_stmt_mux_dec is
    port (
        --select signal s
        s: in std_logic_vector(1 downto 0);
        --data inputs for 4-to-1 MUX
        a, b, c, d: in std_logic;
        -- output of 4-to-1 MUX
        x: out std_logic;
        -- output of 2-to-4 decoder
        y: out std_logic_vector(3 downto 0)
    );
end case_stmt_mux_dec;

architecture rtl of case_stmt_mux_dec is
    begin
    -- Write your VHDL code below
    -- Implement the 4-to-1 MUX and the 2-to-4 decoder
    -- using case statements

    -- assign default values to x and y
    x <= '0';
    y <= "0000";

    process(s, a, b, c, d)
    begin
        case s is
            when "00" =>
                x <= a;
                y <= "0001";
            when "01" =>
                x <= b;
                y <= "0010";
            when "10" =>
                x <= c;
                y <= "0100";
            when "11" =>
                x <= d;
                y <= "1000";
        end case;
    end process;
    
end rtl;