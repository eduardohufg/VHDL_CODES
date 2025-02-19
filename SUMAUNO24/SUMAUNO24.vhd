--Circuito: Suma '1' a un numero de 24 bits
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Definicion de la entidad del circuitos
ENTITY SUMAUNO24 IS

	PORT(A: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
			
	END SUMAUNO24;
	
--Arquitectura del circuito
ARCHITECTURE RTL OF SUMAUNO24 IS

	--Declaramos el componente Half Adder para las sumas de bits
	COMPONENT ha IS

		PORT (a,b : IN STD_LOGIC;
			s, Cout: OUT STD_LOGIC);
	END COMPONENT ha;

	--Signals para los carry out de los HA
	SIGNAL C: STD_LOGIC_VECTOR (23 DOWNTO 0);
	
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
	I8: ha PORT MAP(A(8), C(7), S(8), C(8));
	I9: ha PORT MAP(A(9), C(8), S(9), C(9));
	I10: ha PORT MAP(A(10), C(9), S(10), C(10));
	I11: ha PORT MAP(A(11), C(10), S(11), C(11));
	I12: ha PORT MAP(A(12), C(11), S(12), C(12));
	I13: ha PORT MAP(A(13), C(12), S(13), C(13));
	I14: ha PORT MAP(A(14), C(13), S(14), C(14));
	I15: ha PORT MAP(A(15), C(14), S(15), C(15));
	I16: ha PORT MAP(A(16), C(15), S(16), C(16));
	I17: ha PORT MAP(A(17), C(16), S(17), C(17));
	I18: ha PORT MAP(A(18), C(17), S(18), C(18));
	I19: ha PORT MAP(A(19), C(18), S(19), C(19));
	I20: ha PORT MAP(A(20), C(19), S(20), C(20));
	I21: ha PORT MAP(A(21), C(20), S(21), C(21));
	I22: ha PORT MAP(A(22), C(21), S(22), C(22));
	I23: ha PORT MAP(A(23), C(22), S(23), C(23));
	
END RTL;

	