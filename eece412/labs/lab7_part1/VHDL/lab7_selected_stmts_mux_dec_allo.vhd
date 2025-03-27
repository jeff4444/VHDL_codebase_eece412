library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity selected_stmt_mux_dec is
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
end selected_stmt_mux_dec;

architecture rtl of selected_stmt_mux_dec is
    begin
    -- Write your VHDL code below
    -- Implement the 4-to-1 MUX using selected statements
    with s select
        x <= a when "00",
             b when "01",
             c when "10",
             d when others;
    -- Implement the 2-to-4 decoder using selected statements
    with s select
        y <= "0001" when "00",
             "0010" when "01",
             "0100" when "10",
             "1000" when others;
end rtl;