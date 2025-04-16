library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_gate is
    port (
        A, B : in std_logic;
        Y : out std_logic
    );
end entity OR_gate;

architecture estructuraOR of OR_gate is
begin
    Y <= A or B;
end architecture estructuraOR;