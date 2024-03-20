--Circuito: Contador de 15 Bits
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY CONTADOR8BITS IS
	PORT(CLK, RST, START: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --Over Flow del contador
	END CONTADOR8BITS;
	
ARCHITECTURE RTL OF CONTADOR8BITS IS

--Declaracion del componente SUMA24

	COMPONENT SUMAUNO8 IS

	PORT(A: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
			
	END COMPONENT SUMAUNO8;
		
	SIGNAL D, Q: STD_LOGIC_VECTOR (7 DOWNTO 0);
	
	BEGIN
	--Signals para la entrada y salida del Flip Flop
	
	I0: SUMAUNO8 PORT MAP(Q, D);
	
	--Declaracion del Flip Flop
	PROCESS(CLK, RST, START)
		BEGIN 
			IF (START = '1') THEN
			
				IF(RST = '1') THEN 
					Q <= "00000000";
				ELSIF (CLK 'EVENT AND CLK = '1') THEN
					Q <= D;
				END IF;
			END IF;
			END PROCESS;
			
		--Verifica si el contador ya termino para mandar
		--el over Flow
	O <= Q;
		
	END RTL;
	