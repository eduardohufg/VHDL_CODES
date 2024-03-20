--Circuito: Contador MOD 800
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY CONTMOD800 IS
	PORT(CLK, RST: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			OV: OUT STD_LOGIC); --Over Flow del contador
	END CONTMOD800;
	
ARCHITECTURE RTL OF CONTMOD800 IS
	
	COMPONENT CONTA10BITS IS
	PORT(CLK, RST: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)); 
	END COMPONENT CONTA10BITS;
	
	
	SIGNAL D: STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL R: STD_LOGIC;
	
	BEGIN 
	
	I0: CONTA10BITS PORT MAP(CLK, R, D);
	
	O <= D;

	
	PROCESS (D)
		BEGIN
			IF (RST = '1') THEN
				R <= '1';
				OV <= '0';
			ELSE 
				R <= '0';
				OV <= '0';
			IF (D = "1100011111") THEN
				OV <= '1';
			ELSE 
				IF (D = "1100100000") THEN
				R <= '1';	
				OV <= '1';
			ELSE
				OV <= '0';
				R <= '0';
			END IF;
			END IF;
			END IF;
		END PROCESS;
		
		
		
	
	
END RTL;
	
	
	

	
	