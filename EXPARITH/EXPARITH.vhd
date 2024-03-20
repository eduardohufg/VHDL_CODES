library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Uso de numeric_std en lugar de std_logic_arith y std_logic_unsigned

entity EXPARITH is
    Port (
        clk   : in  std_logic;
        reset : in  std_logic;
        btn_inc : in  std_logic;
        btn_dec : in  std_logic;
        valor, valor2 : out std_logic_vector(9 downto 0) -- Ajustado a 10 bits para soportar el valor 784
    );
end EXPARITH;

architecture Behavioral of EXPARITH is
    signal valor_int : unsigned(9 downto 0) := to_unsigned(144, 10); -- Iniciar en 144 y asegurarse de que es 'unsigned'
	 signal valor_int2 : unsigned(9 downto 0) := to_unsigned(194, 10);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            valor_int <= to_unsigned(144, 10); -- Resetear a 784 con tipo adecuado
        elsif rising_edge(clk) then
			
            if btn_inc = '1' then
                valor_int <= valor_int + 1;
					 if (valor_int >= to_unsigned(734, 10)) then
					valor_int <= to_unsigned(734, 10);
					end if;
            elsif btn_dec = '1' and valor_int > to_unsigned(144, 10) then -- Uso de to_unsigned para evitar errores
                valor_int <= valor_int - 1;
					 if (valor_int <= to_unsigned(144, 10)) then
					valor_int <= to_unsigned(144, 10);
					end if;
            end if;
        end if;
		  
		  
		  
		  
		  if reset = '1' then
            valor_int2 <= to_unsigned(194, 10); -- Resetear a 784 con tipo adecuado
        elsif rising_edge(clk) then
			
            if btn_inc = '1' then
                valor_int2 <= valor_int2 + 1;
					 if (valor_int2 >= to_unsigned(784, 10)) then
					valor_int2 <= to_unsigned(784, 10);
					end if;
            elsif btn_dec = '1' and valor_int2 > to_unsigned(194, 10) then -- Uso de to_unsigned para evitar errores
                valor_int2 <= valor_int2 - 1;
					 if (valor_int2 <= to_unsigned(194, 10)) then
					valor_int2 <= to_unsigned(194, 10);
					end if;
            end if;
        end if;
		  
		  
		  
    end process;--734
    valor <= std_logic_vector(valor_int); -- Convertir a std_logic_vector para la salida
	 valor2 <= std_logic_vector(valor_int2);
end Behavioral;
