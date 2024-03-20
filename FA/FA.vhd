-- Circuito Full Ader --
-- Autor: Eduardo Chavez Martin A01799595--
-- Curso: TE2002B --

-- Seccion de definicion de Librerias --

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Seccion de definicion de Entidad

ENTITY fa IS

PORT (a,b, Cin : IN STD_LOGIC;
      s, Cout: OUT STD_LOGIC);
END fa;

--Seccion de definicion de la arquitectura

ARCHITECTURE arc OF fa IS

-- Definiendo el componente ha
COMPONENT ha is 

PORT (a,b : IN STD_LOGIC;
      s, Cout: OUT STD_LOGIC);
END COMPONENT ha;


-- Definicion de los cables

SIGNAL C: STD_LOGIC_VECTOR (2 DOWNTO 0);

--Definicion del componente Full Adder
BEGIN

--Conexiones (A,B,S, COUt)--
HA0: ha PORT MAP(a,b, C(2), C(1));

HA1: ha PORT MAP(C(2), Cin, s, C(0));

Cout <= C(1) or C(0);



END arc;

		
		