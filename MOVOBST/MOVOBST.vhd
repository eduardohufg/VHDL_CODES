library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Uso de numeric_std en lugar de std_logic_arith y std_logic_unsigned

entity MOVOBST is
    Port (
        clk   : in  std_logic;
        reset : in  std_logic;
		  ST: IN STD_logic;

        valor, valor2 : out std_logic_vector(9 downto 0) -- Ajustado a 10 bits para soportar el valor 784
    );
end MOVOBST;

architecture Behavioral of MOVOBST is
    signal valor_int : unsigned(9 downto 0) := to_unsigned(35, 10); -- Iniciar en 144 y asegurarse de que es 'unsigned'
	 signal valor_int2 : unsigned(9 downto 0) := to_unsigned(115, 10);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            valor_int <= to_unsigned(35, 10); -- Resetear a 784 con tipo adecuado
        elsif rising_edge(clk) then
			
            if ST = '1' then
                valor_int <= valor_int + 1;
					 if (valor_int >= to_unsigned(515, 10)) then
					valor_int <= to_unsigned(515, 10);
					end if;
            elsif ST = '0' then -- Uso de to_unsigned para evitar errores
         
					valor_int <= to_unsigned(35, 10);
            end if;
        end if;
		  
		  
		  
		  
		  if reset = '1' then
            valor_int2 <= to_unsigned(115, 10); -- Resetear a 784 con tipo adecuado
        elsif rising_edge(clk) then
					
				
			
            if ST = '1' then
                valor_int2 <= valor_int2 + 1;
					 if (valor_int2 >= to_unsigned(515, 10)) then
					valor_int2 <= to_unsigned(515, 10);
					end if;
            elsif ST = '0' then -- Uso de to_unsigned para evitar errores
               
					valor_int2 <= to_unsigned(115, 10);
					
            end if;
        end if;
		  
		  
		  
    end process;--734
    valor <= std_logic_vector(valor_int); -- Convertir a std_logic_vector para la salida
	 valor2 <= std_logic_vector(valor_int2);
end Behavioral;