-- MUX 4 to 1

library ieee;
use ieee.std_logic_1164.all;
 
entity mux4_1 is
    port
    (
        W0,W1,W2,W3 : in std_logic;
        S0,S1: in std_logic;
        EN: in std_logic;
        F: out std_logic;
    );
end mux4_1;
 


architecture behavioral of mux4_1 is

    component decoder
    port
    (
        S: in std_logic (1 down to 0);
        EN: in std_logic;
        Y: out std_logic (3 down to 0);
    );
    end component;

    component and_gate
    port
    (
        W: in std_logic;
        Y: in std_logic;
        X: out std_logic;
    );
    end component;

    component or_gate
    port
    (
        X: in std_logic;
        F: out std_logic;
    );
    end component;

    begin
        g1: decoder port map (S0,S1,EN,Y0,Y1,Y2,Y3);
        g2: and_gate port map (W0,Y0,X0);
        g3: and_gate port map (W1,Y1,X1);
        g4: and_gate port map (W2,Y2,X2);
        g5: and_gate port map (W3,Y3,X3);
        g6: or_gate port map (X0,X1,X2,X3,F);
end behavioral;