--Declaracion de librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad del Circuito

ENTITY VGA IS
	PORT(CLK, RST, START: IN STD_logic;
			HSYNC, VSYNC: OUT STD_logic;
			R,G,B: OUT STD_logic_VECTOR (3 DOWNTO 0));
END VGA;

ARCHITECTURE RTL OF VGA IS
	
	COMPONENT DIVFREQ2 is
	port(
		clk, reset: in std_logic;
		F: OUT STD_logic);
		end COMPONENT DIVFREQ2;
		
	COMPONENT CONT800 IS
	PORT(CLK, RST: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			ov: out std_LOGIC); --Over Flow del contador
	END COMPONENT CONT800;
	
	COMPONENT CONTMOD525 IS
	PORT(CLK, RST: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)); --Over Flow del contador
	END COMPONENT CONTMOD525;
	
	COMPONENT MESTADOSVSYNC is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 cuenta    :  in std_logic_vector(9 downto 0);
			 VSYNC: OUT STD_logic;
			 VA: OUT STD_logic);
	end COMPONENT MESTADOSVSYNC; 
	
	COMPONENT MESTADOSHSYNC is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 R,G,B  :  out std_logic_vector(3 downto 0);
			 cuenta    :  in std_logic_vector(9 downto 0);
			 HSYNC: OUT STD_logic;
			 VA: IN STD_logic;
			 CUENTAV: IN STD_logic_vector(9 DOWNTO 0));
	end COMPONENT MESTADOSHSYNC; 
	
	SIGNAL F, VAA: STD_LOGIC;
	SIGNAL CONTA800, CONT525: STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL OV800: STD_LOGIC;

	
	BEGIN
	
	I0: DIVFREQ2 PORT MAP (CLK, RST, F);
	I1: CONT800 PORT MAP(F, RST, CONTA800, OV800);
	I2: CONTMOD525 PORT MAP(OV800, RST, CONT525);
	I3: MESTADOSVSYNC PORT MAP(RST, F, START, CONT525, VSYNC, VAA);
	I4: MESTADOSHSYNC PORT MAP (RST, F, START, R,G,B, CONTA800, HSYNC, VAA, CONT525);
	
	END RTL;
	
	
	
	
	
	
	
	
	
	
	