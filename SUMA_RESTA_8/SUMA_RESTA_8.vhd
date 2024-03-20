--Circuito: Sumador-Restador de 8 bits--
--Autor: Eduardo Chavez Martin A01799595--
--Curso: TE2002B--

--Definicion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SUMA_RESTA_8 IS

PORT (a,b: IN STD_LOGIC_VECTOR (7 downto 0);
      sel: IN STD_LOGIC;
		s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		Cout: OUT STD_LOGIC);
		
END SUMA_RESTA_8;

ARCHITECTURE rtl OF SUMA_RESTA_8 IS

-- Definiendo el componente Fa

Component SUMA8 is

PORT (a,b: IN STD_LOGIC_VECTOR (7 downto 0);
      Cin: IN STD_LOGIC;
		s: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		Cout: OUT STD_LOGIC);
		
end component SUMA8;


Signal C: std_LOGIC_VECTOR(7 DOWNTO 0);

--descripcion del circuito
Begin 


I0: SUMA8 port map (a, C, sel,s,Cout);

C(0) <= b(0) xor sel;
C(1) <= b(1) xor sel;
C(2) <= b(2) xor sel;
C(3) <= b(3) xor sel;
C(4) <= b(4) xor sel;
C(5) <= b(5) xor sel;
C(6) <= b(6) xor sel;
C(7) <= b(7) xor sel;


END rtl;


