-- AND Gate W2 & Y2 (3)

library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port 
    (
        W2: in std_logic;
        Y2: in std_logic;
        X2: out std_logic;
    );
end and_gate;

architecture behavioral of and_gate is
begin
    X2 <= W2 and Y2;
end behavioral;