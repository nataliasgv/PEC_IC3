library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_gate is
    port (
        A: in std_logic;
        Y : out std_logic
    );
end entity NOT_gate;

architecture estructuraNOT of NOT_gate is
begin
    Y <= not A;
end architecture estructuraNOT;
