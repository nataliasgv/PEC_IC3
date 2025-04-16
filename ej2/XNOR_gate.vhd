library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XNOR_gate is
	port (
		A, B : in std_logic;
		Y : out std_logic
	);
end entity XNOR_gate;
	
architecture estructuraXNOR of XNOR_gate is
begin
	Y <= A xnor B;
end architecture estructuraXNOR;
