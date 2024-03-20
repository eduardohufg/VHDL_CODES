--Circuito: Selector y multiplexor de horario para semaforo
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de Librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY MUX_HORA IS

	--Bits para la seleccion horario
	PORT (CASO: IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
		
		--Tiempos para cada estado
		T0,T1,T2,T3,T4,T5: OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
		
		END MUX_HORA;
		
ARCHITECTURE RTL OF MUX_HORA IS
	BEGIN
	--depende de la combinacion de la entrada es la duracion 
	--de cada estado, correspondiente a la prioridad de las
	--Avenidas.
		PROCESS(CASO)
			BEGIN
				CASE CASO IS
					WHEN "000" => T0 <= "00101";
									  T1 <= "00111";
									  T2 <= "10000";
									  T3 <= "10101";
									  T4 <= "10111";
									  T5 <= "11111";
									  
					WHEN "001" => T0 <= "01001";
									  T1 <= "01110";
									  T2 <= "10011";
									  T3 <= "11000";
									  T4 <= "11010";
									  T5 <= "11111";
					
					WHEN "010" => T0 <= "00010";
									  T1 <= "00100";
									  T2 <= "01000";
									  T3 <= "11000";
									  T4 <= "11011";
									  T5 <= "11111";
									  
					WHEN "011" => T0 <= "00111";
									  T1 <= "01011";
									  T2 <= "01111";
									  T3 <= "10111";
									  T4 <= "11011";
									  T5 <= "11111";
					
					WHEN "100" => T0 <= "00001";
									  T1 <= "00010";
									  T2 <= "00011";
									  T3 <= "00100";
									  T4 <= "00101";
									  T5 <= "00110";
									  T0 <= "00111";
					WHEN OTHERS => NULL;
					
				END CASE;
			END PROCESS;
		END RTL;
					