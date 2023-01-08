-- Decoder 2 to 4 

library ieee;
use ieee.std_logic_1164.all;

entity decoder is
    port 
    (
        S0: in std_logic;  -- ( Ή W: 1 down to 0 )
        S1: in std_logic;
        EN: in std_logic;
        Y0: out std_logic;  -- ( Ή Y: 3 down to 0 )
        Y1: out std_logic;
        Y2: out std_logic;
        Y3: out std_logic;
    );
end decoder;

architecture behavioral of decoder is
begin
    process (S0, S1, EN)
    begin
        -- EN <= '1';
        if (EN = '1') then
            case (S0 & S1) is
                when "00" => Y0 <= '1'; Y1 <= '0'; Y2 <= '0'; Y3 <= '0';
                when "01" => Y0 <= '0'; Y1 <= '1'; Y2 <= '0'; Y3 <= '0';
                when "10" => Y0 <= '0'; Y1 <= '0'; Y2 <= '1'; Y3 <= '0';
                when "11" => Y0 <= '0'; Y1 <= '0'; Y2 <= '0'; Y3 <= '1';
                when others => Y0 <= '0'; Y1 <= '1'; Y2 <= '1'; Y3 <= '1';
            end case;
        else
                Y0 <= '0'; Y1 <= '0'; Y2 <= '0'; Y3 <= '0';
        end if ;
    end process;
end behavioral;