library ieee;
use ieee.std_logic_1164.all;
entity decoder_2to4_enable is
    port(
        inp: in std_logic_vector(1 downto 0);
        e: in std_logic;
        outp: out std_logic_vector(3 downto 0)
    );
end decoder_2to4_enable;


architecture rtl of decoder_2to4_enable is
    begin
    outp <= "0001" when (inp = "00" and e = '1') else
           "0010" when (inp = "01" and e = '1') else
           "0100" when (inp = "10" and e = '1') else
           "1000" when (inp = "11" and e = '1') else
           "0000";
end rtl;