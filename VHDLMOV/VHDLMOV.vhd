--Declaracion de librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad del Circuito

ENTITY VHDLMOV IS
	PORT(CLK,CLK2, RST, START, DER, IZQ, DER2, IZQ2: IN STD_logic;
			HSYNC, VSYNC: OUT STD_logic;
			R,G,B: OUT STD_logic_VECTOR (3 DOWNTO 0));
END VHDLMOV;

ARCHITECTURE RTL OF VHDLMOV IS
	
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
	
	COMPONENT MESTADOSHMOV is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 R,G,B  :  out std_logic_vector(3 downto 0);
			 cuenta    :  in std_logic_vector(9 downto 0);
			 HSYNC: OUT STD_logic;
			 VA: IN STD_logic;
			 CUENTAV: IN STD_logic_vector(9 DOWNTO 0);
			 CONTMOV1, CONTMOV2: IN STD_logic_vector(9 DOWNTO 0);
			 CONTMOV3, CONTMOV4: IN STD_logic_vector(9 DOWNTO 0);
			 OBS1, OBS2: IN STD_logic_vector(9 DOWNTO 0);
			 ENA: IN STD_logic);
	end COMPONENT MESTADOSHMOV;
	
	
	comPONENT MOVH is
    Port (
        clk   : in  std_logic;
        reset : in  std_logic;
        btn_inc : in  std_logic;
        btn_dec : in  std_logic;
        valor, valor2 : out std_logic_vector(9 downto 0) -- Ajustado a 10 bits para soportar el valor 784
    );
	end COMPONENT MOVH;
	
	COMPONENT CONTADOR16BITS IS
	PORT(CLK, RST, START: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC); --Over Flow del contador
	END COMPONENT CONTADOR16BITS;
	
	COMPONENT MOVV is
    Port (
        clk   : in  std_logic;
        reset : in  std_logic;
        btn_inc : in  std_logic;
        btn_dec : in  std_logic;
        valor, valor2 : out std_logic_vector(9 downto 0));
		end COMPONENT MOVV;
		
		
	COMPONENT CONTADOR24BITS IS
	PORT(CLK, RST, START: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC); --Over Flow del contador
	END COMPONENT CONTADOR24BITS;
	
	
	COMPONENT CONTADOR8BITS IS
	PORT(CLK, RST, START: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --Over Flow del contador
	END COMPONENT CONTADOR8BITS;
	
	COMPONENT OBSTACLE is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 cuenta    :  in std_logic_vector(7 downto 0);
			 ST: OUT STD_logic);
	end COMPONENT OBSTACLE; 
	
	
	
	COMPONENT MOVOBST is
    Port (
        clk   : in  std_logic;
        reset : in  std_logic;
		  ST: IN STD_logic;

        valor, valor2 : out std_logic_vector(9 downto 0) -- Ajustado a 10 bits para soportar el valor 784
    );
	end COMPONENT MOVOBST;
	
	
	component CONTADOR20BITS is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           overflow : out STD_LOGIC);
	end component CONTADOR20BITS;
	
	



		
	
	SIGNAL F, VAA, STT: STD_LOGIC;
	SIGNAL CONTA800, CONT525, VAL1, VAL2, VAL3, VAL4, VALOB1, VALOB2: STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL OV800, OV16, OV24, OV8: STD_LOGIC;
	SIGNAL O8: STD_LOGIC_VECTOR (7 DOWNTO 0);

	
	BEGIN
	
	I0: DIVFREQ2 PORT MAP (CLK, RST, F);
	I1: CONT800 PORT MAP(F, RST, CONTA800, OV800);
	I2: CONTMOD525 PORT MAP(OV800, RST, CONT525);
	I3: MESTADOSVSYNC PORT MAP(RST, F, START, CONT525, VSYNC, VAA);
	I4: CONTADOR16BITS PORT MAP(CLK2, RST, START, OV16);
	I5: CONTADOR20BITS PORT MAP(CLK2, RST, START, OV24);
	I6: CONTADOR8BITS PORT MAP(OV24, RST, START, O8);
	I7: OBSTACLE PORT MAP(RST, OV16, START, O8, STT);
	I8: MOVOBST PORT MAP(OV16, RST, STT, VALOB1, VALOB2);
	
	
		
	
	I9: MOVH PORT MAP(OV16, RST, DER, IZQ, VAL1, VAL2);
	I10: MOVV PORT MAP(OV16, RST, DER2, IZQ2, VAL3, VAL4);
	
	
	I11: MESTADOSHMOV PORT MAP (RST, F, START, R,G,B, CONTA800, HSYNC, VAA, CONT525, VAL1, VAL2, VAL3, VAL4, VALOB1, VALOB2, STT);
	
	END RTL;
	
	
