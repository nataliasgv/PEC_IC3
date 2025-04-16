library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity compNbits_tb is
end entity compNbits_tb;



architecture compNbits_tb of compNbits_tb is

function to_string(s: std_logic) return string is --convierte std_logic en string para poder imprimir las salidas
begin
    if s = '0' then
            return "0";  -- Devuelve '0' como string
        else
            return "1";  -- Devuelve '1' como string
        end if;
end function;

constant N : integer := 4;
signal eout, gout : std_logic; -- Conectar salidas UUT
signal x, y : std_logic_vector(3 downto 0); -- Conectar entradas UUT

component compNbits is
	generic ( N: integer := 4);
	port ( eout, gout : out std_logic;
 		x, y : in std_logic_vector(N-1 downto 0)); 
end component compNbits;

begin
-- Instanciar 
	uut : component compNbits port map
	( eout => eout, gout => gout, x => x, y => y );
	
	gen_vec_test : process
	variable num_errores : integer := 0; -- Numero de errores 
	
	begin
		for op_X in 0 to (2**N)-1 loop
		for op_Y in 0 to (2**N)-1 loop
			x <= std_logic_vector(to_unsigned(op_x,N));
			y <= std_logic_vector(to_unsigned(op_y,N));
			wait for 100 ns;

-- Comprueba resultado
			if (x=y and eout='0') or (x/=y and eout='1') or (x>y and gout='0') or (x<y and gout ='1') then

			report "Error. Valores: x=" &
			integer'image(op_x) & 
			", y=" &
			integer'image(op_y) & 
			". Salidas: gout=" & to_string(gout) & 
			", eout=" & to_string(eout);
			num_errores := num_errores + 1;
			end if;
		end loop;
		end loop;

	report "Test completo. Hay " &
	integer'image(num_errores) & "errores." ;
	wait; --Final simulación
	end process gen_vec_test;
end architecture compNbits_tb;
