library IEEE;
use IEEE.std_logic_1164.all;

architecture estructura1 of ej1 is
begin

F <= (x and (not y) and (not z)) or (x and y and (not z));
G <= (x and y) or ((not x) and z) or (y and z);

end architecture estructura1;
