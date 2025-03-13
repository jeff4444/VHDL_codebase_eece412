library ieee;
use ieee.std_logic_1164.all;
entity LogicalOps_SelectedStmt is 
    port(
        ctrl: in std_logic_vector(3 downto 0);
        a: in std_logic;
        b: in std_logic;
        x: out std_logic
    );
end LogicalOps_SelectedStmt;

architecture rtl of LogicalOps_SelectedStmt is
    begin
    with ctrl select
        x <= a xor b when "1000" | "1001" | "1010" | "1011" | "1100" | "1101" | "1110" | "1111", -- x = a xor b for all values of ctrl when ctrl(3) = '1'
             a and b when "0100" | "0101" | "0110" | "0111", -- x = a and b for all values of ctrl when ctrl(2) = '1' and ctrl(3) = '0'
             a or b when "0010" | "0011", -- x = a or b for all values of ctrl when ctrl(1) = '1' and ctrl(3) = '0' and ctrl(2) = '0'
             not b when "0001", -- x = not b for all values of ctrl when ctrl(0) = '1' and ctrl(3) = '0' and ctrl(2) = '0' and ctrl(1) = '0'
             not a when others; -- x = not a for all values of ctrl when ctrl = "0000"
end rtl;
