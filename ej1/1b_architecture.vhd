library IEEE;
use IEEE.std_logic_1164.all;

architecture estructura2 of ej1 is

    signal p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11 : std_logic;

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

    component OR_gate
        port (
            A, B : in std_logic;
            Y : out std_logic
        );
    end component;

begin

    -- p1 <= (not x);
    U1: NOT_gate port map (A => x, Y => p1);

    -- p2 <= (not y);
    U2: NOT_gate port map (A => y, Y => p2);

    -- p3 <= (not z);
    U3: NOT_gate port map (A => z, Y => p3);


    -- p4 <= (x and y);
    U4: AND_gate port map (A => x, B => y, Y => p4);

    -- p5 <= (x and p2);
    U5: AND_gate port map (A => x, B => p2, Y => p5);

    -- p6 <= (p5 and p3);
    U6: AND_gate port map (A => p5, B => p3, Y => p6);

    -- p7 <= (p4 and p3);
    U7: AND_gate port map (A => p4, B => p3, Y => p7);

    -- p8 <= (p6 or p1);
    U8: OR_gate port map (A => p6, B => p1, Y => p8);


    -- p9 <= (p1 and z);
    U9: AND_gate port map (A => p1, B => z, Y => p9);

    -- p10 <= (y and z);
    U10: AND_gate port map (A => y, B => z, Y => p10);


    -- F <= (p7 or p8);	
    U11: OR_gate port map (A => p7, B => p8, Y => F);


    -- p11 <= (p10 or p9);
    U12: OR_gate port map (A => p10, B => p9, Y => p11);

    -- G <= (p4 or p11);
    U13: OR_gate port map (A => p4, B => p11, Y => G);

end architecture estructura2;
