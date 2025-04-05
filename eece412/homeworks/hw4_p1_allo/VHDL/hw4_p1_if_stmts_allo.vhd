library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity prior_encoder_if_stmts is
    port (
        --4-bit input signal r
        r: in std_logic_vector(3 downto 0);
        --2-bit output signal code
        code: out std_logic_vector(1 downto 0);
        --1-bit output signal active
        active: out std_logic
    );
end prior_encoder_if_stmts;

architecture rtl of prior_encoder_if_stmts is
    begin
    -- priority_encoder using one set of if stmts

    process(r)
    begin
        -- Initialize output signals
        code <= (others => '0');
        active <= '0';

        -- Check for the highest priority input and assign code and active accordingly
        if r(3) = '1' then
            code <= "11";
            active <= '1';
        elsif r(2) = '1' then
            code <= "10";
            active <= '1';
        elsif r(1) = '1' then
            code <= "01";
            active <= '1';
        elsif r(0) = '1' then
            code <= "00";
            active <= '1';
        else
            code <= (others => '0');
            active <= '0';
        end if;
    end process;

end rtl;