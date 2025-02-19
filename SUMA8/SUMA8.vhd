-- Circuito Sumador de 8 Bits --
-- Autor: Eduardo Chavez Martin A01799595--
-- Curso: TE2002B --

-- Seccion de definicion de Librerias --

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Seccion de definicion de Entidad

ENTITY suma8 IS

PORT (a,b: IN STD_LOGIC_VECTOR (7 downto 0);
      Cin: IN STD_LOGIC;
		s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		Cout: OUT STD_LOGIC);
		
END suma8;

--Seccion de definicion de la arquitectura

ARCHITECTURE rtl OF suma8 IS

-- Definiendo el componente Fa

Component suma4 is

PORT (a,b: IN STD_LOGIC_VECTOR (3 downto 0);
      Cin: IN STD_LOGIC;
		s: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		Cout: OUT STD_LOGIC);
		
end component suma4;


--Definir cables de interconexion 

Signal C: std_LOGIC;

--descripcion del circuito
Begin 


I0: suma4 port map (a(3 downto 0), b(3 downto 0), Cin, s(3 downto 0), c);
I1: suma4 port map (a(7 downto 4), b(7 dowNTO 4), c, s(7 downto 4), cout);


END rtl;

