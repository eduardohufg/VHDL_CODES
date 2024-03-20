--Circuito: Contador de 5 bits
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY CONTADOR5BITS IS 
	PORT(ENA,CLK, RST: IN STD_LOGIC;
			S: OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
	
	END CONTADOR5BITS;

--Arquitectura	
ARCHITECTURE RTL OF CONTADOR5BITS IS

--Declaramamos el componente SUMAUNO5 para el contador
	COMPONENT SUMAUNO5 IS 
	PORT(A: IN STD_LOGIC_VECTOR(4 dOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
	
	END COMPONENT SUMAUNO5;
	
--Signals para las entradas y salidad del Flip Flop
	SIGNAL D, Q: STD_LOGIC_VECTOR(4 DOWNTO 0);
	
	BEGIN
		
		--Le damos como entrada del sumauno la salida del FF
		--y asignamos la salida a la entrada del FF
		I0: SUMAUNO5 PORT MAP(Q, D);
		S <= Q;
		
		--Declaracion del FF tipo D
		PROCESS(CLK, RST)
			BEGIN
				IF(RST = '0') THEN
					Q <= "00000";
				ELSIF(CLK 'EVENT AND CLK = '1' AND ENA = '1') THEN
					Q <= D;
				END IF;
				
			END PROCESS;
			
		END RTL;
	
	
	
	
	