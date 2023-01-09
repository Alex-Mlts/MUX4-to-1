-- OR Gate X0 & X1 & X2 & X3

library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
    port 
    (
        X0: in std_logic;
        X1: in std_logic;
        X2: in std_logic;
        X3: in std_logic;
        F: out std_logic
    );
end or_gate;

architecture behavioral of or_gate is
begin
    F <= X0 or X1 or X2 or X3;
end behavioral;
