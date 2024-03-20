--Circuito: Sumador de '1' a un numero de 5 bits
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY SUMAUNO5 IS 
	PORT(A: IN STD_LOGIC_VECTOR(4 dOWNTO 0); --Entrada de un numero de 5 bits
			S: OUT STD_LOGIC_VECTOR(4 DOWNTO 0)); --Salida de la suma de 5 bits
	
	END SUMAUNO5;
	
--Arquitectura
ARCHITECTURE RTL OF SUMAUNO5 IS

--Declaramos el compoenente del Hallf adder
	
	COMPONENT ha IS

		PORT (a,b : IN STD_LOGIC;
				s, Cout: OUT STD_LOGIC);
	END COMPONENT ha;

--signal para los carry out de los HA
 SIGNAL C: STD_LOGIC_VECTOR(3 DOWNTO 0);
 
 BEGIN
 
 --Se le suma uno al primer HA junto con su bit de entrada
	I1: ha port map(A(0), '1', S(0), C(0));
	I2: ha port map(A(1), C(0), S(1), C(1));
	I3: ha port map(A(2), C(1), S(2), C(2));
	I4: ha port map(A(3), C(2), S(3), C(3));
	
	S(4) <= A(4) XOR C(3);
	
END RTL;
	