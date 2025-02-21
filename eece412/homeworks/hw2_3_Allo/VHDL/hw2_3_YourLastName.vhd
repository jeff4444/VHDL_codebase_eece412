library ieee;
use ieee.std_logic_1164.all;

entity hw2_2 is
    port (
        s : in std_logic_vector(1 downto 0);
        z : in std_logic
    );
end entity hw2_2;

architecture rtl of hw2_2 is
begin
    with s select
        z <= '1' when "00",
             '1' when "01",
             '1' when "10",
             '0' when others;
end architecture rtl;