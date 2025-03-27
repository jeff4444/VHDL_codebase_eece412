library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LogicalOps is
    port (
        ctrl: in std_logic_vector(3 downto 0);
        a: in std_logic;
        b: in std_logic;
        x: out std_logic
    );
end LogicalOps;

architecture rtl of LogicalOps is
begin
-- Write your VHDL code here
x <= (a xor b) when (ctrl(3) = '1') else -- x = a xor b if the third bit of ctrl is 1 irrespective of the other bits
    (a and b) when (ctrl(2) = '1') else -- x = a and b if the second bit of ctrl is 1 when the third bit is 0
    (a or b) when (ctrl(1) = '1') else -- x = a or b if the first bit of ctrl is 1 when the third and second bit are 0
    (not b) when (ctrl(0) = '1') else -- x = not b if the zeroth bit of ctrl is 1 when the third, second and first bit are 0
    not a; -- x = not a if all bits of ctrl are 0 

end rtl;
