library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Counters is
    port (
        clk: in std_logic; -- 1-bit clock input signal
        reset: in std_logic; -- 1-bit reset input signal
        ctrl1: in std_logic_vector(1 downto 0); -- 2-bit control signal for counter 1
        ctrl2: in std_logic_vector(1 downto 0); -- 2-bit control signal for counter 2
        leds: out std_logic_vector(1 downto 0) -- 2-bit output signal for LEDs
    );
end Counters;


architecture rtl of Counters is
    signal cnter1_reg, cnter1_next: unsigned(29 downto 0);
    signal cnter2_reg, cnter2_next: unsigned(29 downto 0);
    begin
    -- Write process block to define registers for cnter1 and 2
    -- Write your VHDL code below
    process(clk, reset)
        begin
        if ( reset = '1' ) then -- Asynchronous reset
            -- Reset both cnter1 and cnter2 registers to zero
            cnter1_reg <= (others=>'0');
            cnter2_reg <= (others=>'0');
        elsif( rising_edge(clk) ) then -- set next state on rising clock edge
            cnter1_reg <= cnter1_next;
            cnter2_reg <= cnter2_next;
        end if;
    end process;

    -- next-state logic for cnter1
    -- Implement Counter1 via selected signal assignment
    with ctrl1 select
        cnter1_next <= cnter1_reg + 1 when "00",
                        cnter1_reg + 2 when "01",
                        cnter1_reg + 4 when "10",
                        cnter1_reg + 8 when others;

    
    -- Output Logic for counter 1
    leds(0) <= cnter1_reg(29);

    -- next-state logic for counter 2
    -- Implement Counter2 (equivalent to counter1) using case stmts
    -- Write your VHDL code here
    process (ctrl2, cnter2_reg)
        begin
        -- initialize cnter2_next to cnter2_reg
        -- and set the output LED to '0'
        cnter2_next <= cnter2_reg;
        leds(1) <= '0';

        -- Counter via case statement
        -- Check the value of ctrl2 and update cnter2_next accordingly
        case ctrl2 is
            when "00" =>
                cnter2_next <= cnter2_reg + 1;
            when "01" =>
                cnter2_next <= cnter2_reg + 2;
            when "10" =>
                cnter2_next <= cnter2_reg + 4;
            when others =>
                cnter2_next <= cnter2_reg + 8;
        end case;
    end process;
    
    -- Output Logic for counter 2
    leds(1) <= cnter2_reg(29);
end rtl;