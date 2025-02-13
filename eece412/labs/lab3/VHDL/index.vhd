library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Index is
    port (
        ctrl: in std_logic_vector(1 downto 0); -- 2-bit control signal was changed to 3-bit input signal
        a: out std_logic_vector(3 downto 0) -- 4-bit output signal(a) was changed to 8-bit output signal
    );
end Index;

architecture rtl of Index is
    signal au: unsigned(3 downto 0); -- 4-bit signal(au) was changed to 8-bit signal to match the size of the output signal(a)
    begin
        process (au, ctrl)
            begin
            au <= (others=>'0'); -- all bits of au are set to 1 instead of 0
            au(to_integer(unsigned(ctrl))) <= '1'; -- the bit of au at the index ctrl is set to 0 instead of 1
            a <= std_logic_vector(au);
        end process;
end rtl;