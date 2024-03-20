--Circuito: Sumador BCD
--Autor: Eduardo Chavez Martin A01799595
-- Curso: TE2002B --

-- Seccion de definicion de Librerias --

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Definicion de la entidad
ENTITY SUM_BCD IS
	PORT(A,B: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			CIN: IN STD_LOGIC;
			S: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			COUT: OUT STD_LOGIC);
		END SUM_BCD;

--Arquitectura		
ARCHITECTURE RTL OF SUM_BCD IS

--Declar componentes a usar--

--Suma de 4 bits--
	COMPONENT suma4 IS

		PORT (a,b: IN STD_LOGIC_VECTOR (3 downto 0);
			Cin: IN STD_LOGIC;
			s: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			Cout: OUT STD_LOGIC);
		
	END COMPONENT suma4;
	
-- Half Adder
	Component fa is

		PORT (a,b, Cin : IN STD_LOGIC;
		s, Cout: OUT STD_LOGIC);
	END Component fa;
	
-- Full Adder
	COMPONENT ha IS

		PORT (a,b : IN STD_LOGIC;
      s, Cout: OUT STD_LOGIC);
	END COMPONENT ha;
	
-- Signals para conectar componentes y alamcenar datos
	SIGNAL Z: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL CO: STD_LOGIC;
	signal CF: STD_LOGIC;
	SIGNAL CS4, CXOR, AND1, AND2: STD_LOGIC;
	
	BEGIN
	
	--Mapeo de entradas y salidas de componentes y
	--conexiones
	I0: suma4 PORT MAP(A, B, CIN, Z, CO);
	
	I1: ha PORT MAP(Z(1), CS4, S(1), CF);
	I2: fa PORT MAP(Z(2), CS4, CF, S(2), CXOR);
	
	S(0) <= Z(0);
	AND1 <= Z(3) AND Z(2);
	AND2 <= Z(3) AND Z(1);
	CS4 <= AND1 OR AND2 OR CO;
	
	S(3) <= CXOR XOR Z(3);
	
	COUT <= CS4;
	
END RTL;
	
	
