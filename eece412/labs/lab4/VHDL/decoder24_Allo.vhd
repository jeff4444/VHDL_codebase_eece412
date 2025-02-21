library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoder24 is
    port (
        ctrl: in std_logic_vector(1 downto 0); -- 2-bit input control signal
        a: out std_logic_vector(3 downto 0) -- 4-bit output signal
    );
end decoder24;

architecture rtl of decoder24 is
    begin
    -- use selected signal assignment
        with ctrl select
            a <= "0001" when "00", -- assign a to "0001" to a if ctrl = "00"
                 "0010" when "01", -- assign a t0 "0010" to a if ctrl = "01"
                 "0100" when "10", -- assign a to "0100" to a if ctrl = "10"
                 "1000" when others; -- assign a to "1000" to a for any other values of ctrl
end rtl;