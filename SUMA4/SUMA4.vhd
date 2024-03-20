-- Circuito Sumador de 4 Bits --
-- Autor: Eduardo Chavez Martin A01799595--
-- Curso: TE2002B --

-- Seccion de definicion de Librerias --

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Seccion de definicion de Entidad

ENTITY suma4 IS

PORT (a,b: IN STD_LOGIC_VECTOR (3 downto 0);
      Cin: IN STD_LOGIC;
		s: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		Cout: OUT STD_LOGIC);
		
END suma4;

--Seccion de definicion de la arquitectura

ARCHITECTURE rtl OF suma4 IS

-- Definiendo el componente Fa

Component fa is

PORT (a,b, Cin : IN STD_LOGIC;
      s, Cout: OUT STD_LOGIC);
END Component fa;

--Definir cables de interconexion 

Signal C: std_LOGIC_VECTOR (3 downto 1);

--descripcion del circuito
Begin 


I0: fa port map (a(0), b(0), Cin, s(0), c(1));
I1: fa port map (a(1), b(1), c(1), s(1), c(2));
I2: fa port map (a(2), b(2), c(2), s(2), c(3));   
I3: fa port map (a(3), b(3), c(3), s(3), Cout);

END rtl;




