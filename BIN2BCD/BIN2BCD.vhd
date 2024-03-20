--Circuito: Codificador Binario a BCD
--Autor: Eduardo Chavez Martin A01799595
-- Curso: TE2002B --

-- Seccion de definicion de Librerias --

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--Descripcion de entidad
ENTITY BIN2BCD IS
	PORT(BIN: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			BCD: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END BIN2BCD;
--Definicion de arquitectura
ARCHITECTURE ARC OF BIN2BCD IS
	BEGIN
	--codificador
		WITH BIN SELECT
			BCD <= 	"0000" WHEN "0000",
						"0001" WHEN "0001",
						"0010" WHEN "0010",
						"0011" WHEN "0011",
						"0100" WHEN "0100",
						"0101" WHEN "0101",
						"0110" WHEN "0110",
						"0111" WHEN "0111",
						"1000" WHEN "1000",
						"1001" WHEN "1001",
						"0000" WHEN OTHERS;
END ARC;