library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp1bit is
    port (
        eout, gout : out std_logic; -- gout a 1 si x>y, eout a 1 si x = y
        x, y       : in std_logic   -- bits a comparar
    );
end entity;

architecture comp1bit of comp1bit is

    signal p1 : std_logic;

    component XNOR_gate
        port (
            A, B : in std_logic;
            Y : out std_logic
        );
    end component;

    component NOT_gate
        port (
            A : in std_logic;
            Y : out std_logic
        );
    end component;

    component AND_gate
        port (
            A, B : in std_logic;
            Y : out std_logic
        );
    end component;

begin

    -- eout <= (x xnor y);
    U1: XNOR_gate port map (A => x, B => y, Y => eout);

    -- not_y <= not y
    U2: NOT_gate port map (A => y, Y => p1);

    -- gout <= x and (not y);
    U3: AND_gate port map (A => x, B => p1, Y => gout);

end architecture comp1bit;

