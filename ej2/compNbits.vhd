library IEEE;
use IEEE. std_logic_1164.all;

entity compNbits is
generic (N: integer :=4);

port ( eout, gout : out std_logic;
x, y : in std_logic_vector(N-1 downto 0));
end entity compNbits; 

architecture compNbits of compNbits is
	signal p: std_logic_vector(N-1 downto 0):= (others => '1');  -- Variable interna para eout, se asume que x e y son iguales	
	signal g: std_logic_vector(N-1 downto 0):= (others => '0');  -- Variable interna para gout, se asume que x no es mayor que y al inicio

component comp1bit is port
	( eout, gout : out std_logic; -- gout a 1 si x>y, eout a 1 si x = y
 	x, y : in std_logic); -- bits a comparar
end component comp1bit;

begin

assert N >= 1 report "N tiene que ser mayor o igual que 1" 
severity failure; -- si N es menor que 1 la simulación termina


        conexion: for i in N-1 downto 0 generate
            compNbits: comp1bit
		port map(
		eout => p(i),
		gout => g(i),
		x => x(i),
		y => y(i)
		);
        end generate conexion;

	process(x, y, p, g)
	begin
		eout <= '1';
		gout <= '0';

		for i in N-1 downto 0 loop -- va desde el bit mas significativo hasta el menos
			if g(i) = '1' then
				eout <= '0'; -- Si hay algun bit mayor que otro entonces eout = 0
				gout <= '1';
				exit;

			elsif p(i) = '0' then
			eout <= '0';
			exit;
			end if;
		end loop;
	end process;
end architecture compNbits;