-- AND Gate W1 & Y1 (2)

library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port 
    (
        W1: in std_logic;
        Y1: in std_logic;
        X1: out std_logic
    );
end and_gate;

architecture behavioral of and_gate is
begin
    X1 <= W1 and Y1;
end behavioral;
