--Circuito: Suma '1' a un numero de 15 bits
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Definicion de la entidad del circuitos
ENTITY SUMAUNO8 IS

	PORT(A: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
			
	END SUMAUNO8;
	
--Arquitectura del circuito
ARCHITECTURE RTL OF SUMAUNO8 IS

	--Declaramos el componente Half Adder para las sumas de bits
	COMPONENT ha IS

		PORT (a,b : IN STD_LOGIC;
			s, Cout: OUT STD_LOGIC);
	END COMPONENT ha;

	--Signals para los carry out de los HA
	SIGNAL C: STD_LOGIC_VECTOR (7 DOWNTO 0);
	
	BEGIN
	--Se le suma 1 al primer HA y se suma el CO en 
	--cascada el siguiente HA sumando con su bit
	--correspondiente
	I0: ha PORT MAP(A(0), '1', S(0), C(0));
	I1: ha PORT MAP(A(1), C(0), S(1), C(1));
	I2: ha PORT MAP(A(2), C(1), S(2), C(2));
	I3: ha PORT MAP(A(3), C(2), S(3), C(3));
	I4: ha PORT MAP(A(4), C(3), S(4), C(4));
	I5: ha PORT MAP(A(5), C(4), S(5), C(5));
	I6: ha PORT MAP(A(6), C(5), S(6), C(6));
	I7: ha PORT MAP(A(7), C(6), S(7), C(7));
	
	
	
END RTL;
