--Circuito: Integracion del semaforo
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY SEMAFORO IS
-- Señales de control y salidas
	PORT (CLK, RST, START, NOCT: IN STD_LOGIC;
			HORARIO: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			E_O, O_E: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			N_S, S_N: OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
	END SEMAFORO;
	
	
	ARCHITECTURE RTL OF SEMAFORO IS
		
	--Importamos todos los compoenetes necesarios
	--Maquina de estados
		COMPONENT MESTADOS is
			
			port ( RST, CLK, START, HORARIO : in std_logic;
			 T0, T1, T2, T3, T4, T5 : in std_logic_vector (4 downto 0);
			 E_O, O_E  :  out std_logic_vector(3 downto 0);
			 N_S, S_N  :  out std_logic_vector(2 downto 0);
			 cuenta    :  in std_logic_vector(4 downto 0));	 	 
			END COMPONENT MESTADOS; 
			
		--Selector de tiempos
		COMPONENT MUX_HORA IS
			PORT (CASO: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	
			T0,T1,T2,T3,T4,T5: OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
		
			END COMPONENT MUX_HORA;
			
		--Contador de 24 bits
		COMPONENT CONTADOR24BITS IS
				PORT(CLK, RST, START: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC); --Over Flow del contador
			END COMPONENT CONTADOR24BITS;
			
		--Contador de 5 bits
		COMPONENT CONTADOR5BITS IS 
			PORT(ENA,CLK, RST: IN STD_LOGIC;
			S: OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
	
			END COMPONENT CONTADOR5BITS;
			
		--Señales para asignar las salidas y conexiones
		SIGNAL T1,T2,T3,T4,T5,T6: STD_LOGIC_VECTOR (4 DOWNTO 0);
		SIGNAL TIMER: STD_LOGIC_VECTOR (4 DOWNTO 0);
		SIGNAL OUT24: STD_LOGIC;
	
		
		BEGIN
		
		--Conexion del circuito
		IO: MUX_HORA PORT MAP(HORARIO, T1,T2,T3,T4,T5,T6);
		
		I1: CONTADOR24BITS PORT MAP(CLK, RST, START, OUT24);
		
		I2: CONTADOR5BITS PORT MAP(OUT24, CLK, RST, TIMER);
		
		I3: MESTADOS PORT MAP (RST,CLK, START, NOCT,T1,T2,T3,T4,T5,T6, E_O, O_E, N_S,S_N, TIMER);
		
		END RTL;
			
		

		