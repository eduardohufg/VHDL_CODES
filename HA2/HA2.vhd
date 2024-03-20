-- Circuito Half Ader --
-- Autor: Eduardo Chavez Martin --
-- Curso: TE2002B --

-- Seccion de definicion de Librerias --

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Seccion de definicion de Entidad

ENTITY HA2 IS

PORT (a,b : IN STD_LOGIC;
      s, Cout: OUT STD_LOGIC);
END HA2;

--Seccion de definicion de la arquitectura

ARCHITECTURE arc OF HA2 IS

BEGIN

s <= a XOR b;
Cout <= a and b;

END arc;

		
		