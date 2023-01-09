-- AND Gate W3 & Y3 (4)

library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port 
    (
        W3: in std_logic;
        Y3: in std_logic;
        X3: out std_logic
    );
end and_gate;

architecture behavioral of and_gate is
begin
    X3 <= W3 and Y3;
end behavioral;
