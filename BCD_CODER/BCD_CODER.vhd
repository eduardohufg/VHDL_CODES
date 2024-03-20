--Circuito: Codificador BCD a 7 segmentos
--Autor: Eduardo Chavez Martin A01799595
-- Curso: TE2002B --

-- Seccion de definicion de Librerias --
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--Descripcion de entidad
ENTITY BCD_CODER IS
	PORT(BCD: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			SEG: OUT STD_LOGIC_VECTOR (6 DOWNTO 0));
	END BCD_CODER;
	
ARCHITECTURE ARC OF BCD_CODER IS
	BEGIN 
		--codificador
		WITH BCD SELECT
			SEG <= 	"1000000" WHEN "0000",
						"1111001" WHEN "0001",
						"0100100" WHEN "0010",
						"0110000" WHEN "0011",
						"0011001" WHEN "0100",
						"0010010" WHEN "0101",
						"0000010" WHEN "0110",
						"1111000" WHEN "0111",
						"0000000" WHEN "1000",
						"0010000" WHEN "1001",
						"1111111" WHEN OTHERS;
	END ARC;