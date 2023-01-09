-- AND Gate W0 & Y0 (1)

library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port 
    (
        W0: in std_logic;
        Y0: in std_logic;
        X0: out std_logic
    );
end and_gate;

architecture behavioral of and_gate is
begin
    X0 <= W0 and Y0;
end behavioral;
